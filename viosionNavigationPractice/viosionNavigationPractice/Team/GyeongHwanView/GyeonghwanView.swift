//
//  GyeonghwanView.swift
//  viosionNavigationPractice
//
//  Created by 윤경환 on 2023/06/29.
//

import SwiftUI

struct GyeonghwanView: View {
    
        var body: some View {
            VStack {
                ProductRow()
                ProductRow()
                ProductRow()
                ProductRow()
                
            }
            
        }
    }

struct GyeonghwanView_Previews: PreviewProvider {
    static var previews: some View {
        GyeonghwanView()
    }
}

