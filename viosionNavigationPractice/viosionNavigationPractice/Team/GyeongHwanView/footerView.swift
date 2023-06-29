//
//  footerView.swift
//  viosionNavigationPractice
//
//  Created by 윤경환 on 2023/06/29.
//

import SwiftUI

struct footerView: View {
    var body: some View {
        HStack(spacing: 0) {
            Text("￦").font(.footnote)
            + Text("9,800").font(.headline)
            
            Spacer()
            
            Image(systemName: "heart")
                .imageScale(.large)
                .foregroundColor(.red)
                .frame(width: 32, height: 32)
            
            Image(systemName: "cart")
                .foregroundColor(.blue)
                .frame(width: 32, height: 32)
            
        }
    }
    
    struct footerView_Previews: PreviewProvider {
        static var previews: some View {
            footerView()
        }
    }
}
