//
//  SwiftUIApp.swift
//  cross
//
//  Created by Ali Asadpoor on 6/6/21.
//  Copyright © 2021 shaidin. All rights reserved.
//

import SwiftUI

@main
class CrossUIApp: App
{
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var the_view_: ContentView!

    @Environment(\.scenePhase) var scenePhase
    var body: some Scene
    {
        WindowGroup
        {
            the_view_.ignoresSafeArea()
        }
    }
}


struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
            Text("I'm great!")
        }
    }
}
