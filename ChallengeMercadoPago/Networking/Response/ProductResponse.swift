//
//  ProductResponse.swift
//  ChallengeMercadoPago
//
//  Created by Matias Palmieri on 21/09/2024.
//

import Foundation
import Alamofire

// MARK: - ProductResponse
struct ProductResponse: Codable {
    let siteID: SiteID
    let countryDefaultTimeZone: String
    let paging: Paging
    let results: [DeportiveCars]
    let sort: Sort
    let availableSorts: [Sort]
    let filters: [Filter]
    let availableFilters: [AvailableFilter]
    let currency: Currency
    let availableCurrencies: AvailableCurrencies
    let pdpTracking: PDPTracking
    let userContext: String?

    enum CodingKeys: String, CodingKey {
        case siteID = "site_id"
        case countryDefaultTimeZone = "country_default_time_zone"
        case paging, results, sort
        case availableSorts = "available_sorts"
        case filters
        case availableFilters = "available_filters"
        case currency
        case availableCurrencies = "available_currencies"
        case pdpTracking = "pdp_tracking"
        case userContext = "user_context"
    }
}

// MARK: - AvailableCurrencies
struct AvailableCurrencies: Codable {
    let currencies: [Currency]
    let conversions: Conversions
}

// MARK: - Conversions
struct Conversions: Codable {
    let arsUsd, usdArs: Double

    enum CodingKeys: String, CodingKey {
        case arsUsd = "ars_usd"
        case usdArs = "usd_ars"
    }
}

// MARK: - Currency
struct Currency: Codable {
    let id: CurrencyIDEnum
    let symbol: String
}

enum CurrencyIDEnum: String, Codable {
    case ars = "ARS"
    case usd = "USD"
}

// MARK: - AvailableFilter
struct AvailableFilter: Codable {
    let id, name: String
    let type: AvailableFilterType
    let values: [AvailableFilterValue]
}

enum AvailableFilterType: String, Codable {
    case boolean = "boolean"
    case range = "range"
    case string = "STRING"
    case text = "text"
}

// MARK: - AvailableFilterValue
struct AvailableFilterValue: Codable {
    let id, name: String
    let results: Int
}

// MARK: - Sort
struct Sort: Codable {
    let id, name: String?
}

// MARK: - Filter
struct Filter: Codable {
    let id, name: String
    let type: AvailableFilterType
    let values: [FilterValue]
}
// MARK: - FilterValue
struct FilterValue: Codable {
    let id: CategoryID
    let name: String
    let pathFromRoot: [Sort]

    enum CodingKeys: String, CodingKey {
        case id, name
        case pathFromRoot = "path_from_root"
    }
}

enum CategoryID: String, Codable {
    case mla1745 = "MLA1745"
}

// MARK: - Paging
struct Paging: Codable {
    let total, primaryResults, offset, limit: Int

    enum CodingKeys: String, CodingKey {
        case total
        case primaryResults = "primary_results"
        case offset, limit
    }
}

// MARK: - PDPTracking
struct PDPTracking: Codable {
    let group: Bool
    let productInfo: [String]

    enum CodingKeys: String, CodingKey {
        case group
        case productInfo = "product_info"
    }
}

// MARK: - Result
// MARK: - Result renombrado a DeportiveCars
struct DeportiveCars: Codable, Identifiable {
    let id, title: String
    let condition: Condition
    let thumbnailID: String
    let catalogProductID: String?
    let listingTypeID: ListingTypeID
    let sanitizedTitle: String
    let permalink: String
    let buyingMode: BuyingMode
    let siteID: SiteID
    let categoryID: CategoryID
    let domainID: DomainID
    let thumbnail: String
    let currencyID: CurrencyIDEnum
    let orderBackend, price: Int
    let originalPrice: String?
    let salePrice: SalePrice
    let availableQuantity: Int
    let officialStoreID: Int?
    let useThumbnailID, acceptsMercadopago: Bool
    let shipping: Shipping
    let stopTime: String
    let seller: Seller
    let attributes: [Attribute]
    let location: Location
    let sellerContact: SellerContact
    let installments, winnerItemID: String?
    let catalogListing: Bool
    let discounts: String?
    let promotions: [String]
    let inventoryID: String?
    let officialStoreName: OfficialStoreName?

    enum CodingKeys: String, CodingKey {
        case id, title, condition
        case thumbnailID = "thumbnail_id"
        case catalogProductID = "catalog_product_id"
        case listingTypeID = "listing_type_id"
        case sanitizedTitle = "sanitized_title"
        case permalink
        case buyingMode = "buying_mode"
        case siteID = "site_id"
        case categoryID = "category_id"
        case domainID = "domain_id"
        case thumbnail
        case currencyID = "currency_id"
        case orderBackend = "order_backend"
        case price
        case originalPrice = "original_price"
        case salePrice = "sale_price"
        case availableQuantity = "available_quantity"
        case officialStoreID = "official_store_id"
        case useThumbnailID = "use_thumbnail_id"
        case acceptsMercadopago = "accepts_mercadopago"
        case shipping
        case stopTime = "stop_time"
        case seller, attributes, location
        case sellerContact = "seller_contact"
        case installments
        case winnerItemID = "winner_item_id"
        case catalogListing = "catalog_listing"
        case discounts, promotions
        case inventoryID = "inventory_id"
        case officialStoreName = "official_store_name"
    }
}

// MARK: - Attribute
struct Attribute: Codable, Identifiable {
    let id: AttributeID
    let name: Name
    let valueID: String?
    let valueName: String
    let attributeGroupID: AttributeGroupID
    let attributeGroupName: AttributeGroupName
    let valueStruct: Struct?
    let values: [AttributeValue]
    let source: Int
    let valueType: ValueType

    enum CodingKeys: String, CodingKey {
        case id, name
        case valueID = "value_id"
        case valueName = "value_name"
        case attributeGroupID = "attribute_group_id"
        case attributeGroupName = "attribute_group_name"
        case valueStruct = "value_struct"
        case values, source
        case valueType = "value_type"
    }
}

enum AttributeGroupID: String, Codable {
    case adicionales = "ADICIONALES"
    case confort = "CONFORT"
    case empty = ""
    case find = "FIND"
    case security = "SECURITY"
}

enum AttributeGroupName: String, Codable {
    case adicionales = "Adicionales"
    case confort = "Confort"
    case empty = ""
    case fichaTécnica = "Ficha técnica"
    case seguridad = "Seguridad"
}

enum AttributeID: String, Codable {
    case brand = "BRAND"
    case color = "COLOR"
    case doors = "DOORS"
    case engine = "ENGINE"
    case fuelType = "FUEL_TYPE"
    case hasAirConditioning = "HAS_AIR_CONDITIONING"
    case itemCondition = "ITEM_CONDITION"
    case kilometers = "KILOMETERS"
    case model = "MODEL"
    case singleOwner = "SINGLE_OWNER"
    case transmission = "TRANSMISSION"
    case trim = "TRIM"
    case vehicleYear = "VEHICLE_YEAR"
}

enum Name: String, Codable {
    case aireAcondicionado = "Aire acondicionado"
    case año = "Año"
    case color = "Color"
    case condiciónDelÍtem = "Condición del ítem"
    case kilómetros = "Kilómetros"
    case marca = "Marca"
    case modelo = "Modelo"
    case motor = "Motor"
    case puertas = "Puertas"
    case tipoDeCombustible = "Tipo de combustible"
    case transmisión = "Transmisión"
    case versión = "Versión"
    case únicoDueño = "Único dueño"
}

// MARK: - Struct
struct Struct: Codable {
    let number: Int
    let unit: Unit
}

enum Unit: String, Codable {
    case km = "km"
}

enum ValueType: String, Codable {
    case boolean = "boolean"
    case list = "list"
    case number = "number"
    case numberUnit = "number_unit"
    case string = "string"
}

// MARK: - AttributeValue
struct AttributeValue: Codable {
    let id: String?
    let name: String
    let valueStruct: Struct?
    let source: Int

    enum CodingKeys: String, CodingKey {
        case id, name
        case valueStruct = "struct"
        case source
    }
}

enum BuyingMode: String, Codable {
    case classified = "classified"
}

enum Condition: String, Codable {
    case used = "used"
}

enum DomainID: String, Codable {
    case mlaClassicCars = "MLA-CLASSIC_CARS"
}

enum ListingTypeID: String, Codable {
    case goldPremium = "gold_premium"
}

// MARK: - Location
struct Location: Codable {
    let addressLine, zipCode: String
    let subneighborhood: String?
    let neighborhood, city, state, country: Sort
    let latitude, longitude: Double?

    enum CodingKeys: String, CodingKey {
        case addressLine = "address_line"
        case zipCode = "zip_code"
        case subneighborhood, neighborhood, city, state, country, latitude, longitude
    }
}

enum OfficialStoreName: String, Codable {
    case autoDriveJeepFiatYKia = "AutoDrive Jeep Fiat y Kia"
    case e11Evenordelta = "E11EVENORDELTA"
    case rangugniAuto = "Rangugni Auto"
}

// MARK: - SalePrice
struct SalePrice: Codable {
    let priceID: String
    let amount: Int
    let conditions: Conditions
    let currencyID: CurrencyIDEnum
    let exchangeRate: String?
    let paymentMethodPrices: [String]
    let paymentMethodType: PaymentMethodType
    let regularAmount: String?
    let type: SalePriceType
    let metadata: Metadata

    enum CodingKeys: String, CodingKey {
        case priceID = "price_id"
        case amount, conditions
        case currencyID = "currency_id"
        case exchangeRate = "exchange_rate"
        case paymentMethodPrices = "payment_method_prices"
        case paymentMethodType = "payment_method_type"
        case regularAmount = "regular_amount"
        case type, metadata
    }
}

// MARK: - Conditions
struct Conditions: Codable {
    let eligible: Bool
    let contextRestrictions: [String]
    let startTime, endTime: String?

    enum CodingKeys: String, CodingKey {
        case eligible
        case contextRestrictions = "context_restrictions"
        case startTime = "start_time"
        case endTime = "end_time"
    }
}

// MARK: - Metadata
struct Metadata: Codable {
}

enum PaymentMethodType: String, Codable {
    case tmp = "TMP"
}

enum SalePriceType: String, Codable {
    case standard = "standard"
}

// MARK: - Seller
struct Seller: Codable {
    let id: Int
    let nickname: String
}

// MARK: - SellerContact
struct SellerContact: Codable {
    let contact, otherInfo, webpage, areaCode: String
    let phone, areaCode2, phone2, email: String

    enum CodingKeys: String, CodingKey {
        case contact
        case otherInfo = "other_info"
        case webpage
        case areaCode = "area_code"
        case phone
        case areaCode2 = "area_code2"
        case phone2, email
    }
}

// MARK: - Shipping
struct Shipping: Codable {
    let storePickUp, freeShipping: Bool
    let logisticType: Mode?
    let mode: Mode
    let tags: [String]
    let benefits, promise: String?
    let shippingScore: Int

    enum CodingKeys: String, CodingKey {
        case storePickUp = "store_pick_up"
        case freeShipping = "free_shipping"
        case logisticType = "logistic_type"
        case mode, tags, benefits, promise
        case shippingScore = "shipping_score"
    }
}

enum Mode: String, Codable {
    case notSpecified = "not_specified"
}

enum SiteID: String, Codable {
    case mla = "MLA"
}

//TODO: DESDE ACA VALIDAR
// MARK: - Helper functions for creating encoders and decoders

//func newJSONDecoder() -> JSONDecoder {
//    let decoder = JSONDecoder()
//    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
//        decoder.dateDecodingStrategy = .iso8601
//    }
//    return decoder
//}
//
//func newJSONEncoder() -> JSONEncoder {
//    let encoder = JSONEncoder()
//    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
//        encoder.dateEncodingStrategy = .iso8601
//    }
//    return encoder
//}
//
//// MARK: - Alamofire response handlers
//
//extension DataRequest {
//    fileprivate func decodableResponseSerializer<T: Decodable>() -> DataResponseSerializer<T> {
//        return DataResponseSerializer { _, response, data, error in
//                guard error == nil else { return .failure(error!) }
//
//                guard let data = data else {
//                        return .failure(AFError.responseSerializationFailed(reason: .inputDataNil))
//                }
//
//                return Result { try newJSONDecoder().decode(T.self, from: data) }
//        }
//    }
//
//    @discardableResult
//    fileprivate func responseDecodable<T: Decodable>(queue: DispatchQueue? = nil, completionHandler: @escaping (DataResponse<T>) -> Void) -> Self {
//        return response(queue: queue, responseSerializer: decodableResponseSerializer(), completionHandler: completionHandler)
//    }
//
//    @discardableResult
//    func responseProductResponse(queue: DispatchQueue? = nil, completionHandler: @escaping (DataResponse<ProductResponse>) -> Void) -> Self {
//        return responseDecodable(queue: queue, completionHandler: completionHandler)
//    }
//}
//
//// MARK: - Encode/decode helpers
//
//class JSONNull: Codable, Hashable {
//
//    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
//            return true
//    }
//
//    public var hashValue: Int {
//            return 0
//    }
//
//    public init() {}
//
//    public required init(from decoder: Decoder) throws {
//            let container = try decoder.singleValueContainer()
//            if !container.decodeNil() {
//                    throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
//            }
//    }
//
//    public func encode(to encoder: Encoder) throws {
//            var container = encoder.singleValueContainer()
//            try container.encodeNil()
//    }
//}
//
//class JSONCodingKey: CodingKey {
//    let key: String
//
//    required init?(intValue: Int) {
//            return nil
//    }
//
//    required init?(stringValue: String) {
//            key = stringValue
//    }
//
//    var intValue: Int? {
//            return nil
//    }
//
//    var stringValue: String {
//            return key
//    }
//}
//
//class JSONAny: Codable {
//
//    let value: Any
//
//    static func decodingError(forCodingPath codingPath: [CodingKey]) -> DecodingError {
//            let context = DecodingError.Context(codingPath: codingPath, debugDescription: "Cannot decode JSONAny")
//            return DecodingError.typeMismatch(JSONAny.self, context)
//    }
//
//    static func encodingError(forValue value: Any, codingPath: [CodingKey]) -> EncodingError {
//            let context = EncodingError.Context(codingPath: codingPath, debugDescription: "Cannot encode JSONAny")
//            return EncodingError.invalidValue(value, context)
//    }
//
//    static func decode(from container: SingleValueDecodingContainer) throws -> Any {
//            if let value = try? container.decode(Bool.self) {
//                    return value
//            }
//            if let value = try? container.decode(Int64.self) {
//                    return value
//            }
//            if let value = try? container.decode(Double.self) {
//                    return value
//            }
//            if let value = try? container.decode(String.self) {
//                    return value
//            }
//            if container.decodeNil() {
//                    return JSONNull()
//            }
//            throw decodingError(forCodingPath: container.codingPath)
//    }
//
//    static func decode(from container: inout UnkeyedDecodingContainer) throws -> Any {
//            if let value = try? container.decode(Bool.self) {
//                    return value
//            }
//            if let value = try? container.decode(Int64.self) {
//                    return value
//            }
//            if let value = try? container.decode(Double.self) {
//                    return value
//            }
//            if let value = try? container.decode(String.self) {
//                    return value
//            }
//            if let value = try? container.decodeNil() {
//                    if value {
//                            return JSONNull()
//                    }
//            }
//            if var container = try? container.nestedUnkeyedContainer() {
//                    return try decodeArray(from: &container)
//            }
//            if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self) {
//                    return try decodeDictionary(from: &container)
//            }
//            throw decodingError(forCodingPath: container.codingPath)
//    }
//
//    static func decode(from container: inout KeyedDecodingContainer<JSONCodingKey>, forKey key: JSONCodingKey) throws -> Any {
//            if let value = try? container.decode(Bool.self, forKey: key) {
//                    return value
//            }
//            if let value = try? container.decode(Int64.self, forKey: key) {
//                    return value
//            }
//            if let value = try? container.decode(Double.self, forKey: key) {
//                    return value
//            }
//            if let value = try? container.decode(String.self, forKey: key) {
//                    return value
//            }
//            if let value = try? container.decodeNil(forKey: key) {
//                    if value {
//                            return JSONNull()
//                    }
//            }
//            if var container = try? container.nestedUnkeyedContainer(forKey: key) {
//                    return try decodeArray(from: &container)
//            }
//            if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key) {
//                    return try decodeDictionary(from: &container)
//            }
//            throw decodingError(forCodingPath: container.codingPath)
//    }
//
//    static func decodeArray(from container: inout UnkeyedDecodingContainer) throws -> [Any] {
//            var arr: [Any] = []
//            while !container.isAtEnd {
//                    let value = try decode(from: &container)
//                    arr.append(value)
//            }
//            return arr
//    }
//
//    static func decodeDictionary(from container: inout KeyedDecodingContainer<JSONCodingKey>) throws -> [String: Any] {
//            var dict = [String: Any]()
//            for key in container.allKeys {
//                    let value = try decode(from: &container, forKey: key)
//                    dict[key.stringValue] = value
//            }
//            return dict
//    }
//
//    static func encode(to container: inout UnkeyedEncodingContainer, array: [Any]) throws {
//            for value in array {
//                    if let value = value as? Bool {
//                            try container.encode(value)
//                    } else if let value = value as? Int64 {
//                            try container.encode(value)
//                    } else if let value = value as? Double {
//                            try container.encode(value)
//                    } else if let value = value as? String {
//                            try container.encode(value)
//                    } else if value is JSONNull {
//                            try container.encodeNil()
//                    } else if let value = value as? [Any] {
//                            var container = container.nestedUnkeyedContainer()
//                            try encode(to: &container, array: value)
//                    } else if let value = value as? [String: Any] {
//                            var container = container.nestedContainer(keyedBy: JSONCodingKey.self)
//                            try encode(to: &container, dictionary: value)
//                    } else {
//                            throw encodingError(forValue: value, codingPath: container.codingPath)
//                    }
//            }
//    }
//
//    static func encode(to container: inout KeyedEncodingContainer<JSONCodingKey>, dictionary: [String: Any]) throws {
//            for (key, value) in dictionary {
//                    let key = JSONCodingKey(stringValue: key)!
//                    if let value = value as? Bool {
//                            try container.encode(value, forKey: key)
//                    } else if let value = value as? Int64 {
//                            try container.encode(value, forKey: key)
//                    } else if let value = value as? Double {
//                            try container.encode(value, forKey: key)
//                    } else if let value = value as? String {
//                            try container.encode(value, forKey: key)
//                    } else if value is JSONNull {
//                            try container.encodeNil(forKey: key)
//                    } else if let value = value as? [Any] {
//                            var container = container.nestedUnkeyedContainer(forKey: key)
//                            try encode(to: &container, array: value)
//                    } else if let value = value as? [String: Any] {
//                            var container = container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key)
//                            try encode(to: &container, dictionary: value)
//                    } else {
//                            throw encodingError(forValue: value, codingPath: container.codingPath)
//                    }
//            }
//    }
//
//    static func encode(to container: inout SingleValueEncodingContainer, value: Any) throws {
//            if let value = value as? Bool {
//                    try container.encode(value)
//            } else if let value = value as? Int64 {
//                    try container.encode(value)
//            } else if let value = value as? Double {
//                    try container.encode(value)
//            } else if let value = value as? String {
//                    try container.encode(value)
//            } else if value is JSONNull {
//                    try container.encodeNil()
//            } else {
//                    throw encodingError(forValue: value, codingPath: container.codingPath)
//            }
//    }
//
//    public required init(from decoder: Decoder) throws {
//            if var arrayContainer = try? decoder.unkeyedContainer() {
//                    self.value = try JSONAny.decodeArray(from: &arrayContainer)
//            } else if var container = try? decoder.container(keyedBy: JSONCodingKey.self) {
//                    self.value = try JSONAny.decodeDictionary(from: &container)
//            } else {
//                    let container = try decoder.singleValueContainer()
//                    self.value = try JSONAny.decode(from: container)
//            }
//    }
//
//    public func encode(to encoder: Encoder) throws {
//            if let arr = self.value as? [Any] {
//                    var container = encoder.unkeyedContainer()
//                    try JSONAny.encode(to: &container, array: arr)
//            } else if let dict = self.value as? [String: Any] {
//                    var container = encoder.container(keyedBy: JSONCodingKey.self)
//                    try JSONAny.encode(to: &container, dictionary: dict)
//            } else {
//                    var container = encoder.singleValueContainer()
//                    try JSONAny.encode(to: &container, value: self.value)
//            }
//    }
//}
//
