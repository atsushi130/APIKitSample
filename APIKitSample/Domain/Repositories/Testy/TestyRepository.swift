//
//  Repository.swift
//  APIKitSample
//
//  Created by Atsushi Miyake on 2018/02/14.
//  Copyright © 2018年 Atsushi Miyake. All rights reserved.
//

import APIKit
import RxSwift

struct TestyRespository {
    
    static let shared = TestyRespository()
    
    var testy: Observable<Testy> {
        return Session.shared.rx.response(SampleApi.TestyRequest()).map {
            Testy(entity: $0)
        }
    }
}
