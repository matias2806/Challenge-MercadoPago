//
//  MockSession.swift
//  ChallengeMercadoPagoTests
//
//  Created by Matias Palmieri on 23/09/2024.
//

import Foundation
import Alamofire

class MockSession: Session {
    var dataTaskCompletionHandler: ((Data?, URLResponse?, Error?) -> Void)?

    override func dataTask(with request: URLRequest, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {
        dataTaskCompletionHandler = completionHandler
        return MockDataTask()
    }
}

class MockDataTask: URLSessionDataTask {
    override func resume() {
        dataTaskCompletionHandler?(Data(), HTTPURLResponse()) // Aquí puedes personalizar la respuesta
    }
}
