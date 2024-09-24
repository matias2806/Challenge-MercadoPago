//
//  StringExtensionsTest.swift
//  ChallengeMercadoPagoTests
//
//  Created by Matias Palmieri on 23/09/2024.
//

import XCTest
@testable import ChallengeMercadoPago

final class StringExtensionsTest: XCTestCase {
    
    func test_convert_to_HTTPS() {
        let testCases: [(input: String, expectedOutput: String)] = [
            ("http://example.com", "https://example.com"),
            ("https://example.com", "https://example.com"),
            ("example.com", "example.com"),
            ("", "")
        ]
        
        testCases.forEach { input, expectedOutput in
            let actualOutput = input.convertToHTTPS()
            XCTAssertEqual(actualOutput, expectedOutput)
        }
    }
}
