//
//  LearningApp.swift
//  Shared
//
//  Created by Aditi Singh  Karnawat on 2021-05-03.
//

import SwiftUI

@main
struct LearningApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(ContentModel())
        }
    }
}
