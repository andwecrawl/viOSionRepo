//
//  ProductDescription.swift
//  viosionNavigationPractice
//
//  Created by 윤경환 on 2023/06/29.
//

import SwiftUI

struct ProductDescription: View {
    var body: some View {
        
        VStack(alignment: .leading){
            HStack {
                Text("범죄도시")
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
    }
    
    
    struct ProductDescription_Previews: PreviewProvider {
        static var previews: some View {
            ProductDescription()
        }
    }
}
