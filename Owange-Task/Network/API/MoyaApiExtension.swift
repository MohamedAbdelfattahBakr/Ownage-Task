//
//  MoyaApiExtension.swift
//  Owange-Task
//
//  Created by Mohammed Bakr on 22.01.2021.
//

import Moya

extension Moya.Response {
    var isSuccess: Bool {
        return (200 ... 299) ~= self.statusCode
    }
    
    var isValidAuthantication: Bool {
        return self.statusCode == 401
    }
    var sampleData: Data { return Data() }

}

extension NetworkLoggerPlugin.Configuration {
    
    static var loggerConfiguration: NetworkLoggerPlugin.Configuration {
        return NetworkLoggerPlugin.Configuration (formatter: Formatter (),
                                                  output: defaultOutput(target:items:),
                                                  logOptions: LogOptions.verbose)
    }
}

extension NetworkLoggerPlugin {
    
    static var networkLogger: NetworkLoggerPlugin {
        return NetworkLoggerPlugin (configuration: NetworkLoggerPlugin.Configuration.loggerConfiguration)
    }
}
