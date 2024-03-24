//
//  homeTabView.swift
//  UkinApp
//
//  Created by 정혜정 on 3/24/24.
//

import SwiftUI

struct homeTabView: View {
    @Binding var showHomeView: Bool
    
    var body: some View {
        ZStack{
            Color(Color.customBackgroundsky).ignoresSafeArea()
            TabView {
                writeStartView()
                    .tabItem {
                        Label("기록하기", systemImage: "tray.and.arrow.down.fill")
                    }
                    .tag(0)
                memoryStartView()
                    .tabItem {
                        Label("추억하기", systemImage: "clock.arrow.2.circlepath")
                    }
                    .tag(1)
                
            }
        }
    }
}
