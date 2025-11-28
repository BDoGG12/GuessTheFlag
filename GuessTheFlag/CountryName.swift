//
//  CountryName.swift
//  GuessTheFlag
//
//  Created by Ben Do on 11/27/25.
//

import SwiftUI

struct CountryName: View {
    var countryName: String
    var body: some View {
        Text("Tap the flag of")
            .foregroundStyle(.white)
            .font(.subheadline.weight(.heavy))
        Text(countryName)
            .font(.largeTitle.weight(.semibold))
            .foregroundStyle(.white)
    }
}

#Preview {
    CountryName(countryName: "Poland")
}
