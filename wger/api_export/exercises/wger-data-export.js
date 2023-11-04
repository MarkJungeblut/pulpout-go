"use strict";
var __createBinding = (this && this.__createBinding) || (Object.create ? (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    var desc = Object.getOwnPropertyDescriptor(m, k);
    if (!desc || ("get" in desc ? !m.__esModule : desc.writable || desc.configurable)) {
      desc = { enumerable: true, get: function() { return m[k]; } };
    }
    Object.defineProperty(o, k2, desc);
}) : (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    o[k2] = m[k];
}));
var __setModuleDefault = (this && this.__setModuleDefault) || (Object.create ? (function(o, v) {
    Object.defineProperty(o, "default", { enumerable: true, value: v });
}) : function(o, v) {
    o["default"] = v;
});
var __importStar = (this && this.__importStar) || function (mod) {
    if (mod && mod.__esModule) return mod;
    var result = {};
    if (mod != null) for (var k in mod) if (k !== "default" && Object.prototype.hasOwnProperty.call(mod, k)) __createBinding(result, mod, k);
    __setModuleDefault(result, mod);
    return result;
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.idEq = void 0;
const export0 = __importStar(require("./exercises_0-100.json"));
const export1 = __importStar(require("./exercises_100-200.json"));
const export2 = __importStar(require("./exercises_200-300.json"));
const export3 = __importStar(require("./exercises_300-400.json"));
const fs = __importStar(require("fs"));
const function_1 = require("fp-ts/function");
const fp_ts_1 = require("fp-ts");
const io_ts_types_1 = require("io-ts-types");
const getMuscleGroups = () => {
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
    ];
};
const buildFullExercises = (fullExport) => {
    const exercises = fullExport.map((result) => {
        return result.exercises.filter((exercise) => exercise.language === 2).map((exercise) => {
            const muscleGroups = getMuscleGroups();
            return {
                id: exercise.id,
                name: exercise.name,
                muscles: result.muscles.map((muscle) => {
                    return {
                        ...muscle
                    };
                }),
                secondaryMuscles: result.muscles_secondary.map((muscle) => {
                    return {
                        ...muscle
                    };
                }),
                equipment: result.equipment.map((equipment) => {
                    return {
                        ...equipment
                    };
                }),
                muscleGroup: muscleGroups.find((muscleGroup) => muscleGroup.names.find((muscleNameItem) => muscleNameItem.name.startsWith(result.category.name)))
            };
        });
    });
    return exercises.flat();
};
exports.idEq = fp_ts_1.eq.struct({
    id: fp_ts_1.number.Eq,
});
const buildMuscles = (fullExport) => {
    return (0, function_1.pipe)(fullExport, fp_ts_1.array.chain((result) => {
        return result.muscles.concat(result.muscles_secondary);
    }), fp_ts_1.array.map((muscle) => {
        setEnglishMuscleName(muscle);
        return {
            ...muscle,
            image_url_main: `https://wger.de${muscle.image_url_main}`,
            image_url_secondary: `https://wger.de${muscle.image_url_secondary}`
        };
    }), fp_ts_1.array.uniq(exports.idEq), fp_ts_1.array.sort((0, function_1.pipe)(fp_ts_1.number.Ord, fp_ts_1.ord.contramap((muscle) => muscle.id))));
};
const setEnglishMuscleName = (muscle) => {
    muscle.name_en = (0, function_1.pipe)(muscle.name_en, io_ts_types_1.NonEmptyString.decode, fp_ts_1.either.getOrElse(() => muscle.name));
};
const buildEquipment = (fullExport) => {
    return (0, function_1.pipe)(fullExport, fp_ts_1.array.chain((result) => {
        return result.equipment;
    }), fp_ts_1.array.uniq(exports.idEq), fp_ts_1.array.sort((0, function_1.pipe)(fp_ts_1.number.Ord, fp_ts_1.ord.contramap((equipment) => equipment.id))));
};
const buildMuscleGroupsWger = (fullExport) => {
    return (0, function_1.pipe)(fullExport, fp_ts_1.array.map((result) => {
        return result.category;
    }), fp_ts_1.array.uniq(exports.idEq), fp_ts_1.array.sort((0, function_1.pipe)(fp_ts_1.number.Ord, fp_ts_1.ord.contramap((muscleGroup) => muscleGroup.id))));
};
const buildExport = () => {
    const fullExport = export0.results.concat(export1.results).concat(export2.results).concat(export3.results);
    const exercises = buildFullExercises(fullExport);
    fs.writeFileSync('./exercises_full.json', JSON.stringify(exercises));
    const muscles = buildMuscles(fullExport);
    fs.writeFileSync('./muscles.json', JSON.stringify(muscles));
    const equipment = buildEquipment(fullExport);
    fs.writeFileSync('./equipment.json', JSON.stringify(equipment));
    const muscleGroups = getMuscleGroups();
    fs.writeFileSync('./muscle-groups.json', JSON.stringify(muscleGroups));
    const muscleGroupsWger = buildMuscleGroupsWger(fullExport);
    fs.writeFileSync('./muscle-groups-wger.json', JSON.stringify(muscleGroupsWger));
};
buildExport();
