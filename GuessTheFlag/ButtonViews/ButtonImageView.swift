//
//  ButtonImageView.swift
//  GuessTheFlag
//
//  Created by Ben Do on 11/25/25.
//

import SwiftUI

struct ButtonImageView: View {
    var body: some View {
        VStack {
            Button("Edit", systemImage: "pencil") {
                print("Edit has been pressed")
            }
            .buttonStyle(.bordered)
            .tint(.blue)
            
            Button {
                print("New edit button is pressed")
            } label: {
                Label("Edit", systemImage: "pencil")
                    .padding()
                    .foregroundStyle(.white)
                    .background(.red)
            }
            .buttonStyle(.borderedProminent)
            


        }
    }
}

#Preview {
    ButtonImageView()
}
