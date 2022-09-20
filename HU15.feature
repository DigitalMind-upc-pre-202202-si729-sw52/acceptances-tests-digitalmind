Feature: Como posible usuario quiero visualizar los beneficios de los planes que brinda la plataforma para cada segmento

    Scenario: Visualizacion exitosa de los planes
    CA01:  
        Given el desarrollador se encuentra en la página principal
        When de clic en la opcion “Planes y precios” en el menu de navegacion
        Then podra observar los planes que ofrecemos para su segmento

    CA02:
        Given el reclutador se encuentra en la página principal
        When de clic en la opción “Planes y precios” en el menu de navegacion
        Then podra observar los planes que ofrecemos para su segmento