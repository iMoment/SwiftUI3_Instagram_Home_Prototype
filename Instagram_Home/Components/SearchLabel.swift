//
//  SearchLabel.swift
//  Instagram_Home
//
//  Created by Stanley Pan on 2022/01/17.
//

import SwiftUI

struct SearchLabel: View {
    var labelText: String = "Design"
    
    var body: some View {
        Text(labelText)
            .font(.caption)
            .fontWeight(.bold)
            .padding(.horizontal, 24)
            .padding(.vertical, 10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.secondary, lineWidth: 1)
            )
    }
}

struct SearchLabel_Previews: PreviewProvider {
    static var previews: some View {
        SearchLabel()
    }
}
