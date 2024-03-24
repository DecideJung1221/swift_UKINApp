//
//  writeThemeView.swift
//  UkinApp
//
//  Created by 정혜정 on 3/24/24.
//

import SwiftUI

struct writeThemeView: View {
    @Binding var showwriteThemeView: Bool
    
    //compose뷰를 사용할 때 이용
    @State private var showComposer: Bool = false
   
    var body: some View {
        VStack{
            Spacer()
                .frame(height: 30)
            Text("오늘의 대화")
                .font(.title2)
                .foregroundStyle(Color(.black))
                .bold()
                .padding()
            ZStack{
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.customBackgroundsky)
                    .frame(width: 350,height: 300)
                VStack{
                    
                    Spacer()
                    Button(action: {showComposer = true}, label: {
                        Image(systemName: "checkmark.circle")
                            .imageScale(.medium)
                            .font(.largeTitle)
                            .foregroundColor(.black)
                    }).padding()
                        .sheet(isPresented: $showComposer, content: {
                            ComposeView()
                        })
                }
            }
            .frame(width: 300,height: 250)
            .padding()

            //                모아 캐릭터
            VStack{
                Image("newView_human")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 180,height: 150)
                Image("MOA_mini")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50)
            }
            .padding()
        }
    }
}

//#Preview {
//    writeThemeView()
//}
