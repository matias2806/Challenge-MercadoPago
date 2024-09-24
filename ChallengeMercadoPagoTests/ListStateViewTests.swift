//
//  ListStateViewTests.swift
//  ChallengeMercadoPagoTests
//
//  Created by Matias Palmieri on 23/09/2024.
//

import XCTest
import SwiftUI
@testable import ChallengeMercadoPago

final class ListStateViewTests: XCTestCase {

    func test_emptyListState_rendersCorrectly() {
            // Creamos una instancia de la vista con el estado emptyList
            let state = ListStateEnum.emptyList
            let view = ListStateView(state: state)
            
            // Verificamos que la imagen, el título y el subtítulo sean los correctos
            XCTAssertTrue(view.image(for: state) == "magnifyingglass")
            XCTAssertTrue(view.title(for: state) == "Lo sentimos, No pudimos encontrar resultados")
            XCTAssertTrue(view.subtitle(for: state) == "Intenta en unos minutos")

            // Verificamos que la vista no muestre ningún elemento adicional (por ejemplo, una lista)
            // Puedes agregar más afirmaciones según tu implementación
        }

        func test_errorServiceState_rendersCorrectly() {
            // Creamos una instancia de la vista con el estado errorService
            let state = ListStateEnum.errorService
            let view = ListStateView(state: state)
            
            // Verificamos que la imagen, el título y el subtítulo sean los correctos
            XCTAssertTrue(view.image(for: state) == "exclamationmark.circle")
            XCTAssertTrue(view.title(for: state) == "Lo sentimos, ocurrió un error del servicio")
            XCTAssertTrue(view.subtitle(for: state) == "Si el problema persiste contactate con Atención al cliente")

            // Verificamos que la vista no muestre elementos adicionales (por ejemplo, un botón de reintentar)
            // Puedes agregar más afirmaciones según tu implementación
        }
}
