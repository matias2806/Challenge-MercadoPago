//
//  HomeView.swift
//  ChallengeMercadoPago
//
//  Created by Matias Palmieri on 21/09/2024.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var presenter: HomePresenter
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    TextField("Buscar vehículos...", text: $searchText)
                        .foregroundColor(.gray)
                        .padding(.horizontal)
                    Button(action: {
                        // TODO: Armar y preparar la función de búsqueda en el presenter algo asi..
//                        presenter.fetchVehicles(searchText: searchText)
                    }) {
                        Image(systemName: "magnifyingglass")
                    }
                }
                .padding()
                .background(Color.secondary.opacity(0.15))
                .cornerRadius(10)
                List {
                    if presenter.error != nil {
                        VStack {
                            Image(systemName: "exclamationmark.circle")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 80, height: 80)
                            Text("Lo sentimos, ocurrió un problema inesperado")
                                .font(.title)
                                .padding()
                            Text("Inténtalo nuevamente más tarde")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                                .multilineTextAlignment(.center)
                                .padding()
                        }
                    } else if presenter.isEmpty {
                        VStack {
                            Image(systemName: "magnifyingglass")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 80, height: 80)
                            Text("No se encontraron resultados")
                                .font(.title)
                                .padding()
                            Text("Intenta con otra búsqueda")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                                .multilineTextAlignment(.center)
                                .padding()
                        }
                        .opacity(presenter.vehicles.isEmpty ? 1 : 0)
                    }
                    else {
                        ForEach(presenter.vehicles.filter { product in
                            searchText.isEmpty || product.title.lowercased().contains(searchText.lowercased())
                        }) { product in
                            NavigationLink(destination: ProductDetailView(vehicle: product)) {
                                HStack {
                                    Image(systemName: "car")
                                        .resizable()
                                        .frame(width: 80, height: 80)
                                        .padding(.trailing)
                                    VStack(alignment: .leading) {
                                        Text(product.title)
                                            .font(.headline)
                                    }
                                }
                            }
                        }
                    }
                }
                .refreshable {
                    presenter.fetchVehicles()
                }
            }
            .navigationBarTitleDisplayMode(.large)
            .navigationTitle("Mercado Pago")
            .navigationBarItems(trailing:
                                    Button(action: {
                print("Presionaste FAQs")
            }) {
                Image(systemName: "questionmark.circle")
                    .imageScale(.large)
            })
        }
    }
}

#Preview {
    HomeView(presenter: HomePresenter(vehicleService: VehicleService()))
}
