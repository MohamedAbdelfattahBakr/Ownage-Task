//
//  RepositoriesAPI.swift
//  Owange-Task
//
//  Created by Mohammed Bakr on 22.01.2021.
//

import Moya

enum RepositoriesAPI {
    case fetchRepositories
}
extension RepositoriesAPI: TargetType {
    
    var baseURL: URL {
        return URL(string: ApisPaths.Base.BASE_URL)!
    }
    
    var path: String {
        switch self {
        case .fetchRepositories:
            return ApisPaths.Repositories.URL_REPOSITORIES
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .fetchRepositories:
            return .get

        }
    }
    
    var parameters: [String: Any]? {
        return nil
    }
    
    var parameterEncoding: ParameterEncoding {
        switch self {
        case .fetchRepositories:
            return JSONEncoding.default
        }
    }
    
    var sampleData: Data {
        return Data()
    }
    
    var headers: [String: String]? {
        switch self {
        case .fetchRepositories:
            return ["accept": "application/json",
                    "Content-Type": "application/json"]
        }
    }
    
    var task: Task {
        if parameters != nil {
            return .requestParameters(parameters: parameters!, encoding: parameterEncoding)
        } else {
            return .requestPlain
        }
    }
}
