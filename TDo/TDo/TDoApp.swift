//
//  TDoApp.swift
//  TDo
//
//  Created by 지현정 on 2021/11/17.
//

import SwiftUI

@main
struct TDoApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(listViewModel)
        }
    }
}
