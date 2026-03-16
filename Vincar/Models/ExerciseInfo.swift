//
//  Exercise.swift
//  Vincar
//
//  Created by Kevin Kelly on 7/14/24.
//

import Foundation
 
extension ExerciseInfo: ExercisePublicInterface { }
private protocol ExercisePublicInterface {
    var id: String { get }
    var name: String { get }
    var force: String? { get }
    var level: String { get }
    var mechanic: String? { get }
    var equipment: String? { get }
    var primaryMuscles: [String] { get }
    var secondaryMuscles: [String] { get }
    var instructions: [String] { get }
    var category: String { get }
    var images: [ImageSource] { get }
    
    static var base: [ExerciseInfo] { get }
}

/// A single unit of Exercise.
public struct ExerciseInfo: Identifiable, Equatable, Hashable, Codable {
    public var id: String
    public var name: String
    public var force: String?
    public var level: String
    public var mechanic: String?
    public var equipment: String?
    public var primaryMuscles: [String]
    public var secondaryMuscles: [String]
    public var instructions: [String]
    public var category: String
    public var images: [ImageSource]
    
    init(
        id: String
        , name: String
        , force: String?
        , level: String
        , mechanic: String?
        , equipment: String?
        , primaryMuscles: [String]
        , secondaryMuscles: [String]
        , instructions: [String]
        , category: String
        , images: [ImageSource]
    ) {
        self.id = id
        self.name = name
        self.force = force
        self.level = level
        self.mechanic = mechanic
        self.equipment = equipment
        self.primaryMuscles = primaryMuscles
        self.secondaryMuscles = secondaryMuscles
        self.instructions = instructions
        self.category = category
        self.images = images
    }
}
