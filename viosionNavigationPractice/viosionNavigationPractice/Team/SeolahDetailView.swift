//
//  SeolahDetailView.swift
//  viosionNavigationPractice
//
//  Created by Chloe Chung on 2023/06/29.
//

import SwiftUI

//Foods(kind: "한식", name: ["제육볶음", "고구마치즈돈까스"]),
//Foods(kind: "양식", name: ["알리오올리오 파스타", "명란 새우 크림 파스타", "리조또"])
//Foods(kind: "야식", name: ["후라이드치킨", "곱창", "닭발", "족발"]),
//Foods(kind: "중식", name: ["짜장면", "마라탕", "마라샹궈"]),
//Foods(kind: "일식", name: ["초밥", "붓가케 우동", "냉모밀"])

struct SeolahDetailView: View {
    
    let food: String
    let image: String
    
    var kind: String {
        switch food {
        case "제육볶음", "고구마치즈돈까스":
            return "한식"
        case "알리오올리오 파스타", "명란 새우 크림 파스타", "리조또":
            return "양식"
        default:
            return "배고파"
        }
    }
    
    var body: some View {
        
        VStack {
            List {
                
                AsyncImage(url: URL(string: "\(image)")) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                } placeholder: {
                    ProgressView()
                }
                
                Text("\(food)")
            }
        }
    }
}

struct SeolahDetailView_Previews: PreviewProvider {
    static var previews: some View {
        SeolahDetailView(food: "아무거나", image: "https://d12zq4w4guyljn.cloudfront.net/750_750_20210217033252_photo1_4uBLESlq4QwF.jpg")
    }
}
