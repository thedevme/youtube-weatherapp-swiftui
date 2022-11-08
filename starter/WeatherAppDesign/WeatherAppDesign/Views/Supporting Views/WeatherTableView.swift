//
//  WeatherTableView.swift
//  WeatherAppDesign
//
//  Created by Craig Clayton on 11/6/22.
//

import SwiftUI

struct WeatherTableView: View {
    var body: some View {
        Text("Weather Table View")
    }
}

struct WeatherTableView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherTableView()
            .background(Color.baseDarkBlue)
            .previewLayout(.fixed(width: 400, height: 150))
    }
}
