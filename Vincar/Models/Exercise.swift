//
//  Exercise.swift
//  Vincar
//
//  Created by Kevin Kelly on 7/14/24.
//

import Foundation

public struct Exercise: Identifiable, Equatable, Hashable, Codable {
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
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case force
        case level
        case mechanic
        case equipment
        case primaryMuscles
        case secondaryMuscles
        case instructions
        case category
        case images
    }
}
