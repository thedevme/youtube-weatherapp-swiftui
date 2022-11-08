//
//  BihourlyView.swift
//  WeatherAppDesign
//
//  Created by Craig Clayton on 11/7/22.
//

import SwiftUI

struct BihourlyView: View {
    var body: some View {
        HStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(0..<12) { index in
                        HStack(alignment: .center) {
                            HStack {
                                Image("rainy")
                                    .resizable()
                                    .frame(width: 48, height: 48)
                            }
                            VStack(alignment: .leading) {
                                Text("80°")
                                    .font(.custom(.bold, size: 14))
                                Text("10:00")
                                    .font(.custom(.regular, size: 14))
                            }
                            .foregroundColor(.baseDarkBlue)
                        }
                        .padding(.horizontal)
                        
                        if index != 11 {
                            Divider()
                                .frame(width: 2)
                                .overlay(Color.baseLightGrey.opacity(0.5))
                        }
                    }
                }
                .padding(.vertical, 5)
                .padding(.leading, 10)
                .background(Color.white)
                .cornerRadius(25, corners: [.topLeft, .bottomLeft])
                .padding(.leading, 20)
            }
        }
        .padding(.top, 40)
        .padding(.bottom, 30)
    }
}

struct BihourlyView_Previews: PreviewProvider {
    static var previews: some View {
        BihourlyView()
    }
}
