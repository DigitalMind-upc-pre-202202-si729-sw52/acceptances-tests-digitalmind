Feature: Como usuario quiero obtener información sobre los integrantes del equipo para sentirme más seguro

    Scenario: Seccion de fotos y redes sociales de los integrantes
    CA01:
        Given el posible usuario se encuentra en la sección “About us”
        When navega hasta la parte central
        Then visualiza las fotos de los integrantes del equipo
        And sus redes sociales.

    Scenario: Visualizacion del video about the team
    CA01: 
        Given el visitante se encuentra en la seccion “About us” 
        When presione el boton de reproducir
        Then se reproducira el video about the team dentro de la pagina.
    CA02:
        Dado que el visitante se encuentra en la seccion “About us” 
        When presione el boton de reproducir
        Then el video no se reproducira y el usuario debera recargar la web.