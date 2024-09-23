//
//  ProductDetailPresenter.swift
//  ChallengeMercadoPago
//
//  Created by Matias Palmieri on 22/09/2024.
//

import Foundation
import UIKit

final class ProductDetailPresenter: ObservableObject {
    @Published var vehicle: DeportiveCars
    
    init(vehicle: DeportiveCars) {
        self.vehicle = vehicle
    }
    
    func navigateToLink(url: String) {
        if let url = URL(string: url) {
            UIApplication.shared.open(url)
        }
    }
}
