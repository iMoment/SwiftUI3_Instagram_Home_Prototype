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
        VStack(spacing: 10) {
            SearchInput(searchText: searchText)
                .padding(.horizontal, 16)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 8.0) {
                    SearchLabel(labelText: "SwiftUI3")
                    SearchLabel(labelText: "Xcode 13.2")
                    SearchLabel(labelText: "iOS 15")
                    SearchLabel(labelText: "WWDC 2022")
                    SearchLabel(labelText: "Developer")
                    SearchLabel(labelText: "MVVM")
                }
                .padding(.horizontal, 16)
                .frame(width: .infinity, height: 38)
            }
            
            Spacer()
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(searchText: "")
    }
}
