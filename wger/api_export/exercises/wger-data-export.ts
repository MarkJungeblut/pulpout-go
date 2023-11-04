import * as export0 from './exercises_0-100.json'
import * as export1 from './exercises_100-200.json'
import * as export2 from './exercises_200-300.json'
import * as export3 from './exercises_300-400.json'

import * as fs from 'fs';
import {pipe} from "fp-ts/function";
import {array, either, eq, number, ord, string} from "fp-ts";
import {NonEmptyString} from "io-ts-types";

interface Export {
    id: number
    category: [
        {
            id: number,
        }
    ],
    muscles: [
        {
            id: number,
        }
    ],
    secondaryMuscles: [
        {
            id: number
        }
    ]
    equipment: [
        {
            id: number,
        }
    ],
    exercises: [
        {
            id: number
        }
    ]
}

interface MuscleGroupWger {
    id: number,
    name: string
}

interface MuscleGroup {
    id: number,
    names: [{
        languageId: string,
        name: string
    }]
}

interface Muscle {
    id: number,
    name: string,
    name_en: string,
    is_front: boolean
    image_url_main: string,
    image_url_secondary: string
}

interface Equipment {
    id: number,
    name: string
}

interface Exercise {
    id: number,
    name: string,
    muscles: Muscle[],
    secondaryMuscles: Muscle[],
    equipment: Equipment[],
    muscleGroup: MuscleGroup
}

const getMuscleGroups = (): MuscleGroup[] => {
    return [
        {
            id: 0,
            names: [
                {
                    languageId: 'EN',
                    name: 'Arms'
                }
            ]
        },
        {
            id: 1,
            names: [
                {
                    languageId: 'EN',
                    name: 'Legs'
                }
            ]
        },
        {
            id: 2,
            names: [
                {
                    languageId: 'EN',
                    name: 'Chest'
                }
            ]
        },
        {
            id: 3,
            names: [
                {
                    languageId: 'EN',
                    name: 'Abs'
                }
            ]
        },
        {
            id: 4,
            names: [
                {
                    languageId: 'EN',
                    name: 'Back'
                }
            ]
        },
        {
            id: 5,
            names: [
                {
                    languageId: 'EN',
                    name: 'Shoulder'
                }
            ]
        },
    ]
}

const buildFullExercises = (fullExport: typeof export0.results): Exercise[] => {
    const exercises: Exercise[][] = fullExport.map((result) => {
        return result.exercises.filter((exercise) => exercise.language === 2).map((exercise): Exercise => {

            const muscleGroups: MuscleGroup[] = getMuscleGroups();

            return {
                id: exercise.id,
                name: exercise.name,
                muscles: result.muscles.map((muscle) => {
                    return {
                        ...muscle
                    }
                }),
                secondaryMuscles: result.muscles_secondary.map((muscle) => {
                    return {
                        ...muscle
                    }
                }),
                equipment: result.equipment.map((equipment) => {
                    return {
                        ...equipment
                    }
                }),
                muscleGroup: muscleGroups.find((muscleGroup) => muscleGroup.names.find((muscleNameItem) => muscleNameItem.name.startsWith(result.category.name)))
            }
        })
    })

    return exercises.flat();
}

export const idEq: eq.Eq<{ id: number }> = eq.struct({
    id: number.Eq,
});

const buildMuscles = (fullExport: typeof export0.results): Muscle[] => {
    return pipe(
        fullExport,
        array.chain((result) => {
            return result.muscles.concat(result.muscles_secondary)
        }),
        array.map((muscle) => {

            setEnglishMuscleName(muscle)

            return {
                ...muscle,
                image_url_main: `https://wger.de${muscle.image_url_main}`,
                image_url_secondary: `https://wger.de${muscle.image_url_secondary}`
            }
        }),
        array.uniq(idEq),
        array.sort(
            pipe(
                number.Ord,
                ord.contramap((muscle: Muscle) => muscle.id)
            )
        )
    )
}

const setEnglishMuscleName = (muscle: Muscle) => {
    muscle.name_en = pipe(
        muscle.name_en,
        NonEmptyString.decode,
        either.getOrElse(() => muscle.name)
    )
}

const buildEquipment = (fullExport: typeof export0.results): Equipment[] => {
    return pipe(
        fullExport,
        array.chain((result) => {
            return result.equipment
        }),
        array.uniq(idEq),
        array.sort(
            pipe(
                number.Ord,
                ord.contramap((equipment: Equipment) => equipment.id)
            )
        )
    )
}

const buildMuscleGroupsWger = (fullExport: typeof export0.results): MuscleGroupWger[] => {
    return pipe(
        fullExport,
        array.map((result) => {
            return result.category
        }),
        array.uniq(idEq),
        array.sort(
            pipe(
                number.Ord,
                ord.contramap((muscleGroup: MuscleGroupWger) => muscleGroup.id)
            )
        )
    )
}

const buildExport = () => {
    const fullExport = export0.results.concat(export1.results).concat(export2.results).concat(export3.results)

    const exercises: Exercise[] = buildFullExercises(fullExport)
    fs.writeFileSync('./exercises_full.json', JSON.stringify(exercises));

    const muscles: Muscle[] = buildMuscles(fullExport)
    fs.writeFileSync('./muscles.json', JSON.stringify(muscles));

    const equipment: Equipment[] = buildEquipment(fullExport)
    fs.writeFileSync('./equipment.json', JSON.stringify(equipment));

    const muscleGroups: MuscleGroup[] = getMuscleGroups()
    fs.writeFileSync('./muscle-groups.json', JSON.stringify(muscleGroups));

    const muscleGroupsWger: MuscleGroupWger[] = buildMuscleGroupsWger(fullExport)
    fs.writeFileSync('./muscle-groups-wger.json', JSON.stringify(muscleGroupsWger));

}

buildExport()


