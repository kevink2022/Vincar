import Foundation


extension Exercise {
    public static var base: [Exercise] {
        do {
            let base = try BaseExercise.load()
            return base.map { Exercise($0) }
        } catch {
            print(error.localizedDescription)
            return []
        }
    }
    
    fileprivate init(_ base: BaseExercise) {
        self.init(
            id: base.id
            , name: base.name
            , force: base.force
            , level: base.level
            , mechanic: base.mechanic
            , equipment: base.equipment
            , primaryMuscles: base.primaryMuscles
            , secondaryMuscles: base.secondaryMuscles
            , instructions: base.instructions
            , category: base.category
            , images: base.images.map({ ImageSource.asset($0) })
        )
    }
}

private struct BaseExercise: Decodable {
    public var name: String
    public var force: String?
    public var level: String
    public var mechanic: String?
    public var equipment: String?
    public var primaryMuscles: [String]
    public var secondaryMuscles: [String]
    public var instructions: [String]
    public var category: String
    public var images: [String]
    public var id: String
    
    static func load() throws -> [BaseExercise] {
        guard let baseJson = Bundle.main.url(forResource: "exercises", withExtension: "json") else { return [] }
        let baseData = try Data(contentsOf: baseJson)
        let baseExercises = try JSONDecoder().decode([BaseExercise].self, from: baseData)
        return baseExercises
    }
}
    


