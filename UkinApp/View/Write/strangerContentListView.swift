//
//  strangerContentListView.swift
//  UkinApp
//
//  Created by 정혜정 on 3/24/24.
//

import SwiftUI

struct strangerContentListView: View {
    @State var contentList: [Contents] = [Content0,Content1,Content2,Content3,Content4,Content5,Content6]
//    @State var contentnum: Int = 0
    
    
    var body: some View {
        
        Text("오늘의 \n\(contentList[0].content)")
        
//        Button(action: {
//            contentnum = .random(in: 0...6)
//          },
//          label: {
//            Text("Change Number")
//          }).padding()
        
    }
}

// Mark: content struct
struct Contents{
    var id: Int
    var content: String
}

// Todo: 다양한 contents문구 넣을 수 있는 방법 찾기
// Mark: contents 문구
var Content0 = Contents(id: 0, content: "빨간 옷을 입은 사람을 찾으시오.")
var Content1 = Contents(id: 1, content: "아무나아무나안문아무나울만우람ㄴ우ㅏ 찾으시오.")
var Content2 = Contents(id: 2, content: "정혜정혜정혜정혜정혜정혜정헤정 사람을 찾으시오.")
var Content3 = Contents(id: 3, content: "춥고 배고프고 졸려 보이는 사람을 찾으시오.")
var Content4 = Contents(id: 4, content: "메렁메렁메렁멜언메럼ㄴ에러멘ㅇ러ㅔㅁㅇ너렘 사람을 찾으시오.")
var Content5 = Contents(id: 5, content: "호호호호홓호아화오하오하아화아ㅗ하옿아ㅏ를 찾으시오.")
var Content6 = Contents(id: 6, content: "검정 옷을 입은 사람을 찾으시오.")

#Preview {
    strangerContentListView()
}
