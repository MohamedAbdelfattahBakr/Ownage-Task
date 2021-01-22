//
//  NetworkError.swift
//  Owange-Task
//
//  Created by Mohammed Bakr on 22.01.2021.
//

import ObjectMapper

class NetworkError: Mappable {
    var message: String?
    var key: String?
    var status: Bool?

    required init?(map: Map) {}
    
    init() {}
    
    func mapping(map: Map) {
        message <- map["message"]
        key <- map["key"]
        status <- map["status"]
    }
}


class LoginNetworkError: NetworkError {
    var errorTitle: String?
    var errorMessage: String?
    
    override func mapping(map: Map) {
        super.mapping(map: map)
        errorTitle <- map["error"]
        errorMessage <- map["error_description"]
        
        message = errorMessage
    }
}
