//
//  ContentView.swift
//  WeatherAppDesign
//
//  Created by Craig Clayton on 11/3/22.
//

import SwiftUI

struct ContentView: View {
    let gradient = Gradient(stops: [
        .init(color: .baseBlue, location: 0.15),
        .init(color: .baseOffWhite, location: 0.4),
        .init(color: .white, location: 0.95)
    ])
    
    var body: some View {
        ZStack(alignment: .top) {
            Rectangle().fill(Color.baseBlue)
                .frame(height: 500)
                .edgesIgnoringSafeArea(.top)
                
            ScrollView {
                VStack {
                    HeaderView()
                    WeatherTableView()
                        .padding(.horizontal, 20)
                    BihourlyView()
                    NextDayForecastView()
                    WeatherTableView(titleColor: .baseLightBlue, dataColor: .baseDarkBlue, dividerColor: .baseLightGrey)
                        .padding(20)
                    TenDayForecastView()
                }
                .background(background)
            }
        }
    }
    
    var background: some View {
        LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
