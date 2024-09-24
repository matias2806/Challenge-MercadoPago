//
//  DeportiveCarMock.swift
//  ChallengeMercadoPagoTests
//
//  Created by Matias Palmieri on 24/09/2024.
//

import Foundation

let deportiveCarMock: Data = """
    {
          "id": "MLA1451190391",
          "title": "Ford Fairland Ltd 221 1981",
          "condition": "used",
          "thumbnail_id": "730744-MLA79173210772_092024",
          "catalog_product_id": null,
          "listing_type_id": "gold_premium",
          "sanitized_title": "ford-fairland-ltd-221-1981",
          "permalink": "https://auto.mercadolibre.com.ar/MLA-1451190391-ford-fairland-ltd-221-1981-_JM",
          "buying_mode": "classified",
          "site_id": "MLA",
          "category_id": "MLA1745",
          "domain_id": "MLA-CLASSIC_CARS",
          "thumbnail": "http://http2.mlstatic.com/D_730744-MLA79173210772_092024-I.jpg",
          "currency_id": "USD",
          "order_backend": 1,
          "price": 9990,
          "original_price": null,
          "sale_price": {
            "price_id": "",
            "amount": 9990,
            "conditions": {
              "eligible": true,
              "context_restrictions": [],
              "start_time": null,
              "end_time": null
            },
            "currency_id": "USD",
            "exchange_rate": null,
            "payment_method_prices": [],
            "payment_method_type": "TMP",
            "regular_amount": null,
            "type": "standard",
            "metadata": {}
          },
          "available_quantity": 1,
          "official_store_id": null,
          "use_thumbnail_id": true,
          "accepts_mercadopago": true,
          "shipping": {
            "store_pick_up": false,
            "free_shipping": false,
            "logistic_type": null,
            "mode": "not_specified",
            "tags": [],
            "benefits": null,
            "promise": null,
            "shipping_score": -1
          },
          "stop_time": "2025-09-20T04:00:00.000Z",
          "seller": {
            "id": 1977789875,
            "nickname": "FF20240906100610"
          },
          "attributes": [
            {
              "id": "ITEM_CONDITION",
              "name": "Condición del ítem",
              "value_id": "2230581",
              "value_name": "Usado",
              "attribute_group_id": "",
              "attribute_group_name": "",
              "value_struct": null,
              "values": [
                {
                  "id": "2230581",
                  "name": "Usado",
                  "struct": null,
                  "source": 1
                }
              ],
              "source": 1,
              "value_type": "list"
            },
            {
              "id": "KILOMETERS",
              "name": "Kilómetros",
              "value_id": null,
              "value_name": "100000 km",
              "attribute_group_id": "ADICIONALES",
              "attribute_group_name": "Adicionales",
              "value_struct": {
                "number": 100000,
                "unit": "km"
              },
              "values": [
                {
                  "id": null,
                  "name": "100000 km",
                  "struct": {
                    "number": 100000,
                    "unit": "km"
                  },
                  "source": 1505
                }
              ],
              "source": 1505,
              "value_type": "number_unit"
            },
            {
              "id": "SINGLE_OWNER",
              "name": "Único dueño",
              "value_id": "242085",
              "value_name": "Sí",
              "attribute_group_id": "ADICIONALES",
              "attribute_group_name": "Adicionales",
              "value_struct": null,
              "values": [
                {
                  "id": "242085",
                  "name": "Sí",
                  "struct": null,
                  "source": 3282472529718136
                }
              ],
              "source": 3282472529718136,
              "value_type": "boolean"
            },
            {
              "id": "VEHICLE_YEAR",
              "name": "Año",
              "value_id": null,
              "value_name": "1981",
              "attribute_group_id": "ADICIONALES",
              "attribute_group_name": "Adicionales",
              "value_struct": null,
              "values": [
                {
                  "id": null,
                  "name": "1981",
                  "struct": null,
                  "source": 1505
                }
              ],
              "source": 1505,
              "value_type": "number"
            },
            {
              "id": "COLOR",
              "name": "Color",
              "value_id": "52028",
              "value_name": "Azul",
              "attribute_group_id": "CONFORT",
              "attribute_group_name": "Confort",
              "value_struct": null,
              "values": [
                {
                  "id": "52028",
                  "name": "Azul",
                  "struct": null,
                  "source": 3282472529718136
                }
              ],
              "source": 3282472529718136,
              "value_type": "string"
            },
            {
              "id": "DOORS",
              "name": "Puertas",
              "value_id": null,
              "value_name": "4",
              "attribute_group_id": "CONFORT",
              "attribute_group_name": "Confort",
              "value_struct": null,
              "values": [
                {
                  "id": null,
                  "name": "4",
                  "struct": null,
                  "source": 1505
                }
              ],
              "source": 1505,
              "value_type": "number"
            },
            {
              "id": "BRAND",
              "name": "Marca",
              "value_id": "66432",
              "value_name": "Ford",
              "attribute_group_id": "FIND",
              "attribute_group_name": "Ficha técnica",
              "value_struct": null,
              "values": [
                {
                  "id": "66432",
                  "name": "Ford",
                  "struct": null,
                  "source": 1505
                }
              ],
              "source": 1505,
              "value_type": "string"
            },
            {
              "id": "MODEL",
              "name": "Modelo",
              "value_id": null,
              "value_name": "Fairland",
              "attribute_group_id": "FIND",
              "attribute_group_name": "Ficha técnica",
              "value_struct": null,
              "values": [
                {
                  "id": null,
                  "name": "Fairland",
                  "struct": null,
                  "source": 1505
                }
              ],
              "source": 1505,
              "value_type": "string"
            },
            {
              "id": "TRANSMISSION",
              "name": "Transmisión",
              "value_id": "370877",
              "value_name": "Manual",
              "attribute_group_id": "FIND",
              "attribute_group_name": "Ficha técnica",
              "value_struct": null,
              "values": [
                {
                  "id": "370877",
                  "name": "Manual",
                  "struct": null,
                  "source": 3282472529718136
                }
              ],
              "source": 3282472529718136,
              "value_type": "list"
            },
            {
              "id": "TRIM",
              "name": "Versión",
              "value_id": "17794172",
              "value_name": "Ltd",
              "attribute_group_id": "FIND",
              "attribute_group_name": "Ficha técnica",
              "value_struct": null,
              "values": [
                {
                  "id": "17794172",
                  "name": "Ltd",
                  "struct": null,
                  "source": 3282472529718136
                }
              ],
              "source": 3282472529718136,
              "value_type": "string"
            },
            {
              "id": "FUEL_TYPE",
              "name": "Tipo de combustible",
              "value_id": "64364",
              "value_name": "Nafta",
              "attribute_group_id": "SECURITY",
              "attribute_group_name": "Seguridad",
              "value_struct": null,
              "values": [
                {
                  "id": "64364",
                  "name": "Nafta",
                  "struct": null,
                  "source": 1505
                }
              ],
              "source": 1505,
              "value_type": "list"
            },
            {
              "id": "HAS_AIR_CONDITIONING",
              "name": "Aire acondicionado",
              "value_id": "242085",
              "value_name": "Sí",
              "attribute_group_id": "SECURITY",
              "attribute_group_name": "Seguridad",
              "value_struct": null,
              "values": [
                {
                  "id": "242085",
                  "name": "Sí",
                  "struct": null,
                  "source": 3282472529718136
                }
              ],
              "source": 3282472529718136,
              "value_type": "boolean"
            }
          ],
          "location": {
            "address_line": "",
            "zip_code": "",
            "subneighborhood": null,
            "neighborhood": {},
            "city": {
              "id": "TUxBQ1RJRzk0ZjQw",
              "name": "Tigre"
            },
            "state": {
              "id": "TUxBUEdSQWU4ZDkz",
              "name": "Bs.As. G.B.A. Norte"
            },
            "country": {
              "id": "AR",
              "name": "Argentina"
            },
            "latitude": -34.425087,
            "longitude": -58.5796585
          },
          "seller_contact": {
            "contact": "",
            "other_info": "",
            "webpage": "",
            "area_code": "",
            "phone": "",
            "area_code2": "",
            "phone2": "",
            "email": ""
          },
          "installments": null,
          "winner_item_id": null,
          "catalog_listing": false,
          "discounts": null,
          "promotions": [],
          "inventory_id": null
        }
    """.data(using: .utf8)!
