//
//  NetworkClient.swift
//  RxBeer
//
//  Created by MacBook Pro on 2/1/18.
//  Copyright © 2018 Ivan. All rights reserved.
//

import RxSwift

struct API {
    static func download(file: String) -> Observable<Data> {
        return Observable<Data>.just("\(file) hello world".data(using: String.Encoding.utf8)!)
    }
}
