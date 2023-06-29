//
//  SeokhoView.swift
//  viosionNavigationPractice
//
//  Created by 윤경환 on 2023/06/29.
//

import SwiftUI

struct SeokhoView: View {
    var body: some View {
        NavigationStack {
            Text("우리나라 주류 브랜드")
                .font(.title)
                .bold()
            List(0 ..< alcohol.count, id: \.self) { index in
                
                NavigationLink {
                    
                    SeokhoDetailView(brand: index, brandURL: alcohol[index].url)
                    
                } label: {
            
                        Text("\(alcohol[index].brand)")
                        .font(.title2)
                        
                }
            }.listStyle(.grouped)
        }
    }
}

struct SeokhoView_Previews: PreviewProvider {
    static var previews: some View {
        SeokhoView()
    }
}
