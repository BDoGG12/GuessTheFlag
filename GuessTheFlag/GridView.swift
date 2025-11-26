//
//  GridView.swift
//  GuessTheFlag
//
//  Created by Ben Do on 11/24/25.
//

import SwiftUI

struct GridView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Flag 1")
                Text("Flag 2")
                Text("Flag 3")
            }
            
            HStack {
                Text("Flag 4")
                Text("Flag 5")
                Text("Flag 6")

            }
            HStack {
                Text("Flag 7")
                Text("Flag 8")
                Text("Flag 9")

            }
            
        }
    }
}

#Preview {
    GridView()
}
