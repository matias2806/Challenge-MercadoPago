//
//  ListStateView.swift
//  ChallengeMercadoPago
//
//  Created by Matias Palmieri on 22/09/2024.
//

import SwiftUI

//struct ListStateViewModifier: ViewModifier {
//    
//    let title: String
//    let subtitle: String
//    let image: Image
//    
//    func body<Content: View & EmptyViewProtocol>(content: Content) -> some View {
//            content
//                .overlay(
//                    VStack {
//                        image
//                            .resizable()
//                            .aspectRatio(contentMode: .fit)
//                            .frame(width: 150)
//                        Text(title)
//                            .font(.title)
//                            .fontWeight(.bold)
//                            .padding(.top)
//                        Text(subtitle)
//                            .font(.subheadline)
//                            .foregroundColor(.gray)
//                            .multilineTextAlignment(.center)
//                            .padding()
//                    }
//                    .opacity(content.isEmpty ? 1 : 0) // Mostrar la vista de estado vacío solo si la lista está vacía
//                )
//        }
//}
//
//extension View {
//    func listStateView(title: String, subtitle: String, image: Image) -> some View {
//        modifier(ListStateViewModifier(title: title, subtitle: subtitle, image: image))
//    }
//}

//#Preview {
//    ListStateView(title: "Lo sentimos",
//                  subtitle: "No pudimos encontrar resultados. Vuelve a intentarlo en unos minutos.",
//                  image: Image("mercadopago_logo"))
//}
