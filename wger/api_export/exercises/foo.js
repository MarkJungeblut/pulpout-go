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
const export0 = __importStar(require("./exercises_0-100.json"));
const export1 = __importStar(require("./exercises_100-200.json"));
const export2 = __importStar(require("./exercises_200-300.json"));
const export3 = __importStar(require("./exercises_300-400.json"));
const fs = __importStar(require("fs"));
const exportExercises = (fullExport) => {
    const exercises = fullExport.map((result) => {
        return result.exercises.filter((exercise) => exercise.language === 2).map((exercise) => {
            return {
                id: exercise.id,
                name: exercise.name,
            };
        });
    });
    exercises.flat();
    fs.writeFileSync('./foo.json', JSON.stringify(exercises));
};
const buildExport = () => {
    const fullExport = export0.results.concat(export1.results).concat(export2.results).concat(export3.results);
    exportExercises(fullExport);
};
buildExport();
