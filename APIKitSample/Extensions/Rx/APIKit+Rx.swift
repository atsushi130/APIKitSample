//
//  APIKit+Rx.swift
//  APIKitSample
//
//  Created by Atsushi Miyake on 2018/02/14.
//  Copyright © 2018年 Atsushi Miyake. All rights reserved.
//

import APIKit
import RxSwift
import RxCocoa

extension Session: ReactiveCompatible {}

extension Reactive where Base: Session {
    func response<T: Request>(_ request: T) -> Observable<T.Response> {
        return Observable.create { [weak base] observer in
            let task = base?.send(request) { result in
                switch result {
                case .success(let response):
                    observer.on(.next(response))
                    observer.on(.completed)
                    
                case .failure(let error):
                    observer.onError(error)
                }
            }
            
            return Disposables.create {
                task?.cancel()
            }
        }
    }
}
