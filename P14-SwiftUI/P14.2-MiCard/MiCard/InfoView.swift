//
//  InfoView.swift
//  MiCard
//
//  Created by Evgenii Mazrukho on 25.09.2023.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(height: 50)
            .foregroundColor(.white)
            .shadow(radius: 10)
            .overlay(HStack {
                Image(systemName: imageName)
                Text(text)
            })
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Phone", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
