//
//  TestyRequest.swift
//  APIKitSample
//
//  Created by Atsushi Miyake on 2018/02/14.
//  Copyright © 2018年 Atsushi Miyake. All rights reserved.
//

import APIKit

extension SampleApi {
    struct TestyRequest: SampleRequest {
    
        typealias Response = TestyEntity
    
        public var method: HTTPMethod {
            return .get
        }
    
        public var path: String {
            return "/testy"
        }
    }
}
