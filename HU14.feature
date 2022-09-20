Feature: Como posible usuario quiero desplazarme entre las secciones de la página web para visualizar la información importante para mí.

    Scenario: Desplazamiento correcto 
    CA01: 
        Given el visitante se encuentra en el landing page Y quiere acceder a otra seccion 
        When seleccione el boton correspondiente a esta 
        Then lo redirigira a la seccion elegida.
    CA02:   
        Given el visitante de la landing page desea conocer todas las secciones
        When seleccione los botones de menu de navegacion
        Then se mostrara la seccion correspondiente.