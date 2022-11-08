//
//  HeaderView.swift
//  WeatherAppDesign
//
//  Created by Craig Clayton on 11/7/22.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("2 Nov, Wednesday")
                        .font(.custom(.regular, size: 18))
                    Text("Miami, FL")
                        .font(.custom(.bold, size: 18))
                }
                
                Spacer()
            }
            .foregroundColor(.white)
            .padding(.horizontal, 20)
            
            Image("rainy")
                .resizable()
                .frame(width: 160, height: 160)
            
            HStack(alignment: .lastTextBaseline) {
                HStack(spacing: 0) {
                    Text("80°")
                        .font(.custom(.bold, size: 100))
                    Text("F")
                        .font(.custom(.regular, size: 100))
                }
                
                Spacer()
                
                VStack(alignment: .leading) {
                    Text("feels like")
                        .font(.custom(.regular, size: 18))
                    HStack(spacing: 0) {
                        Text("80°")
                        Text("F")
                    }
                    .font(.custom(.bold, size: 18))
                }
                
                Spacer()
            }
            .foregroundColor(.white)
            .padding(.horizontal, 20)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
