//
//  HomeView.swift
//  ChallengeMercadoPago
//
//  Created by Matias Palmieri on 21/09/2024.
//

import SwiftUI
import Kingfisher

struct HomeView: View {
    @ObservedObject var presenter: HomePresenter
    
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    HStack {
                        Image(systemName: "magnifyingglass")
                        TextField("Buscar vehículos...", text: $presenter.searchText)
                            .foregroundColor(.gray)
                    }
                    .padding()
                    .background(Color.secondary.opacity(0.15))
                    .cornerRadius(10)
                }
                .padding(.horizontal)
                List {
                    if presenter.isLoading && presenter.vehicles.isEmpty {
                        LoadingCustomView(loadingText: "Cargando vehículos...")
                    }
                    if !presenter.isLoading {
                        if presenter.error != nil {
                            ListStateView(state: .errorService)
                        } else if presenter.filteredVehicles.isEmpty {
                            ListStateView(state: .emptyList)
                        } else {
                            ForEach(presenter.filteredVehicles) { product in
                                NavigationLink(destination: ProductDetailView(presenter: ProductDetailPresenter(vehicle: product))) {
                                    HStack {
                                        KFImage(URL(string: product.thumbnail.convertToHTTPS())!)
                                            .resizable()
                                            .frame(width: 90, height: 90)
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
                }
                .refreshable {
                    presenter.fetchVehicles(searchText: presenter.searchText)
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
