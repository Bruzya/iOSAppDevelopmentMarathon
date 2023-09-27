//
//  ContentView.swift
//  H4XOR News
//
//  Created by Evgenii Mazrukho on 26.09.2023.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                HStack {
                    Text(String(post.points))
                    Text(post.title)
                }
            }
            .navigationTitle("H4X0R NEWS")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//let posts = [
//    Post(id: "1", title: "Hello"),
//    Post(id: "2", title: "Bonjour"),
//    Post(id: "3", title: "Hola"),
//]
