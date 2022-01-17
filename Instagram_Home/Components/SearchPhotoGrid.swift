//
//  SearchPhotoGrid.swift
//  Instagram_Home
//
//  Created by Stanley Pan on 2022/01/17.
//

import SwiftUI

struct SearchPhotoGrid: View {
    var images: [String] = [
        "profile",
        "profile2",
        "profile3",
        "profile4",
        "profile5",
        "profile6",
        "profile7",
        "profile8"
    ]
    
    let screen = UIScreen.main.bounds
    
    var columnGrid: [GridItem] = [GridItem(.flexible(), spacing: 1), GridItem(.flexible(), spacing: 1), GridItem(.flexible(), spacing: 1)]
    
    var body: some View {
        LazyVGrid(columns: columnGrid, spacing: 1) {
            ForEach(0...44, id: \.self) {
                Image(images[$0 % images.count])
                    .resizable()
                    .scaledToFill()
                    .frame(width: (screen.width / 3) - 1, height: (screen.width / 3) - 1)
                    .clipped()
            }
        }
    }
}

struct SearchPhotoGrid_Previews: PreviewProvider {
    static var previews: some View {
        SearchPhotoGrid()
    }
}
