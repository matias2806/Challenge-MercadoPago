//
//  ProductDetailPresenterTest.swift
//  ChallengeMercadoPagoTests
//
//  Created by Matias Palmieri on 24/09/2024.
//

import XCTest
@testable import ChallengeMercadoPago

final class ProductDetailPresenterTest: XCTestCase {
    
    func test_product_detail_presenter_init() throws {
        
        let decoder = JSONDecoder()
        let mockVehicle = try decoder.decode(DeportiveCars.self, from: deportiveCarMock)
        
        let presenter = ProductDetailPresenter(vehicle: mockVehicle)
        let view = ProductDetailView(presenter: presenter)
        
        XCTAssertEqual(mockVehicle.title, "Ford Fairland Ltd 221 1981")
        XCTAssertEqual(mockVehicle.permalink, "https://auto.mercadolibre.com.ar/MLA-1451190391-ford-fairland-ltd-221-1981-_JM")
        XCTAssertEqual(mockVehicle.thumbnail, "http://http2.mlstatic.com/D_730744-MLA79173210772_092024-I.jpg")
        XCTAssertEqual(mockVehicle.price, 9990)
        XCTAssertEqual(mockVehicle.currencyID, CurrencyIDEnum.usd)
        XCTAssertEqual(mockVehicle.attributes.count, 12)
    }
}
