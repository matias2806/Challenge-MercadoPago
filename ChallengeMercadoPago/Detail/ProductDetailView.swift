//
//  ProductDetailView.swift
//  ChallengeMercadoPago
//
//  Created by Matias Palmieri on 21/09/2024.
//

import SwiftUI

struct ProductDetailView: View {
    
    let vehicle: DeportiveCars
    
    init(vehicle: DeportiveCars) {
        self.vehicle = vehicle
    }
    
    var body: some View {
        Text(vehicle.seller.nickname)
    }
}

#Preview {
    ProductDetailView(vehicle: DeportiveCars(id: "", title: "", condition: .used, thumbnailID: "", catalogProductID: nil, listingTypeID: .goldPremium, sanitizedTitle: "", permalink: "", buyingMode: .classified, siteID: .mla, categoryID: .mla1745, domainID: .mlaClassicCars, thumbnail: "", currencyID: .usd, orderBackend: 1, price: 9990, originalPrice: nil, salePrice: SalePrice(priceID: "", amount: 9990, conditions: Conditions(eligible: true, contextRestrictions: [], startTime: nil, endTime: nil), currencyID: .usd, exchangeRate: nil, paymentMethodPrices: [], paymentMethodType: .tmp, regularAmount: nil, type: .standard, metadata: Metadata()), availableQuantity: 1, officialStoreID: nil, useThumbnailID: true, acceptsMercadopago: true, shipping: Shipping(storePickUp: false, freeShipping: false, logisticType: nil, mode: .notSpecified, tags: [], benefits: nil, promise: nil, shippingScore: -1), stopTime: "", seller: Seller(id: 1977789875, nickname: "FF20240906100610"), attributes: [], location: Location(addressLine: "", zipCode: "", subneighborhood: nil, neighborhood: Sort(id: nil, name: nil), city: Sort(id: nil, name: nil), state: Sort(id: nil, name: nil), country: Sort(id: nil, name: nil), latitude: nil, longitude: nil), sellerContact: SellerContact(contact: "", otherInfo: "", webpage: "", areaCode: "", phone: "", areaCode2: "", phone2: "", email: ""), installments: nil, winnerItemID: nil, catalogListing: true, discounts: nil, promotions: [""], inventoryID: nil, officialStoreName: nil))
}
