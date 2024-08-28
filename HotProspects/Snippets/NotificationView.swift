//
//  NotificationView.swift
//  HotProspects
//
//  Created by Rodrigo on 27-08-24.
//

import SwiftUI
import UserNotifications

struct NotificationView: View {
    var body: some View {
        VStack {
            Button("Request Permission") {
                UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { success, error in
                    if success {
                        print("All set")
                    } else if let error {
                        print(error.localizedDescription)
                    }
                }
            }
            
            Button("Schedule Notification") {
                
                // create the content of the notification
                let content = UNMutableNotificationContent()
                content.title = "Feed the cat"
                content.subtitle = "It looks hungry"
                content.sound = UNNotificationSound.default
                
                // create a trigger defining timeInterval and repeats
                let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
                
                // create the request with the content and trigger attached to it
                let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
                
                // Add the request to the UNUserNotificationCenter queue
                UNUserNotificationCenter.current().add(request)
            }
        }
    }
}

#Preview {
    NotificationView()
}
