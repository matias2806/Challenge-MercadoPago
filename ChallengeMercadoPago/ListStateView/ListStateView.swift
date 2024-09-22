//
//  ListStateView.swift
//  ChallengeMercadoPago
//
//  Created by Matias Palmieri on 22/09/2024.
//

import SwiftUI

enum ListStateEnum {
    case errorService
    case emptyList
    
    var image: String {
        switch self {
        case .errorService:
            return "exclamationmark.circle"
        case .emptyList:
            return "magnifyingglass"
        }
    }
    
    var title: String {
        switch self {
        case .errorService:
            return "Lo sentimos, ocurrió un error del servicio"
        case .emptyList:
            return "Lo sentimos, No pudimos encontrar resultados"
        }
    }
    
    var subtitle: String {
        switch self {
        case .errorService:
            return "Si el problema persiste contactate con Atención al cliente"
        case .emptyList:
            return "Intenta en unos minutos"
        }
    }
}

struct ListStateView: View {
    let state: ListStateEnum
    
    var body: some View {
        VStack {
            Image(systemName: state.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80, height: 80)
                .padding(.top, 20)
            Text(state.title)
                .font(.title)
                .padding()
                .multilineTextAlignment(.center)
            Text(state.subtitle)
                .font(.subheadline)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding()
        }
        .frame(maxWidth: .infinity, alignment: .center)
    }
}

#Preview {
    ListStateView(state: .emptyList)
}
