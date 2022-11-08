//
//  TenDayForecastView.swift
//  WeatherAppDesign
//
//  Created by Craig Clayton on 11/7/22.
//

import SwiftUI

struct TenDayForecastView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("10 day forecast")
                .font(.custom(.bold, size: 24))
                .foregroundColor(.baseDarkBlue)
            
            VStack {
                ForEach(0..<10) { item in
                    HStack {
                        HStack {
                            Text("28 May,")
                                .font(.custom(.bold, size: 16))
                            Text("Sun")
                                .foregroundColor(.baseLightGrey)
                                .font(.custom(.regular, size: 16))
                        }
                        .foregroundColor(.baseDarkBlue)
                        
                        Spacer()
                        
                        Image("rainy")
                            .resizable()
                            .frame(width: 50, height: 50)
                        
                        Spacer()
                        
                        HStack(alignment: .firstTextBaseline, spacing: 3) {
                            Text("21")
                                .foregroundColor(.baseDarkBlue)
                                .font(.custom(.bold, size: 16))
                            Text("15°C")
                                .foregroundColor(.baseLightGrey)
                                .font(.custom(.regular, size: 14))
                        }
                        
                        Spacer()
                        
                        Text("Rainy")
                            .foregroundColor(.baseDarkBlue.opacity(0.8))
                            .font(.custom(.regular, size: 16))
                    }
                }
            }
        }
        .padding(.top, 25)
        .padding(.horizontal, 20)
    }
}

struct TenDayForecastView_Previews: PreviewProvider {
    static var previews: some View {
        TenDayForecastView()
    }
}
