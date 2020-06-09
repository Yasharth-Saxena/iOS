//
//  ViewController.swift
//  AlertMessageApp
//
//  Created by Yasharth Saxena on 09/06/20.
//  Copyright © 2020 Yasharth Saxena. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    @IBOutlet weak var statusLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert]) {
            (granted,error) in
            if granted {
                print("granted")
                DispatchQueue.main.async {
                    self.statusLabel.text = "Notification in a minute"
                }
            }
            else {
                print("no permission")
                DispatchQueue.main.async {
                    self.statusLabel.text = "We need your permission for notifications"
                }
            }
        }
        
        let content = UNMutableNotificationContent()
        content.title = "Flight for Lucknow"
        content.body = "Tomorrow at 2 PM"
        content.sound = .defaultCriticalSound(withAudioVolume: 9)
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 60, repeats: true)
        
        let uuidString = UUID().uuidString
        let request = UNNotificationRequest(identifier: uuidString, content: content, trigger: trigger)
        
        let notificationCenter = UNUserNotificationCenter.current()
        notificationCenter.add(request) { (error) in
            if error == nil {
                
            }
            else {
                print("error", error ?? "somethingUnknown")
            }
            
        }
    }
    

    

}


