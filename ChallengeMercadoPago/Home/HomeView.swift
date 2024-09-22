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
                Spacer()
                List {
                    ForEach(presenter.vehicles.filter { product in
                        searchText.isEmpty || product.title.lowercased().contains(searchText.lowercased())
                    }) { product in
//                        NavigationLink(destination: ProductDetailView(product: product)) {
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
                    // TODO: Aca mostrar si la lista es vacia algo asi
//                    .emptyStateView(title: "No se encontraron resultados", show: presenter.vehicles.isEmpty)
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
