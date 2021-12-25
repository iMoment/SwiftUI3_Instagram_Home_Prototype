//
//  Stories.swift
//  Instagram_Home
//
//  Created by Stanley Pan on 2021/12/25.
//

import SwiftUI

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

struct Stories_Previews: PreviewProvider {
    static var previews: some View {
        Stories()
    }
}
