//
//  ComposeView.swift
//  UkinApp
//
//  Created by 정혜정 on 3/24/24.
//

import SwiftUI

struct ComposeView: View {
    @EnvironmentObject var store: MemoStore
    
    
    @State private var openPhoto = false
    @State private var image = UIImage()
    
    var memo: Memo? = nil
    
    //메모 창 닫기 dismiss방법을 이용
    @Environment(\.dismiss) var dismiss
    
    @State private var content: String = ""
    
    
    var body: some View {
        NavigationStack{
                VStack{
                    Spacer()
                    NavigationStack {
                        Button(action: {
                            self.openPhoto = true
                        }) {
                            Text("사진 추가")
                        }
                    }
                    .sheet(isPresented: $openPhoto) {
                                ImagePicker(sourceType: .photoLibrary, selectedImage: self.$image)
                            }
                    
                    Image(uiImage: self.image)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
//                        .edgesIgnoringSafeArea(.all)
                    
                    
                    TextEditor(text: $content)
                        .padding()
                        .onAppear{
                            if let memo = memo{
                                content = memo.content
                            }
                        }
                    
                    
                   
                    
                    
                    
                }
                .navigationTitle(memo != nil ? "편집" : "새기록")
                .navigationBarTitleDisplayMode(.inline)
                
                //large title 모드는 사용하지 않음
                
                
                // 취소 dismiss 이용
                .toolbar{
                    ToolbarItemGroup(placement: .navigationBarLeading) {
                        Button{
                            dismiss()
                        }label: {
                            Text("취소")
                        }
                    }
                }
                
                
                // Memostore의 insert를 사용하여 저장
                .toolbar{
                    ToolbarItemGroup(placement: .navigationBarTrailing) {
                        Button{
                            if let memo = memo{
                                store.update(memo: memo, content: content)
                            }else{
                                
                                //위의 texteditor의 text를 content로 받음
                                store.insert(memo: content)
                            }
                            
                            dismiss()
                        }label: {
                            Text("저장")
                        }
                    }
                }
                    
                
                
                
                
            
        }
    }
}

//#Preview {
//    ComposeView()
//        .environmentObject(MemoStore())
//}
