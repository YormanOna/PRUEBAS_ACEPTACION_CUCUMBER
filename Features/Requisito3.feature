Feature: Autenticación de Usuarios

Scenario: Inicio de sesión exitoso
  Given Navego a la página de inicio de sesión
  When Ingreso credenciales válidas
  Then Debería ver un mensaje de éxito y navegar al menú

Scenario: Campos vacíos
  Given Navego a la página de inicio de sesión
  When Dejo todos los campos vacíos
  Then Debería ver un mensaje indicando que los campos son obligatorios

Scenario: Nombre de usuario no válido
  Given Navego a la página de inicio de sesión
  When Ingreso un nombre de usuario no válido
  Then Debería ver un mensaje de error de nombre de usuario

Scenario: Contraseña inválida
  Given Navego a la página de inicio de sesión
  When Ingreso una contraseña no válida
  Then Debería ver un mensaje de error de contraseña

Scenario: Credenciales no válidas
  Given Navego a la página de inicio de sesión
  When Ingreso credenciales no válidas
  Then Debería ver un mensaje de error de credenciales no válidas
