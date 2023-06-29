//
//  ProductRow().swift
//  viosionNavigationPractice
//
//  Created by 윤경환 on 2023/06/29.
//

import SwiftUI

struct ProductRow: View {
    var body: some View {
        HStack {
            ProductImage()
            ProductDescription()
        }
        .frame(height: 150)
        .background(Color.primary.colorInvert())
        .cornerRadius(10)
        .shadow(color:Color.primary.opacity(0.3),radius: 1, x: 2, y: 2)
        .padding(.vertical,10)
    }
}
    
private extension ProductRow {
    var productImage: some View {
        Image("crimecity")
            .resizable()
            .scaledToFit()
            .frame(width: 150)
            .clipped()
    }
    var productDescription: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("crimecity")
                    .font(.headline)
                    .fontWeight(.medium)
                Spacer()
                Text("마동석 주연")
                    .font(.footnote).foregroundColor(.gray)
            }
            .padding(.bottom, 10)
            
            Text("엄청난 괴력을 자랑하는 형사 마석도와 반장 전일만은 도시를 휘어잡은 신흥범죄조직의 보스 장첸을 비롯한 도시의 범죄조직을 일망타진할 작전을 세우기 시작한다.")
                .font(.footnote)
                .foregroundColor(.secondary)
                .lineLimit(3)
            
            Spacer()
            
        }
        .padding([.leading, .bottom], 10)
        .padding([.trailing, .top])
    }
    
    var footerView: some View {
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
}
    
    struct ProductRow___Previews: PreviewProvider {
        static var previews: some View {
            ProductRow()
        }
    }
