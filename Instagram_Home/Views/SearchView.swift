//
//  SearchView.swift
//  Instagram_Home
//
//  Created by Stanley Pan on 2022/01/17.
//

import SwiftUI

struct SearchView: View {
    @State var searchText: String
    
    var body: some View {
        VStack(spacing: 0) {
            SearchInput(searchText: searchText)
                .padding(.horizontal, 16)
            
            Spacer()
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(searchText: "")
    }
}
