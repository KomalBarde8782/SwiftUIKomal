//
//  ScenesDemo.swift
//  SwiftDemoNew
//
//  Created by Komal Barde on 01/02/24.
//

import SwiftUI

//
//  ios14_demoApp.swift
//  ios14-demo
//
//  Created by Prafulla Singh on 23/6/20.
//
import SwiftUI

struct ios14_demoApp: View {
    @Environment(\.scenePhase) var scenePhase
    
    var body: some View {
        
            HistoryTabView()
        .onChange(of: scenePhase) { phase in
            switch phase {
            case .background:
                print("App is in background")
            case .active:
                print("App is Active")
            case .inactive:
                print("App is Inactive")
            @unknown default:
                print("New App state not yet introduced")
            }
        }
    }
}
