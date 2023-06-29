//
//  YeoniDetailView.swift
//  viosionNavigationPractice
//
//  Created by yeoni on 2023/06/29.
//

import SwiftUI

struct YeoniDetailView: View {
    var villagerName: String
    var sex: String
    var birthday: String
    var liked: [String]
    
    var body: some View {
        Image("\(villagerName)")
            .resizable()
            .frame(width: 250, height: 250)
        Text("Name: \(villagerName)")
        Text("Sex")
        Text("Birthday: \(birthday)")
        ForEach(0..<liked.count) { index in
            Text("Best Gifts: \(liked[index])")
        }
    }
}


struct YeoniDetailView_Previews: PreviewProvider {
    static var previews: some View {
        YeoniDetailView(villagerName: "", sex: "", birthday: "", liked: [])
    }
}




