//
//  ContentView.swift
//  Instagram_Home
//
//  Created by Stanley Pan on 2021/12/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 0) {
            Header()
            
            ScrollView(.vertical, showsIndicators: false) {
                Stories()
                
                Divider()
                
                UserPost()
                
                UserPost(userImage: "dog", userDescription: "Almost 2 years old, I love her so much.")
            }
            
            TabBar()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Header: View {
    var body: some View {
        HStack {
            Image("logo")
            
            Spacer()
            
            HStack(spacing: 20) {
                Image("add")
                Image("heart")
                Image("messenger")
            }
        }
        .padding(.horizontal, 15)
        .padding(.vertical, 3)
    }
}

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

struct Stories: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 15) {
                Story()
                Story(userImage: "profile2", userName: "Meng To")
                Story(userImage: "profile3", userName: "Akson")
                Story(userImage: "profile4", userName: "Steph")
                Story(userImage: "profile5", userName: "Sam")
                Story(userImage: "profile6", userName: "Dara")
                Story(userImage: "profile7", userName: "Sourany")
                Story(userImage: "profile8", userName: "Pom")
            }
            .padding(.horizontal, 8)
        }
        .padding(.vertical, 10)
    }
}

struct PostHeader: View {
    var body: some View {
        HStack {
            HStack {
                Image("profile")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .cornerRadius(50)
                
                Text("Willie Yam")
                    .font(.caption)
                    .fontWeight(.bold)
            }
            
            Spacer()
            
            Image("more")
        }
        .padding(.vertical, 10)
        .padding(.horizontal, 8)
    }
}

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

struct TabBar: View {
    var body: some View {
        VStack(spacing: 0) {
            Divider()
            
            HStack {
                Image("home")
                
                Spacer()
                
                Image("search")
                
                Spacer()
                
                Image("reels")
                
                Spacer()
                
                Image("shop")
                
                Spacer()
                
                Image("profile")
                    .resizable()
                    .frame(width: 21, height: 21)
                    .cornerRadius(50)
            }
            .padding(.horizontal, 25)
            .padding(.top, 10)
        }
    }
}
