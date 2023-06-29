//
//  KanghoView.swift
//  viosionNavigationPractice
//
//  Created by 윤경환 on 2023/06/29.
//

import SwiftUI

struct KanghoView: View {
    var body: some View {
        NavigationStack {
            List(0..<pokemons.count, id: \.self) { index in
                NavigationLink {
                    KanghoDetailView(index: index, pokemon: "\(pokemons[index].name)")
                } label: {
                    AsyncImage(url: URL(string: "\(pokemons[index].image)")){ image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())
                    } placeholder: {
                        ProgressView()
                    }
                    Text("\(pokemons[index].name)")
                }

                
            }
            .navigationTitle("🔥 💧 🌱 타입 포켓몬")
        }
    }
}

struct KanghoView_Previews: PreviewProvider {
    static var previews: some View {
        KanghoView()
    }
}
