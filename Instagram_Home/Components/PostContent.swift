//
//  PostContent.swift
//  Instagram_Home
//
//  Created by Stanley Pan on 2021/12/25.
//

import SwiftUI

struct PostContent: View {
    var userImage: String = "profile"
    
    var body: some View {
        VStack(spacing: 0) {
            Image(userImage)
                .resizable()
                .frame(width: .infinity)
                .aspectRatio(contentMode: .fit)
            
            HStack {
                HStack(spacing: 10) {
                    Image("heart")
                    Image("comment")
                    Image("share")
                }
                
                Spacer()
                
                Image("bookmark")
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 9)
        }
    }
}

struct PostContent_Previews: PreviewProvider {
    static var previews: some View {
        PostContent()
    }
}
