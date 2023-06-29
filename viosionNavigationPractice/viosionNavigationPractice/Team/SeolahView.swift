//
//  SeolahView.swift
//  viosionNavigationPractice
//
//  Created by 윤경환 on 2023/06/29.
//

import SwiftUI




struct SeolahView: View {
    
    struct Foods: Identifiable {
        var id: UUID = UUID()
        var kind: String
        var name: [String]
        var imageUrl: [String]
    }
    
    let foodList: [Foods] = [
        Foods(kind: "한식", name: ["제육볶음", "고구마치즈돈까스", "찜닭", "갈비찜"],imageUrl:  ["https://d12zq4w4guyljn.cloudfront.net/750_750_20211022211346_photo2_23cd8635f3fc.jpg", "https://mblogthumb-phinf.pstatic.net/MjAyMTA2MjVfNTEg/MDAxNjI0NjA3Mzk2MDQz.mAlg3k4Vf30zOIJU4plUnjhvLBV-b1R1zt-LNptHwzEg.ttMcw3dPm6tjqi39sjD_PssQ2UkKWbXaQZCJq3Se-1wg.JPEG.choice_c/SE-DDCBF81F-C26B-440C-9DC3-A6881A9693CA.jpg?type=w800", "https://blog.kakaocdn.net/dn/b5hdbJ/btqIlvcQLM9/naM0qF1pxIgXnKJXvkBkRk/img.jpg","https://blog.kakaocdn.net/dn/binZMT/btsd5Y1RjjF/axnsXUaKbkxCLuPKxwnmIK/img.jpg"]),
        Foods(kind: "아시안", name: ["쌀국수", "우육탕면", "팟타이", "나시고랭"], imageUrl:  ["https://mp-seoul-image-production-s3.mangoplate.com/576647_1568847319207288.jpg?fit=around|738:738&crop=738:738;*,*&output-format=jpg&output-quality=80", "https://imgcdn.uuumall.kr/product/2022031817370001/13668/add/13668_12955.jpg?w=0&h=0&f=jpeg&q=60", "https://cdn-pro-web-251-119.cdn-nhncommerce.com/elandeats_godomall_com/data/goods/22/07/27//1000001138/register_main_072.jpg", "https://pbs.twimg.com/media/EIxmnnxUYAA-mSZ.jpg"]),
        Foods(kind: "치킨", name: ["갓튀긴후라이드", "꾸브라꼬", "노랑통닭"], imageUrl: ["https://thumb.mt.co.kr/06/2022/05/2022053013571232563_1.jpg/dims/optimize/", "https://d12zq4w4guyljn.cloudfront.net/750_750_20200102021056_photo1_oB7Vhsap7vlD.jpg", "https://thumb.mt.co.kr/06/2021/09/2021090214462284609_1.jpg/dims/optimize/"]),
        Foods(kind: "야식", name: ["곱창", "닭발", "족발"], imageUrl: ["https://mblogthumb-phinf.pstatic.net/MjAyMjAzMjJfMTU1/MDAxNjQ3OTQ5ODU3Njcz.WW5yw14dQT2IMrbUEampiKVj3vTpeEW4HTsq0Pvu8h0g.OJJ2aYIdnB1Dt9d09SeDQym9YdLiUDXhsmZkk_nDJm8g.JPEG.mqqmq/FullSizeRender.jpg?type=w800", "https://mblogthumb-phinf.pstatic.net/MjAyMDA2MDZfMjAz/MDAxNTkxNDM0MDY3MjAw.idn3_Ohe1oBtAmsy306ZpIFgbq2KPTKHVHtPLVR_ftgg.Fa4ZQRrzTpl_R6SQGUoDNniflb4kXn3qV9R_P3jNFhIg.JPEG.dann_000/IMG_5192.jpg?type=w800", "https://img.siksinhot.com/seeon/1537160499782295.jpg"]),
        Foods(kind: "중식", name: ["짜장면", "마라탕", "마라샹궈", "양꼬치"], imageUrl: ["https://www.newiki.net/w/images/thumb/d/d9/Jjajangmyeon.jpg/450px-Jjajangmyeon.jpg", "https://ai.esmplus.com/foodjang01/images/221806880_b_1.jpg", "https://mp-seoul-image-production-s3.mangoplate.com/1878447_1613359956011813.jpg?fit=around|738:738&crop=738:738;*,*&output-format=jpg&output-quality=80", "https://t1.daumcdn.net/cfile/tistory/9964BA415CCB9B3915"]),
        Foods(kind: "일식", name: ["초밥", "붓가케 우동", "냉모밀"], imageUrl: ["https://d12zq4w4guyljn.cloudfront.net/750_750_20210217033252_photo1_4uBLESlq4QwF.jpg", "https://blog.kakaocdn.net/dn/Tj0F1/btrxgERLCan/Igl1QvQ5jm4dKK4u9GKeVK/img.jpg", "https://www.meconomynews.com/news/photo/202205/66171_81580_1448.jpeg"])
    ]
    
    var body: some View {
        
        NavigationStack {
            
            VStack {
                
                List(foodList) { food in
                    
                    Section {
                        
                        ForEach(0..<food.name.count, id: \.self) { foodIndex in
                            NavigationLink {
                                // destination
                                SeolahDetailView(food: "\(food.name[foodIndex])", image: "\(food.imageUrl[foodIndex])")
                                
                            } label: {
                                Text("\(food.name[foodIndex])")
                            }
                        }
                        
                    } header: {
                        Text("\(food.kind)")
                    }
                }
                .navigationTitle("점심 메뉴 추천")
            }
            
        }
        .listStyle(DefaultListStyle())
    }
}


struct SeolahView_Previews: PreviewProvider {
    static var previews: some View {
        SeolahView()
    }
}
