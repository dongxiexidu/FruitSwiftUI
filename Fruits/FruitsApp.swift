//
//  FruitsApp.swift
//  Fruits
//
//  Created by Benjamin on 15/04/2022.
//

import SwiftUI

@main
struct FruitsApp: App {
    @AppStorage(newUserKey)var newUser: Bool = true
    var body: some Scene {
        WindowGroup {
            // 在任何页面修改newUser的值都会重新调用这里,进而修改根页面
            if newUser {
                Onboarding()
            }
            else {
                HomePage()
            }
        }
    }
}

