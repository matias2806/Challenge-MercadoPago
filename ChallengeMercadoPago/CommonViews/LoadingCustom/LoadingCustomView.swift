//
//  LoadingCustomView.swift
//  ChallengeMercadoPago
//
//  Created by Matias Palmieri on 23/09/2024.
//

import SwiftUI

struct LoadingCustomView: View {
    let loadingText: String
    
    var body: some View {
        VStack {
            ProgressView()
                .progressViewStyle(.circular)
                .scaleEffect(1.5)
                .padding()
            Text(loadingText)
                .font(.subheadline)
                .foregroundColor(.gray)
                .padding()
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    LoadingCustomView(loadingText: "Cargando vehículos...")
}
