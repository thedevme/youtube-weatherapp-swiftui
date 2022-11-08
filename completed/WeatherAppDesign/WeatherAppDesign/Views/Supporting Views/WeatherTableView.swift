//
//  WeatherTableView.swift
//  WeatherAppDesign
//
//  Created by Craig Clayton on 11/6/22.
//

import SwiftUI

struct WeatherTableView: View {
    var titleColor: Color = .white
    var dataColor: Color = .white
    var dividerColor: Color = .white
    
    var body: some View {
        VStack {
            HStack(alignment: .bottom) {
                HStack {
                    Text("Humidity")
                        .foregroundColor(titleColor)
                        .font(.custom(.regular, size: 18))
                    Spacer()
                    Text("80%")
                        .foregroundColor(dataColor)
                        .font(.custom(.bold, size: 18))
                }
                .padding(.trailing, 5)
                
                Divider()
                    .overlay(
                        dividerColor.frame(width: 1, height: 50)
                    )
                    .offset(y: 8)
                
                HStack {
                    Text("UV index")
                        .foregroundColor(titleColor)
                        .font(.custom(.regular, size: 18))
                    Spacer()
                    Text("4/10")
                        .foregroundColor(dataColor)
                        .font(.custom(.bold, size: 18))
                }
                .padding(.trailing, 5)
            }
            
            Divider()
                .frame(height: 1)
                .overlay(dividerColor)
            
            HStack {
                HStack {
                    Text("Rain")
                        .foregroundColor(titleColor)
                        .font(.custom(.regular, size: 18))
                    Spacer()
                    Text("89%")
                        .foregroundColor(dataColor)
                        .font(.custom(.bold, size: 18))
                }
                .padding(.trailing, 5)
                
                Divider()
                    .overlay(
                        dividerColor.frame(width: 1, height: 50)
                    )
                    .offset(y: -8)
                
                HStack {
                    Text("Wind")
                        .foregroundColor(titleColor)
                        .font(.custom(.regular, size: 18))
                    Spacer()
                    Text("25 km/h")
                        .foregroundColor(dataColor)
                        .font(.custom(.bold, size: 18))
                }
                .padding(.trailing, 5)
            }
            .padding(.top, 5)
        }
        .foregroundColor(.white)
    }
}

struct WeatherTableView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherTableView()
            .background(Color.baseDarkBlue)
            .previewLayout(.fixed(width: 400, height: 150))
    }
}
