//
//  ContentView.swift
//  Weather
//
//  Created by Justin Bush on 2021-07-08.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            HomeView()
                .navigationTitle("Your Forecast")
                .toolbar {
                    ToolbarItemGroup(placement: .navigationBarLeading) {
                        Text("July 30, 2021")
                            .font(.subheadline)
                            .fontWeight(.black)
                            .foregroundColor(.secondary)
                    }
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
