//
//  UkinAppApp.swift
//  UkinApp
//
//  Created by 정혜정 on 3/24/24.
//

import SwiftUI

@main
struct UkinAppApp: App {
    //메모 저장소를 속성으로 먼저 저장
    @StateObject var store = MemoStore()
    
    
    let persistenceController = PersistenceController.shared

    var body: some Scene {
       
        WindowGroup {
            ContentView()
//            MainListView()
//                .environment(\.managedObjectContext, persistenceController.container.viewContext)
//                .environmentObject(store)
        }
    }
}
