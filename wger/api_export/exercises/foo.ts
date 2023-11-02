import * as export0 from './exercises_0-100.json'
import * as export1 from './exercises_100-200.json'
import * as export2 from './exercises_200-300.json'
import * as export3 from './exercises_300-400.json'

import * as fs from 'fs';

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

interface MuscleGroup {
    id: number,
    name: string
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
    name: string
}

const exportExercises = (fullExport: typeof export0.results) => {

    const exercises: Exercise[][] = fullExport.map((result) => {
        return result.exercises.filter((exercise) => exercise.language === 2).map((exercise): Exercise => {
            return {
                id: exercise.id,
                name: exercise.name,
            }
        })
    })

    exercises.flat()
    fs.writeFileSync('./foo.json', JSON.stringify(exercises));
}

const buildExport = () => {
    const fullExport = export0.results.concat(export1.results).concat(export2.results).concat(export3.results)
    exportExercises(fullExport)
}

buildExport()


