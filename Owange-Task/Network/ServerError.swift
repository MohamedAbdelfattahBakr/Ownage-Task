//
//  ServerError.swift
//  Owange-Task
//
//  Created by Mohammed Bakr on 22.01.2021.
//

import Foundation
import ObjectMapper

class ServerErrorModel: Mappable {
    
    var errors: [NetworkError]?
    
    required init?(map: Map) { }
    
    func mapping(map: Map) {
        errors <- map["errors"]
    }
}

enum ServerError: Error {
    
    case network
    case serialization
    case general
    case noData
    case response(error: [NetworkError])
    
    var message: String {
        switch self {
        case .network:
            return "Network Error"
        case .serialization:
            return "someThingWentWrong"
        case .general:
            return "Something weng wrong"
        case .noData:
            return "Something weng wrong"
        case .response(let error):
            return error.first?.message ?? "Something weng wrong"
        }
    }
    
    var serverErrors: [NetworkError]? {
        switch self {
        case .response(let error):
            return error
        default:
            return nil
        }
    }
}

extension Error {
    
    var message: String {
        return (self as? ServerError)?.message ?? "Something weng wrong"
    }
}
