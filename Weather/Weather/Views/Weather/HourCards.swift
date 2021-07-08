//
//  HourCards.swift
//  Weather
//
//  Created by Justin Bush on 2021-07-08.
//

import SwiftUI

struct HourCards: View {
    let bgColor = Color(red: 0.39, green: 0.31, blue: 0.94)
    
    var icon: String
    var temp: String
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .top) {
                RoundedRectangle(cornerRadius: 15, style: .continuous)
                    .fill(bgColor)
                    .frame(width: 50, height: 100)
                    .overlay(HourCardsData(icon: icon, temp: temp))
            }
            .frame(height: 100)
        }
    }
}

struct HourCardsData: View {
    var icon: String //= "moon"
    var temp: String //= "24º"
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: icon)
                    .foregroundColor(.white)
                    .padding()
            }
            
            HStack {
                Text(temp)
                    .foregroundColor(.white)
                    .padding(.bottom, 10)
            }
        }
        .frame(height: 100)
    }
}

struct HourCards_Previews: PreviewProvider {
    static var previews: some View {
        HourCards(icon: "moon", temp: "24º")
    }
}
