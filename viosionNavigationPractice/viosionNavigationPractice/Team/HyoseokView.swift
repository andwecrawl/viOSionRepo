//
//  HyoseokView.swift
//  viosionNavigationPractice
//
//  Created by 윤경환 on 2023/06/29.
//

import SwiftUI

struct NBAPlayer: Identifiable {
    let id: UUID = UUID()
    let imageURL: String
    let name: String
    let team: String
    let position: String
    let height: Int
    let weight: Int
    let number: Int
    let statistics: Statistics
}

struct Statistics {
    let pointsPerGame: Double
    let asistsPerGame: Double
    let reboundPerGame: Double
}

let players: [NBAPlayer] = [
    NBAPlayer(
        imageURL: "https://i.namu.wiki/i/H5Lfv8xc22E75FfXbZjhb30artXxqKKIhtFY5eaBplsVwk_3g8O5cRs_GxxZ1m6CIZ9T8R-mDE68qGp-OE_EpQC6Vvt18clva4bpdfuOWV7s-ko4ssaJnzwSpZAsQe5LEqhWSOS2OU4WIHsTEXsczw.webp",
        name: "Joel Embiid",
        team: "PHI",
        position: "C",
        height: 83,
        weight: 280,
        number: 21,
        statistics: Statistics(
            pointsPerGame: 33.1,
            asistsPerGame: 4.2,
            reboundPerGame: 10.2
        )
    ),
    NBAPlayer(
        imageURL: "https://i.namu.wiki/i/Tx9SVmbUArV0TJHsUm8x92_k52YV3TFl9dWbSsgGki39P21TiurhBiZNNpY3npRdIAjboGr4hf6QStWee-7WuG8lvguL6gBwpp5TtIFQpI2gnpDxU3ISfKN0M1AfUtdYlofoLrIMZ7TnBA-vGTziDg.webp",
        name: "Luka Doncic",
        team: "DAL",
        position: "G",
        height: 79,
        weight: 218,
        number: 77,
        statistics: Statistics(
            pointsPerGame: 32.4,
            asistsPerGame: 8.0,
            reboundPerGame: 8.6
        )
    ),
    NBAPlayer(
        imageURL: "https://i.namu.wiki/i/K9wywuITXGl0OKNP6DRpME29OdPtCmXXxMs8lZfFXvnxhYGSLbpKn9ePrG6B9qgQXJr0dnHzvHdp951mSJrX8Xx2l50R6mgccboNSgeDyYFPEdOoQGqGpH7GQJevLnOZ5VpPntSpEUStEQaFF_siYw.webp",
        name: "Damian Lillard",
        team: "POR",
        position: "G",
        height: 75,
        weight: 195,
        number: 0,
        statistics: Statistics(
            pointsPerGame: 32.2,
            asistsPerGame: 7.3,
            reboundPerGame: 4.8
        )
    ),
    NBAPlayer(
        imageURL: "https://i.namu.wiki/i/CMRWygKhh3vo0krJJMCFVlap1Ko8H-exeKueSu7VPI3--sSBv051GiCdfxtLyHjTOboZwdtJfYYqDU8OqdpUVfKj9rUvrBzdkcxQgsgvWaeANXWqljvo8RJGrbbneRHThUD2QYhzlkbftzggUAE7gw.webp",
        name: "Giannis Antetokounmpo",
        team: "MIL",
        position: "F",
        height: 83,
        weight: 242,
        number: 34,
        statistics: Statistics(
            pointsPerGame: 31.1,
            asistsPerGame: 5.7,
            reboundPerGame: 11.8
        )
    ),
    NBAPlayer(
        imageURL: "https://i.namu.wiki/i/9XCQoxXEwgFmJTfQ0Ik7OM3_qqzr4tYGktGXUjTwc2wbB4oyMjZ54JJWRrTZ1oUV5yM9EFklHo7_bOuaDU4gmiT_cKQwIpTjr7WlvV_DxiBZsj69g7NATO9G3A8-mMH07QTGTbxijCFHRjuLZYXchg.webp",
        name: "Jayson Tatum",
        team: "BOS",
        position: "F",
        height: 80,
        weight: 210,
        number: 0,
        statistics: Statistics(
            pointsPerGame: 30.1,
            asistsPerGame: 4.6,
            reboundPerGame: 8.8
        )
    ),
    NBAPlayer(
        imageURL: "https://i.namu.wiki/i/xHLn2EcWLyOC0knaQboUBii8HpO_3P9f99kpjFmkPYbLyw8rTOiA2N45Wfj-Y1oWFrcH8oVWkQqNr9IH4vyCP_4ii9LTBWBJPiznd87yws0OY_I5dyrGoaiVmcDsJwEwXEGd6mljg7IiX1xfXUv27Q.webp",
        name: "Stephen Curry",
        team: "GS",
        position: "G",
        height: 75,
        weight: 185,
        number: 30,
        statistics: Statistics(
            pointsPerGame: 29.4,
            asistsPerGame: 6.3,
            reboundPerGame: 6.1
        )
    ),
    NBAPlayer(
        imageURL: "https://i.namu.wiki/i/5XIF1FQMzKAmph7GoqRlhjvwSexo4O2M3gMZJkQsU4DLOdNtLPwj_wJkinVQzgPoGrf92KFjC3QTseVE6vOjCq2eCxAzX4UqjoPN6NPtQXIgpRTn7m7h0_jcQseUVj6vaMKGPJqxR_In9n32YmmnmQ.webp",
        name: "Kevin Durant",
        team: "PHO",
        position: "F",
        height: 81,
        weight: 240,
        number: 7,
        statistics: Statistics(
            pointsPerGame: 29.1,
            asistsPerGame: 5.0,
            reboundPerGame: 6.7
        )
    ),
    NBAPlayer(
        imageURL: "https://i.namu.wiki/i/1zJ2mJBF7Ne7hVviRR_2YX0osHyFCAuJknXm58nyiqFGoVf1KdAxZpdlQ72WFlIsg8bYXu6AOvzn3a7_lmBQSQcpC1HSma8gJJSr32XshU0zHG4APmvEG3ouHo-rVo_nxY4rEM8BXYMp4r8zHKwtDg.webp",
        name: "LeBron James",
        team: "LAL",
        position: "F",
        height: 81,
        weight: 250,
        number: 6,
        statistics: Statistics(
            pointsPerGame: 28.9,
            asistsPerGame: 6.8,
            reboundPerGame: 8.3
        )
    ),
    NBAPlayer(
        imageURL: "https://i.namu.wiki/i/1xMXwlO7P3WPpADYXri5nNMhXna92TuV_zaIcCGrp_5cGYaITCy7N5SQ_JOEmnsnmU_inrhqPsaXgQzEKaYmQr1PGShBvKJDhPA3W0xlMi09xbzAAV6NrMVC2MAg1TcdR7buai1VfooPyYshOtbzCA.webp",
        name: "Donovan Mitchell",
        team: "CLE",
        position: "G",
        height: 75,
        weight: 215,
        number: 45,
        statistics: Statistics(
            pointsPerGame: 28.3,
            asistsPerGame: 4.4,
            reboundPerGame: 4.3
        )
    ),
    NBAPlayer(
        imageURL: "https://i.namu.wiki/i/LWzOHCGUkdvDBoMZj-131Rx6WdHLcGSCEKPEfxKYwIk9kKVsmkU6GUz9XkhlY2U2oSVaLVJCn2S-P0v0E4pyZWb8o0oSVQW7JX_skB603fsiwIIurizEpQfpf92KFOz76scM2j4jpOVoZRdtO9PF_g.webp",
        name: "Devin Booker",
        team: "PHO",
        position: "G",
        height: 78,
        weight: 206,
        number: 1,
        statistics: Statistics(
            pointsPerGame: 27.8,
            asistsPerGame: 5.5,
            reboundPerGame: 4.5
        )
    ),
    NBAPlayer(
        imageURL: "https://i.namu.wiki/i/KVuTRMvhXkx7NDOF8fsHa9YaPJBrJzYmKotLhhaSYS4rN5sjq6lkNSjIWKL4saSd--5blGG87W9TTPH1hGQiAIOC7_hYd2yf202rH3Jeh0imeBqT4DTJp9H5l2MiNZvXt9j1k8ojKP1K9IdKWnPpzg.webp",
        name: "Kyrie Irving",
        team: "DAL",
        position: "G",
        height: 75,
        weight: 195,
        number: 11,
        statistics: Statistics(
            pointsPerGame: 27.1,
            asistsPerGame: 5.5,
            reboundPerGame: 5.1
        )
    )
]

struct HyoseokView: View {
    
    @State var showSections: Bool = false
    @State var sectionLabel: String = "포지션별 보기"
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                HStack {
                    Spacer()
                    Button {
                        if !showSections {
                            showSections = true
                            sectionLabel = "전체 보기"
                        } else {
                            showSections = false
                            sectionLabel = "포지션별 보기"
                        }
                    } label: {
                        Text(sectionLabel)
                    }
                    .padding(.trailing)
                }
                
                if showSections {
                    ScrollView {
                        Section(header: Text("Guard")) {
                            List(players) { player in
                                if player.position == "G" {
                                    PlayerListView(player: player)
                                }
                            }
                            .listStyle(.plain)
                            .frame(height: 400)
                        }
                        
                        
                        Section(header: Text("Forward")) {
                            List(players) { player in
                                if player.position == "F" {
                                    PlayerListView(player: player)
                                }
                            }
                            .listStyle(.plain)
                            .frame(height: 200)
                        }
                        .padding(.top)
                        
                        Section(header: Text("Center")) {
                            List(players) { player in
                                if player.position == "C" {
                                    PlayerListView(player: player)
                                }
                            }
                            .listStyle(.plain)
                            .frame(height: 100)
                        }
                        .padding(.top)

                    }
                    .padding()

                } else {
                    List(players) { player in
                        PlayerListView(player: player)
                    }
                    .listStyle(.plain)
                    .navigationTitle("NBA Players")
                }
                    
            }
        }
    }
}

struct PlayerDetailView: View {
    
    let player: NBAPlayer
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: player.imageURL)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300)
                    .clipShape(Circle())
            } placeholder: {
                ProgressView()
            }
            .navigationTitle(player.name)
            
            HStack {
                Text("소속: ")
                
                Text("\(player.team)")
            }
            .padding()
            
            Spacer()
        }
        .font(.title3)
    }
}

struct PlayerListView: View {
    
    let player: NBAPlayer
    
    var body: some View {
        NavigationLink {
            PlayerDetailView(player: player)
        } label: {
            HStack {
                AsyncImage(url: URL(string: player.imageURL)) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 60)
                        .clipShape(Circle())
                } placeholder: {
                    ProgressView()
                }
                Text("\(player.name)")
                Spacer()
                Text("\(player.position)")
                    .padding(.trailing)
            }
            
        }
    }
}

struct HyoseokView_Previews: PreviewProvider {
    static var previews: some View {
        HyoseokView()
    }
}
