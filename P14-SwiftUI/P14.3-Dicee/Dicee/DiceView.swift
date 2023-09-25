//
//  DiceView.swift
//  Dicee
//
//  Created by Evgenii Mazrukho on 25.09.2023.
//

import SwiftUI

struct DiceView: View {
    
    let number: Int
    
    var body: some View {
        Image("dice\(number)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}

struct DiceView_Previews: PreviewProvider {
    static var previews: some View {
        DiceView(number: 1)
    }
}
