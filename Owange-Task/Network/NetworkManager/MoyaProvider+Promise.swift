//
//  MoyaProvider+Promise.swift
//  Owange-Task
//
//  Created by Mohammed Bakr on 22.01.2021.
//

import Alamofire
import Moya
import PromiseKit
import Moya_ObjectMapper
import ObjectMapper

extension MoyaProvider {

    func requestPromise<T: Mappable> (_ target: Target) -> Promise<[T]> {
        
        return Promise<[T]> { (resolver) in
            
            self.request(target) { (result) in
                
                switch result {
                
                case let .success(response):
                    
                    do {
                        if response.isSuccess { // response status code is 200
                            
                            print (" \n BK_API_RESPONSE ", try response.mapString())
                            let serverResponse = try response.mapArray(T.self)
                            resolver.fulfill(serverResponse)
                            
                        } else {
                            if let serverError = try? response.mapObject(LoginNetworkError.self) {
                                resolver.reject(ServerError.response(error: [serverError]))
                            } else if let serverError = try? response.mapObject(ServerErrorModel.self) {
                                resolver.reject(ServerError.response(error: serverError.errors ?? []))
                            }
                        }
                        
                    } catch {
                        resolver.reject(ServerError.serialization)
                    }
                    
                case .failure:
                    resolver.reject(ServerError.network)
                }
            }
        }
    }
}
