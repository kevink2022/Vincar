//
//  WorkoutExercise.swift
//  Vincar
//
//  Created by Kevin Kelly on 7/15/24.
//

import Foundation

/// A `WorkoutExercise` is an exercise performed during a workout, or saved in a routine. Therefore, it contians set and rep data, along with substitutions.
struct Exercise {
    var exercise: MultiExercise
    
    // Subs are really a workout thing.
    var subsitutions: [MultiExercise]
    
    var sets: [ExerciseSet]
}

protocol ExerciseSet {
    // somthing to describe values
    
    // completeion station
}
