//
//  memoryStartView.swift
//  UkinApp
//
//  Created by 정혜정 on 3/24/24.
//

import SwiftUI

struct memoryStartView: View {
    //메모 저장소를 속성으로 먼저 저장
    @StateObject var store = MemoStore()
    
    
    let persistenceController = PersistenceController.shared
    
    
    var body: some View {
        ZStack{
            Color(Color.customBackgroundsky).ignoresSafeArea()
            MainListView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                    .environmentObject(store)
        }
    }
}

#Preview {
    memoryStartView()
}
