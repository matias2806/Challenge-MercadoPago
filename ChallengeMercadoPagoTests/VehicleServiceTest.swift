//
//  VehicleServiceTest.swift
//  ChallengeMercadoPagoTests
//
//  Created by Matias Palmieri on 23/09/2024.
//

import XCTest
@testable import ChallengeMercadoPago

//class VehicleServiceTest: XCTestCase {
//    var service: VehicleService!
//    var mockSession: MockSession!
//
//    override func setUpWithError() throws {
//        super.setUp()
//        mockSession = MockSession()
//        service = VehicleService(session: mockSession)
//    }
//
//    override func tearDownWithError() throws {
//        service = nil
//        mockSession = nil
//        super.tearDown()
//    }
//
//    func testFetchVehiclesSuccess() async throws {
//        // Simulamos una respuesta exitosa
//        let data = try Data(contentsOf: Bundle.main.url(forResource: "vehicles_response", withExtension: "json")!)
//        mockSession.dataTaskCompletionHandler = { _, _, _ in
//            return (data, HTTPURLResponse(statusCode: 200, httpVersion: nil, headerFields: nil), nil)
//        }
//
//        let expectation = expectation(description: "Fetch vehicles")
//        service.fetchVehicles(request: VehicleRequest()) { result in
//            switch result {
//            case .success(let vehicles):
//                // Verificar que se hayan obtenido los vehículos correctamente
//                XCTAssertEqual(vehicles.count, 2) // Ajusta según tu respuesta de prueba
//            case .failure:
//                XCTFail("Should have succeeded")
//            }
//            expectation.fulfill()
//        }
//        waitForExpectations(timeout: 1, handler: nil)
//    }
//    
//    func testFetchVehiclesNetworkError() async throws {
//        // Simulamos un error de red
//        mockSession.dataTaskCompletionHandler = { _, _, _ in
//            return (nil, nil, NSError(domain: NSURLErrorDomain, code: NSURLErrorNetworkConnectionLost, userInfo: nil))
//        }
//        
//        let expectation = expectation(description: "Fetch vehicles with network error")
//        service.fetchVehicles(request: VehicleRequest()) { result in
//            switch result {
//            case .success:
//                XCTFail("Should have failed")
//            case .failure(let error):
//                // Verificamos que se haya producido un error de red
//                XCTAssertEqual(error.localizedDescription, "The network connection was lost.")
//            }
//            expectation.fulfill()
//        }
//        waitForExpectations(timeout: 1, handler: nil)
//    }
//    
//    func testFetchVehiclesDecodingError() async throws {
//        // Simulamos datos inválidos
//        let data = "invalid data".data(using: .utf8)!
//        mockSession.dataTaskCompletionHandler = { _, _, _ in
//            return (data, HTTPURLResponse(statusCode: 200, httpVersion: nil, headerFields: nil), nil)
//        }
//        
//        let expectation = expectation(description: "Fetch vehicles with decoding error")
//        service.fetchVehicles(request: VehicleRequest()) { result in
//            switch result {
//            case .success:
//                XCTFail("Should have failed")
//            case .failure:
//                // Verificamos que se haya producido un error de decodificación
//                // Aquí puedes verificar el tipo de error específico si lo deseas
//            }
//            expectation.fulfill()
//        }
//        waitForExpectations(timeout: 1, handler: nil)
//        
//    }
//}
