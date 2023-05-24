//
//  TodoAppApp.swift
//  TodoApp
//
//  Created by Dmitro Dohryk on 23.05.2023.
//

import SwiftUI

@main
struct TodoAppApp: App {
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
