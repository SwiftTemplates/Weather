//
//  WeatherCover.swift
//  Weather
//
//  Created by Justin Bush on 2021-07-08.
//

import SwiftUI

struct WeatherCover: View {
    var forDay: String
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .top) {
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .fill(LinearGradient(gradient: Gradient(colors: [.purple, .blue]), startPoint: .top, endPoint: .bottom))
                    .frame(width: geometry.size.width, height: 200)
                    .overlay(WeatherCoverData(forDay: forDay))
            }
            .frame(height: 200)
        }
    }
}

struct WeatherCoverData: View {
    var forDay: String //= "Today", "Tomorrow", "7 Day"
    @State var title: String = "Clear Night Sky, Full Moon"
    @State var icon: String = "moon"
    var temps = "24º   |   23º   |   21º   |   19º   |   18º"
    
//    if forDay == "Tomorrow" {
//        title = "Sunny & Clear"
//        temps = "30º   |   30º   |   30º   |   30º   |   30º"
//    }
    
    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding()
            }
            HStack {
                Image(systemName: icon)
                    .foregroundColor(.white)
                    .font(.system(size: 40))
                    .padding()
            }
            HStack {
                Text(temps)
                    .foregroundColor(.white)
                    .padding()
            }
        }
        .frame(height: 200)
    }
}

struct WeatherCover_Previews: PreviewProvider {
    static var previews: some View {
        WeatherCover(forDay: "Today")
    }
}
