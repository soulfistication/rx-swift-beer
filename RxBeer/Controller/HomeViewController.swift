//
//  HomeViewController.swift
//  RxBeer
//
//  Created by MacBook Pro on 2/1/18.
//  Copyright © 2018 Ivan. All rights reserved.
//

import UIKit
import RxSwift

class HomeViewController: BaseViewController {

    override func viewDidLoad() {

        // Observe value from mock API

        let _ = API.download(file: "Hey mister!").subscribe(onNext: { data in
            print(String(data: data, encoding: String.Encoding.utf8)!)
        }, onError: { error in
            print(error.localizedDescription)
        }, onCompleted: { 
            print("Transfer completed.")
        })

        self.observeOrientation()
    }

    func observeOrientation() {
        // Fictional RX orientation property (to be coded after)
        //        UIDevice.rx.orientation.subscribe(onNext: { current in
        //            switch current {
        //            case .landscape:
        //                print("switched to landscape")
        //            case .portrait:
        //                print("switched to portrait")
        //            }
        //        })
    }
}
