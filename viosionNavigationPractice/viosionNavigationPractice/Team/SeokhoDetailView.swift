//
//  SeokhoDetailView.swift
//  viosionNavigationPractice
//
//  Created by 정유진 on 2023/06/29.
//

import SwiftUI


//switch문을 사용해서 도수와 어싱크유알엘을 사용해서 상단에 이미지를 채우고 싶다

func switchImage(name: String) -> String {
    
    
    switch name {
    case "참이슬 fresh":
        return "https://i.namu.wiki/i/WTUZT9up4j_kC7RcQpyiJg5QYBAcNvMlItXhE2RtG8x2RptvsGc_6R2Hia262qk2jO3KiytuQrNVqOjLEYpx8OYS7od_eRxRCNT8Wroy0wjKOEqKxhvRiguHuGaCqFl54vhX_d2rQaDWlExhSV6hHA.webp"
    case "참이슬 오리지널":
        return "https://i.namu.wiki/i/zerBrO9FgWCZvWZqKz8jvIvE5nfgC4VRymNf1Op1PtiwpCCu0XdDd_0uF55Aq5dlO9QW60nE9KnHWmBihgLXjIXENZYXYXXaIKM1vWbyf75XvfyFECDGIkWrDlvO8Y2i4bJcejS0bDZBCQXjjelaeQ.webp"
    case "진로":
        return "https://i.namu.wiki/i/nrxp110O03mGnYPInfh2WOkOUnJvkOgI5VNy1nQxNi4tGZyuSAerxYe_ppdQD49M2V24PfWrY0Wb8cXpfIH4aT3PGg_vcP-f0TAJ_tigEcVILQ7-ILXKCzYv783Q2txtfsDqMbr7uJ0m7bdmx_lbdA.webp"
    case "처음처럼":
        return "https://company.lottechilsung.co.kr/common/images/product_view0201_bh2.jpg"
    case "새로":
        return "https://wimg.mk.co.kr/news/cms/202304/05/news-p.v1.20230405.735928b084fa4796baedb9963352b7a0_P1.png"
    case "시원":
        return "https://db.kookje.co.kr/news2000/photo/2013/1226/20131226.22016205424i1.jpg"
    case "좋은데이":
        return "https://cdn.imweb.me/thumbnail/20220617/d8bc31e211620.png"
    case "깔라만시":
        return "https://cdn.thekpm.com/news/photo/201809/13315_12258_0956.jpg"
    default:
        break
    }
    return ""
}


struct SeokhoDetailView: View {
    var brand: Int
    var brandURL: String
    
    var body: some View {
        
        VStack {
            AsyncImage(url: URL(string: brandURL)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            } placeholder: {
                ProgressView()
            }.padding()
                .frame(height: 100)
            
            
            
            
            List (alcohol[brand].name, id: \.self) { name in
                
                HStack {
                    AsyncImage(url: URL(string: switchImage(name: name))) {
                        image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } placeholder: {
                        ProgressView()
                    }.padding()
                        .frame(width: 100, height: 100)
                    
                    
                    Text("\(name)")
                        .font(.title3)
                }
            }.listStyle(.grouped)
        }
    }
}

struct SeokhoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        SeokhoDetailView(brand: 0, brandURL: "https://www.hitejinro.com/assets/images/company/down_img_3.jpg")
    }
}
