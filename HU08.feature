Feature: Como reclutador no registrado en la aplicación, deseo crearme una cuenta, para poder acceder a las características de la app

    Scenario: E01 Registro exitoso
    TA01
        Given el posible reclutador se encuentra en el formulario de registro de cuenta para empresas
        When ingresa un número de RUC no registrado, su correo electrónico asociado (no registrado), y una contraseña válida (mayor o igual a 8 caracteres que incluyan al menos una letra y un número) junto a la confirmación de contraseña 
        Y presiona el botón “Registrarse”
        Then la app le mostrará un mensaje diciéndole que está registrado, pero que tiene que confirmar la cuenta abriendo el link de confirmación enviado a su correo electrónico.

        Examples: 
            | RUC         | Correo electrónico | Contraseña | Confirmación de contraseña | Resultado                                                 |
            | 12345678901 | mycompany@gmail.com| 12345678aA | 12345678aA                 | Se el envía un correo de confirmación para hacer el login |
    
    Scenario: E02 Registro inválido 
    TA02
        Given el posible reclutador se encuentra en el formulario de registro de cuenta para empresas
        When completa los datos requeridos, pero alguno o muchos de ellos son incorrectos
        Y presiona el botón “Registrarse”
        Then la app le muestra un mensaje relacionado con la solución para el error o errores cometidos.
        
        Examples: 
                |highlighted cell with error |
                |new correct data            |