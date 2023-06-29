//
//  ContentView.swift
//  viosionNavigationPractice
//
//  Created by KangHo Kim on 2023/06/29.
//

import SwiftUI

struct ContentView: View {
    //    let viOSion:  = [
    //        ("윤경환", GyeonghwanView()),
    //        ("김강호", KanghoView()),
    //        ("김효석", HyoseokView()),
    //        ("정석호", SeokhoView()),
    //        ("정설아", SeolahView()),
    //        ("조연희", YeoniView()),
    //    ]
    
    var body: some View {
        NavigationStack {
            List {
                NavigationLink {
                    GyeonghwanView()
                } label: {
                    Text("윤경환")
                }
                
                NavigationLink {
                    KanghoView()
                } label: {
                    Text("김강호")
                }
                
                NavigationLink {
                    HyoseokView()
                } label: {
                    Text("김효석")
                }
                
                NavigationLink {
                    SeokhoView()
                } label: {
                    Text("정석호")
                }
                
                NavigationLink {
                    SeolahView()
                } label: {
                    Text("정설아")
                }
                
                NavigationLink {
                    YeoniView()
                } label: {
                    Text("조연희")
                }
            }
        }
        .navigationTitle("viOSion 팀원들")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
