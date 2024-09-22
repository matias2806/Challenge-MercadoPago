//
//  HomePresenter.swift
//  ChallengeMercadoPago
//
//  Created by Matias Palmieri on 21/09/2024.
//

import Foundation

final class HomePresenter: ObservableObject {
    @Published var vehicles: [DeportiveCars] = []
    @Published var isLoading = false
    @Published var error: String?

    private let vehicleService: VehicleServiceProtocol

    init(vehicleService: VehicleServiceProtocol) {
        self.vehicleService = vehicleService
        fetchVehicles()
    }
    
    func fetchVehicles() {
        isLoading = true
        vehicleService.fetchVehicles { [weak self] result in
            DispatchQueue.main.async {
                self?.isLoading = false
                switch result {
                case .success(let vehicles):
                    self?.vehicles = vehicles
                case .failure(let error):
                    self?.error = error.localizedDescription
                }
            }
        }
    }
}
