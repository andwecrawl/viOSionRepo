//
//  ProductImage.swift
//  viosionNavigationPractice
//
//  Created by 윤경환 on 2023/06/29.
//

import SwiftUI

struct ProductImage: View {
    var body: some View {
            Image("crimecity")
                .resizable()
                .scaledToFill()
                .frame(width: 120)
                .clipped()
    }
}

struct ProductImage_Previews: PreviewProvider {
    static var previews: some View {
        ProductImage()
    }
}
