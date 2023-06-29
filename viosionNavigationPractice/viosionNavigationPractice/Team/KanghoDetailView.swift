//
//  KanghoDetailView.swift
//  viosionNavigationPractice
//
//  Created by KangHo Kim on 2023/06/29.
//

import SwiftUI

struct KanghoDetailView: View {
    var index: Int
    var pokemon: String
    var type: String {
        get {
            switch pokemon {
            case "이상해씨", "뚜벅초", "모다피":
                return "🌱 ☠️"
            case "덩쿠리":
                return "🌱"
            case "파이리", "식스테일", "가디", "마그마":
                return "🔥"
            case "꼬부기", "고라파덕", "발챙이", "잉어킹":
                return "💧"
            default:
                return "불명"
            }
        }
    }
    var body: some View {
        List {
            AsyncImage(url: URL(string: "\(pokemons[index].image)")) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            } placeholder: {
                ProgressView()
            }
            Text("번호 : \(pokemons[index].number)")
            Text("타입 : \(type)")
            Text("설명 : \(pokemons[index].info)")
        }
        .navigationTitle("\(pokemon)")
    }
}

struct KanghoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        KanghoDetailView(index: 2, pokemon: "꼬부기")
    }
}
