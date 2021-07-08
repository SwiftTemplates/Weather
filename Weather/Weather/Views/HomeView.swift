//
//  HomeView.swift
//  Weather
//
//  Created by Justin Bush on 2021-07-08.
//

import SwiftUI

struct HomeView: View {
    @State private var selectedDay = "Today"
    var days = ["Today", "Tomorrow", "7 Day"]
    
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    // Switch
                    Picker(selection: $selectedDay, label: Text("Select a day or range")) {
                        ForEach(days, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                .padding()
                
                HStack {
                    // Title
                    Text("\(selectedDay)")
                        .font(.title)
                        .fontWeight(.semibold)
                }
                .padding()
                
                HStack {
                    // Cover
                    WeatherCover(forDay: selectedDay)
                        .frame(height: 200)
                        .padding()
                }
                
                HStack {
                    // Hourly
                    ForEach(1..<5) { index in
                        HourCards(icon: "moon", temp: "24º")
                            .frame(height: 100)
                            .padding()
                    }
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
