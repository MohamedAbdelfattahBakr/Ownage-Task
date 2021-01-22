//
//  NetworkManager.swift
//  Owange-Task
//
//  Created by Mohammed Bakr on 22.01.2021.
//

import Moya
import Moya_ObjectMapper
import ObjectMapper

class NetworkManager: NSObject {
    
    lazy var repositoriesProvider: MoyaProvider<RepositoriesAPI> = {
        return  MoyaProvider<RepositoriesAPI>(plugins:([NetworkLoggerPlugin()]))
    } ()
}
