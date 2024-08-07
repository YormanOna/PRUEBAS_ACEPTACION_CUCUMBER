Feature: Calendario de Reservas

  Scenario: Selección de fecha disponible
    Given navego a la página del calendario
    When selecciono una fecha disponible
    Then debería ver la información de la fecha seleccionada

  Scenario: Intento seleccionar una fecha reservada
    Given navego a la página del calendario
    When intento seleccionar una fecha reservada
    Then debería ver un mensaje de error

  Scenario: Selección de fecha con disponibilidad limitada
    Given navego a la página del calendario
    When selecciono una fecha con disponibilidad limitada
    Then debería ver un mensaje de disponibilidad limitada

  Scenario: Hago clic en reservar ahora
    Given navego a la página del calendario
    When hago clic en reservar ahora
    Then debería ver la página de reserva
