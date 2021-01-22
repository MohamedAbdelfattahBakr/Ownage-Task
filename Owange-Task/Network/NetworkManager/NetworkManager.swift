//
//  NetworkManager.swift
//  Owange-Task
//
//  Created by Mohammed Bakr on 22.01.2021.
//

import Moya
import Moya_ObjectMapper

class NetworkManager: NSObject {
    
    lazy var repositoriesAPIProvider: MoyaProvider<RepositoriesAPI> = {
        return  MoyaProvider<RepositoriesAPI>(plugins:([NetworkLoggerPlugin()]))
    } ()
}
