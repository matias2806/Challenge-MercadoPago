//
//  String+.swift
//  ChallengeMercadoPago
//
//  Created by Matias Palmieri on 22/09/2024.
//

extension String {
    func convertToHTTPS() -> String {
        var updatedUrl = self
        if updatedUrl.hasPrefix("http://") {
            updatedUrl = updatedUrl.replacingOccurrences(of: "http://", with: "https://")
        }
        return updatedUrl
    }
}
