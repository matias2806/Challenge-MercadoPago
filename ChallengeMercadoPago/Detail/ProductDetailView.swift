//
//  ProductDetailView.swift
//  ChallengeMercadoPago
//
//  Created by Matias Palmieri on 21/09/2024.
//

import SwiftUI
import Kingfisher

struct ProductDetailView: View {
    @ObservedObject var presenter: ProductDetailPresenter
    
    init(presenter: ProductDetailPresenter) {
        self.presenter = presenter
    }
    
    var body: some View {
        VStack{
            KFImage(URL(string: presenter.vehicle.thumbnail.convertToHTTPS())!)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
                .accessibilityLabel("Imagen del vehículo")
            Spacer()
            Text(presenter.vehicle.title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.primary)
                .multilineTextAlignment(.center)
            Text("Precio: \(presenter.vehicle.price) \(presenter.vehicle.currencyID.rawValue)")
                .font(.largeTitle)
                .fontWeight(.light)
                .foregroundColor(.green)
                .multilineTextAlignment(.center)
            
            Spacer()
            ForEach(presenter.vehicle.attributes) { attribute in
                HStack {
                    Text("\(attribute.name.rawValue):")
                        .fontWeight(.bold)
                    Text(attribute.valueName)
                }
            }
            
            Spacer()
            Button(action: {
                presenter.navigateToLink(url: presenter.vehicle.permalink)
            }) {
                Text("Ir a la publicación")
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding(.horizontal, 15)
        }
    }
}

#Preview {
    ProductDetailView(presenter: ProductDetailPresenter(vehicle:
                                                            DeportiveCars(id: "MLA1451190391",
                                                                          title: "Ford Fairland Ltd 221 1981",
                                                                          condition: .used,
                                                                          thumbnailID: "730744-MLA79173210772_092024",
                                                                          catalogProductID: nil,
                                                                          listingTypeID: .goldPremium,
                                                                          sanitizedTitle: "ford-fairland-ltd-221-1981",
                                                                          permalink: "https://auto.mercadolibre.com.ar/MLA-1451190391-ford-fairland-ltd-221-1981-_JM",
                                                                          buyingMode: .classified,
                                                                          siteID: .mla,
                                                                          categoryID: .mla1745,
                                                                          domainID: .mlaClassicCars,
                                                                          thumbnail: "http://http2.mlstatic.com/D_730744-MLA79173210772_092024-I.jpg",
                                                                          currencyID: .usd,
                                                                          orderBackend: 1,
                                                                          price: 9990,
                                                                          originalPrice: nil,
                                                                          salePrice: SalePrice(priceID: "",
                                                                                               amount: 9990,
                                                                                               conditions: Conditions(eligible: true,
                                                                                                                      contextRestrictions: [],
                                                                                                                      startTime: nil,
                                                                                                                      endTime: nil),
                                                                                               currencyID: .usd,
                                                                                               exchangeRate: nil,
                                                                                               paymentMethodPrices: [],
                                                                                               paymentMethodType: .tmp,
                                                                                               regularAmount: nil,
                                                                                               type: .standard,
                                                                                               metadata: Metadata()),
                                                                          availableQuantity: 1,
                                                                          officialStoreID: nil,
                                                                          useThumbnailID: true,
                                                                          acceptsMercadopago: true,
                                                                          shipping: Shipping(storePickUp: false,
                                                                                             freeShipping: false,
                                                                                             logisticType: nil,
                                                                                             mode: .notSpecified,
                                                                                             tags: [],
                                                                                             benefits: nil,
                                                                                             promise: nil,
                                                                                             shippingScore: -1),
                                                                          stopTime: "",
                                                                          seller: Seller(id: 1977789875,
                                                                                         nickname: "FF20240906100610"),
                                                                          attributes: [],
                                                                          location: Location(addressLine: "",
                                                                                             zipCode: "",
                                                                                             subneighborhood: nil,
                                                                                             neighborhood: Sort(id: nil, name: nil),
                                                                                             city: Sort(id: nil, name: nil),
                                                                                             state: Sort(id: nil, name: nil),
                                                                                             country: Sort(id: nil, name: nil),
                                                                                             latitude: nil, longitude: nil),
                                                                          sellerContact: SellerContact(contact: "",
                                                                                                       otherInfo: "",
                                                                                                       webpage: "",
                                                                                                       areaCode: "",
                                                                                                       phone: "",
                                                                                                       areaCode2: "",
                                                                                                       phone2: "",
                                                                                                       email: ""),
                                                                          installments: nil,
                                                                          winnerItemID: nil,
                                                                          catalogListing: true,
                                                                          discounts: nil,
                                                                          promotions: [""],
                                                                          inventoryID: nil,
                                                                          officialStoreName: nil)))
}
