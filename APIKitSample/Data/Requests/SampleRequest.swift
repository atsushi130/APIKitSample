//
//  SampleRequest.swift
//  APIKitSample
//
//  Created by Atsushi Miyake on 2018/02/14.
//  Copyright © 2018年 Atsushi Miyake. All rights reserved.
//

import APIKit

protocol SampleRequest: Request {}
extension SampleRequest {
    var baseURL: URL { return URL(string: "")! }
}

fileprivate struct JsonDataParser: DataParser {
    var contentType: String? { return "application/json" }
    func parse(data: Data) throws -> Any { return data }
}

extension SampleRequest where Response: Decodable {
    
    var dataParser: DataParser { return JsonDataParser() }
    
    func response(from object: Any, urlResponse: HTTPURLResponse) throws -> Response {
        
        guard let data = object as? Data else {
            throw ResponseError.unexpectedObject(object)
        }
        
        return try JSONDecoder().decode(Response.self, from: data)
    }
}
