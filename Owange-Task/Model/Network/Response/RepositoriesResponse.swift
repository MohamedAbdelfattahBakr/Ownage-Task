//
//  RepositoriesResponse.swift
//  Owange-Task
//
//  Created by Mohammed Bakr on 22.01.2021.
//



import ObjectMapper

class RepositoriesResponse: Mappable, Codable {
    
    var id : Int?
    var name : String?
    var owner : Owner?
    var description : String?
    var fork : Bool?
    var forks_count : Int?

    required init?(map: Map) {}

    func mapping(map: Map) {
        
        id <- map["id"]
        name <- map["name"]
        owner <- map["owner"]
        description <- map["description"]
        fork <- map["fork"]
        forks_count <- map["forks_count"]
    }
}

class Owner : Mappable, Codable{
    
    var id : Int?
    var node_id : String?
    var avatar_url : String?
    var gravatar_id : String?
    
    required init?(map: Map) {}
    
    func mapping(map: Map) {
        
        id <- map["id"]
        node_id <- map["node_id"]
        avatar_url <- map["avatar_url"]
        gravatar_id <- map["gravatar_id"]
    }
}
