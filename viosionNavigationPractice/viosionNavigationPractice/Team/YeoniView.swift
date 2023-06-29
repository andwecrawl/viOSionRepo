//
//  YeoniView.swift
//  viosionNavigationPractice
//
//  Created by 윤경환 on 2023/06/29.
//

import SwiftUI

struct YeoniView: View {
    
    // StardewValley(name: <#T##String#>, sex: <#T##String#>, birthday: <#T##String#>, liked: <#T##[String]#>)
    
    
    var body: some View {
        NavigationStack {
            List(villagers) { lover in
                NavigationLink {
                    YeoniDetailView(villagerName: "\(lover.name)", sex: "\(lover.sex)", birthday: "\(lover.birthday)", liked: lover.liked)
                } label: {
                    Text("\(lover.name)")
                        .font(.headline)
                    Text(" \(lover.sex)")
                        .font(.caption)
                }
            }
            .navigationTitle("StardewValley")
        }
        
    }
}

struct YeoniView_Previews: PreviewProvider {
    static var previews: some View {
        YeoniView()
    }
}
