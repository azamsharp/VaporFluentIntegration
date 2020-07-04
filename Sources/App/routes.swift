import Fluent
import Vapor

func routes(_ app: Application) throws {
   
    // localhost:8080/planets POST 
    app.post("planets") { req -> EventLoopFuture<Planet> in
        
        let planet = try req.content.decode(Planet.self)
        return planet.create(on: req.db).map { planet }
    }
    
}
