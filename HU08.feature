Feature: Como reclutador no registrado en la aplicación, deseo crearme una cuenta, para poder acceder a las características de la app

    Scenario: E01 Registro exitoso
    TA01
        Given el posible reclutador se encuentra en el formulario de registro de cuenta para empresas
        When ingresa un número de RUC no registrado, su correo electrónico asociado (no registrado), y una contraseña válida (mayor o igual a 8 caracteres que incluyan al menos una letra y un número) junto a la confirmación de contraseña 
        Y presiona el botón “Registrarse”
        Then la app le mostrará un mensaje diciéndole que está registrado, pero que tiene que confirmar la cuenta abriendo el link de confirmación enviado a su correo electrónico.

        Examples: 
            | RUC         | Correo electrónico | Contraseña | Confirmación de contraseña | Resultado                                 |
            | 12345678901 | mycompany@gmail.com| 12345678aA | 12345678aA                 | Se muestra un mensaje de registro exitoso |
    
    Scenario: E02 Registro inválido 
    TA02
        Given el posible reclutador se encuentra en el formulario de registro de cuenta para empresas
        When completa los datos requeridos con un email ya registrado
        Y presiona el botón “Registrarse”
        Then la app le muestra un mensaje indicando que el correo ya fue registrado
        
        Examples: 
            | RUC         | Correo electrónico | Contraseña | Confirmación de contraseña | Resultado                                 |
            | 12345678901 | mycompany@gmail.com| 12345678aA | 12345678aA                 | Mensaje (Email ya fue registrado) |

     Scenario: E02 Confirmación de contraseña incorrecta
    TA02
        Given el posible reclutador se encuentra en el formulario de registro de cuenta para empresas
        When completa los datos requeridos e ingresa una contraseña y su confirmación de contraseña no coinciden
        Y presiona el botón “Registrarse”
        Then la app le muestra un mensaje indicando que debe confirmar la contraseña correctamente
        
        Examples: 
            | RUC         | Correo electrónico | Contraseña | Confirmación de contraseña | Resultado                                             |
            | 12345678901 | mycompany@gmail.com| 12345678aA | 12345678aASa#              | Mensaje (Ingresa la mismsa contraseña para confirmar) |