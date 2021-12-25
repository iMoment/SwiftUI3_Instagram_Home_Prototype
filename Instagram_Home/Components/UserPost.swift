//
//  UserPost.swift
//  Instagram_Home
//
//  Created by Stanley Pan on 2021/12/25.
//

import SwiftUI

struct UserPost: View {
    var userImage: String = "profile"
    var userDescription: String = "I miss living in Seoul, South Korea"
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            PostHeader()
            
            PostContent(userImage: userImage)
            
            Text("Liked by Meng To and others")
                .font(.footnote)
                .frame(width: .infinity)
                .padding(.horizontal, 12)
            
            Text(userDescription)
                .font(.footnote)
                .frame(width: .infinity)
                .padding(.horizontal, 12)
            
            HStack {
                HStack(spacing: 7) {
                    Image("profile")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .cornerRadius(50)
                    
                    Text("Add comment...")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                
                Spacer()
                
                HStack {
                    Text("😍")
                    Text("😂")
                    Image(systemName: "plus.circle")
                        .foregroundColor(.secondary)
                }
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 9)
        }
    }
}

struct UserPost_Previews: PreviewProvider {
    static var previews: some View {
        UserPost()
    }
}
