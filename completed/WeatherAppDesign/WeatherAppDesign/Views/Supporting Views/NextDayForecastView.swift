//
//  NextDayForecastView.swift
//  WeatherAppDesign
//
//  Created by Craig Clayton on 11/7/22.
//

import SwiftUI

struct NextDayForecastView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Tomorrow")
                    .font(.custom(.bold, size: 18))
                    .foregroundColor(.baseDarkBlue)
                
                VStack(alignment: .leading, spacing: 0) {
                    Text("2 Nov")
                    Text("Wednesday")
                }
                .foregroundColor(.baseLightGrey)
                .font(.custom(.regular, size: 14))
            }
            Spacer()
            Image("rainy")
                .resizable()
                .frame(width: 150, height: 150)
            Spacer()
            VStack {
                HStack(alignment: .lastTextBaseline, spacing: 0) {
                    Text("96")
                        .font(.custom(.bold, size: 34))
                    Text("80°F")
                        .font(.custom(.regular, size: 14))
                }
                .foregroundColor(.baseDarkBlue)
                
                Text("Cloudy")
                    .font(.custom(.regular, size: 14))
                    .foregroundColor(.baseLightGrey)
            }
        }
        .padding(.horizontal, 30)
    }
}

struct NextDayForecastView_Previews: PreviewProvider {
    static var previews: some View {
        NextDayForecastView()
    }
}
