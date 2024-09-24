//
//  APIRequest.swift
//  ChallengeMercadoPago
//
//  Created by Matias Palmieri on 23/09/2024.
//

import Foundation
import Alamofire

public protocol APIRequest {
    var baseURL: String { get }
    var path: String { get }
    var method: HTTPMethod { get }
    var parameters: [String: Any]? { get }
}

struct VehicleRequest: APIRequest {
    let baseURL: String = "https://api.mercadolibre.com"
    let path: String = "/sites/MLA/search"
    let method: Alamofire.HTTPMethod = .get
    let parameters: [String : Any]? = ["category": "MLA1745"]
}
