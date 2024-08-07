Feature: Registro de usuario

  Scenario: Registro exitoso
    Given Navego a la página de registro
    When Introduzco datos válidos en todos los campos
    And Hago clic en el botón "Registrarse"
    Then Debería ver un mensaje de confirmación diciendo "Datos ingresados correctamente."

  Scenario: Nombre con números
    Given Navego a la página de registro
    When Introduzco "John123" en el campo "Nombre"
    And Hago clic en el botón "Registrarse"
    Then Debería ver un mensaje de alerta diciendo "Solo se permiten letras" para el campo "Nombre"

  Scenario: Apellido con números
    Given Navego a la página de registro
    When Introduzco "Doe456" en el campo "Apellido"
    And Hago clic en el botón "Registrarse"
    Then Debería ver un mensaje de alerta diciendo "Solo se permiten letras" para el campo "Apellido"

  Scenario: Fecha de nacimiento muy antigua 
    Given Navego a la página de registro
    When Introduzco "1899-12-31" en el campo "Fecha de nacimiento"
    And Hago clic en el botón "Registrarse"
    Then Debería ver un mensaje de alerta diciendo "La fecha de nacimiento no puede ser anterior al año 1900"

  Scenario: Usuario menor de 18 años
    Given Navego a la página de registro
    When Introduzco una fecha de nacimiento que hace al usuario menor de 18 años en el campo "Fecha de nacimiento"
    And Hago clic en el botón "Registrarse"
    Then Debería ver un mensaje de validación diciendo "Debe tener al menos 18 años"

  Scenario: Número de cédula negativo
    Given Navego a la página de registro
    When Introduzco "-12345678" en el campo "Cedula de Identidad"
    And Hago clic en el botón "Registrarse"
    Then Debería ver un mensaje de validación diciendo "El número de cédula es requerido"