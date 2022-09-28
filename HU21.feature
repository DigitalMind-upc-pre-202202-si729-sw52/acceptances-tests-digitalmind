Feature: Como usuario deseo loguearme a la web app para visualizar las herramientas que ofrece
    Scenario: E01: Ingresar datos correctos en el formulario de inicio de sesion
        TA01

        Given se encuentra en el formulario “Login”
        When ingrese el correo electronico y contraseña
        Then logra ingresar a la app de manera exitosa.

        Examples:
            | correo-electronico      | Resultado                                                |
            | abeleldulce@gmail.com   | Ingresa al apartado principal de la aplicacion           |

    Scenario: E02: Recuperar contraseña
        TA02

        Given olvida su contraseña con la cual se registró en la plataforma
        When selecciona la opción “Forgot password?”
        Then la aplicación despliega el apartado de recuperar contraseña

        Examples:
            | Link router 'Forgot Password'  | Section to update password   |
            |  clic()                        |  Form to update password     |