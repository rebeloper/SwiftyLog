//
//  ViewController.swift
//  SwiftyLog
//
//  Created by Alex Nagy on 28/04/2019.
//  Copyright © 2019 Alex Nagy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        DispatchQueueHelper.delay(bySeconds: 4, dispatchLevel: .background) {
            log.todo("\(Log.stats()) Fix this `delay` issue next week")/
        }
        
        print("This is a simple print statement")
        log.success("\(Log.stats()) Successfully launched app")/
        
        DispatchQueueHelper.delay(bySeconds: 1) {
            log.warning("\(Log.stats()) Strike 1!")/
        }
        
        DispatchQueueHelper.delay(bySeconds: 2) {
            log.warning("\(Log.stats()) Strike 2!")/
        }
        
        DispatchQueueHelper.delay(bySeconds: 3) {
            log.error("\(Log.stats()) Strike 3! You're out!")/
        }
        
        DispatchQueueHelper.delay(bySeconds: 5) {
            log.ln("\(Log.stats()) Logging at its best")/
        }
        
    }


}

