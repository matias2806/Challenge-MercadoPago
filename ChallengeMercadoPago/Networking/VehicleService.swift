//
//  VehicleService.swift
//  ChallengeMercadoPago
//
//  Created by Matias Palmieri on 21/09/2024.
//

import Foundation
import Alamofire

enum FetchVehiclesError: Error {
    case networkError(AFError)
    case decodingError(Error)
    case invalidResponse
}

protocol VehicleServiceProtocol {
    func fetchVehicles(request: APIRequest, completion: @escaping (Result<[DeportiveCars], FetchVehiclesError>) -> Void)
}

final class VehicleService: VehicleServiceProtocol {
    
    func fetchVehicles(request: APIRequest, completion: @escaping (Result<[DeportiveCars], FetchVehiclesError>) -> Void) {
        AF.request(request.baseURL + request.path, method: request.method, parameters: request.parameters)
            .responseDecodable(of: ProductResponse.self) { response in
                switch response.result {
                case .success(let productResponse):
                    let vehicles = self.mapProductResponseToDeportiveCars(productResponse)
                    completion(.success(vehicles))
                case .failure(let error):
                    completion(.failure(self.handleError(error)))
                }
            }
    }
    
    private func handleError(_ error: AFError) -> FetchVehiclesError {
        switch error {
        case .responseSerializationFailed(let reason):
            print("Error de serialización: \(reason)")
            return .decodingError(error)
        case .invalidURL(_):
            print("URL inválida")
            return .networkError(error)
        case .responseValidationFailed(let reason):
            print("Error de validación: \(reason)")
            return .invalidResponse
        default:
            print("Otro error de Alamofire: \(error)")
            return .networkError(error)
        }
    }
    
    private func mapProductResponseToDeportiveCars(_ productResponse: ProductResponse) -> [DeportiveCars] {
        return productResponse.results.map { result in
            DeportiveCars(
                id: result.id,
                title: result.title,
                condition: result.condition,
                thumbnailID: result.thumbnailID,
                catalogProductID: result.catalogProductID,
                listingTypeID: result.listingTypeID,
                sanitizedTitle: result.sanitizedTitle,
                permalink: result.permalink,
                buyingMode: result.buyingMode,
                siteID: result.siteID,
                categoryID: result.categoryID,
                domainID: result.domainID,
                thumbnail: result.thumbnail,
                currencyID: result.currencyID,
                orderBackend: result.orderBackend,
                price: result.price,
                originalPrice: result.originalPrice,
                salePrice: result.salePrice,
                availableQuantity: result.availableQuantity,
                officialStoreID: result.officialStoreID,
                useThumbnailID: result.useThumbnailID,
                acceptsMercadopago: result.acceptsMercadopago,
                shipping: result.shipping,
                stopTime: result.stopTime,
                seller: result.seller,
                attributes: result.attributes,
                location: result.location,
                sellerContact: result.sellerContact,
                installments: result.installments,
                winnerItemID: result.winnerItemID,
                catalogListing: result.catalogListing,
                discounts: result.discounts,
                promotions: result.promotions,
                inventoryID: result.inventoryID,
                officialStoreName: result.officialStoreName
            )
        }
    }
}
