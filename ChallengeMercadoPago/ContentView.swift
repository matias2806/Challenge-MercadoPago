//
//  ContentView.swift
//  ChallengeMercadoPago
//
//  Created by Matias Palmieri on 20/09/2024.
//

import Alamofire
import SwiftUI

struct ContentView: View {
    var body: some View {
        HomeView(presenter: HomePresenter(vehicleService: VehicleService()))
    }
}

#Preview {
    ContentView()
}
