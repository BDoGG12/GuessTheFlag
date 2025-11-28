//
//  FlagImage.swift
//  GuessTheFlag
//
//  Created by Ben Do on 11/27/25.
//

import SwiftUI

struct FlagImage: View {
    var flagName: String
    var body: some View {
        Image(flagName)
            .frame(maxWidth: .infinity)
            .padding(.vertical, 20)
            .background(.regularMaterial)
            .clipShape(.rect(cornerRadius: 20))
    }
}

#Preview {
    FlagImage(flagName: "Nigeria")
}
