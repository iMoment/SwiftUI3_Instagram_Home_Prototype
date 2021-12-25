//
//  Story.swift
//  Instagram_Home
//
//  Created by Stanley Pan on 2021/12/25.
//

import SwiftUI

struct Story: View {
    var userImage: String = "profile"
    var userName: String = "Willie Yam"
    
    var body: some View {
        VStack {
            VStack {
                Image(userImage)
                    .resizable()
                    .frame(width: 60, height: 60)
                    .cornerRadius(50)
            }
            .overlay(
                Circle()
                    .stroke(LinearGradient(colors: [.red, .purple, .red, .orange, .yellow, .orange], startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 2.3)
                    .frame(width: 68, height: 68)
            )
            .frame(width: 70, height: 70)
            
            Text(userName)
                .font(.caption)
        }
    }
}

struct Story_Previews: PreviewProvider {
    static var previews: some View {
        Story()
    }
}
