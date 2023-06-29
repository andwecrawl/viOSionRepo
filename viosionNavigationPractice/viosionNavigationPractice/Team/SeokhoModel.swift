//
//  SeokhoModel.swift
//  viosionNavigationPractice
//


import Foundation


struct Alcohol: Identifiable {
 
    let id: UUID = UUID()
    var brand: String
    var name: [String]
    var url: String
    
}

let alcohol: [Alcohol] = [
    Alcohol(brand: "진로", name: ["참이슬 fresh", "참이슬 오리지널", "진로"], url: "https://www.hitejinro.com/assets/images/company/down_img_3.jpg"),
    Alcohol(brand: "롯데칠성", name: ["처음처럼", "새로", "시원"], url: "https://company.lottechilsung.co.kr/common/images/logo.png"),
    Alcohol(brand: "무학", name: ["좋은데이", "깔라만시"], url: "https://img.hankyung.com/photo/202010/AKR20201005096300052_01_i.jpg"),
]


//에자일 방식 일단 구축을 하고 수정을 한다
//뒤에 추가를 한다면 type으로 소주 맥주 타입을 나누기도하고 더욱 많은 브랜드 들을 추가 시켜보겠다.
