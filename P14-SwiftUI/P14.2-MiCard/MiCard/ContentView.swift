//
//  ContentView.swift
//  MiCard
//
//  Created by Evgenii Mazrukho on 24.09.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.41, green: 0.43, blue: 0.88)
            .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Evgenii Mazrukho")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
