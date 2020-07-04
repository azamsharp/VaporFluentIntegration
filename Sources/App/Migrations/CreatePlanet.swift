//
//  File.swift
//  
//
//  Created by Mohammad Azam on 7/4/20.
//

import Foundation
import Fluent
import FluentPostgresDriver

struct CreatePlanet: Migration {
    
    func prepare(on database: Database) -> EventLoopFuture<Void> {
        database.schema("planets")
        .id()
        .field("name", .string)
        .create()
    }
    
    // undo
    func revert(on database: Database) -> EventLoopFuture<Void> {
        database.schema("planets").delete()
    }
    
    
}
