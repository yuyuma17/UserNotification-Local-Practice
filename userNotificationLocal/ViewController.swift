//
//  ViewController.swift
//  userNotificationLocal
//
//  Created by 黃士軒 on 2019/9/10.
//  Copyright © 2019 黃士軒. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        createNotification()
    }

    func createNotification() {
        
        let content = UNMutableNotificationContent()
        
        content.title = "打我啊笨蛋"
        content.subtitle = "哈哈"
        content.body = "還敢下來啊冰鳥"
        content.badge = 1
        content.sound = UNNotificationSound.default
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 10, repeats: false)
        let request = UNNotificationRequest(identifier: "notification", content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }

}

