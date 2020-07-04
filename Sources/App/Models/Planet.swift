//
//  File.swift
//  
//
//  Created by Mohammad Azam on 7/4/20.
//

import Foundation
import Fluent
import Vapor

final class Planet: Model, Content {
    
    static let schema = "planets"
    
    @ID(key: .id)
    var id: UUID?
    
    @Field(key: "name")
    var name: String
    
    init() {}
    
    init(id: UUID? = nil, name: String) {
        self.id = id
        self.name = name 
    }
    
}
