//
//  MainListView.swift
//  UkinApp
//
//  Created by 정혜정 on 3/24/24.
//

import SwiftUI

struct MainListView: View {
    @EnvironmentObject var store: MemoStore
    
    //compose뷰를 사용할 때 이용
    @State private var showComposer: Bool = false
    
    var body: some View {
        ZStack{
            Color(Color.customBackgroundsky).ignoresSafeArea()
            
            NavigationView{
                List{
                    ForEach(store.list){memo in
                        
                        NavigationLink{
                            DetailView(memo: memo)
                        }label:{
                            
                            MemoCell(memo: memo)
                        }
                        
                    }
//                    .onDelete(perform: store.delete)
                }
                .listStyle(.plain)
                .navigationTitle("기록")
                
                .toolbar{
                    
                    Button{
                        showComposer = true
                    }label: {
                        Image(systemName: "plus")
                    }
                }
                //새로운 메모를 모달로 표시!
                .sheet(isPresented: $showComposer, content: {
                    ComposeView()
                })
            }
        }
    }
}





#Preview {
    MainListView()
        .environmentObject(MemoStore())
}
