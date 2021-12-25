//
//  HomeView.swift
//  Instagram_Home
//
//  Created by Stanley Pan on 2021/12/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(spacing: 0) {
            Header()
            
            ScrollView(.vertical, showsIndicators: false) {
                Stories()
                
                Divider()
                
                UserPost()
                
                UserPost(userImage: "dog", userDescription: "Almost 2 years old, I love her so much.")
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
