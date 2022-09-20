Feature: Como posible usuario me gustaría ver una sección de la landing page con información relacionado al segmento que corresponde
    Scenario: E01 Visualizacion correcta para developers
    CA01 
        Dado que el visitante se encuentra en el landing page
        Cuando seleccione la sección “Developers” en la barra de navegacion
        Entonces se muestra la sección para developers
    CA02
        Dado que estoy en la seccion de developers
        Cuando reproduzco el video about the product
        Entonces la plataforma muestra información sobre los beneficios para conductores
    
    Scenario: Visualizacion correcta para reclutadores
    CA01 
        Dado que el visitante se encuentra en el landing page 
        Cuando seleccione la sección “Empresas” en la barra de navegacion
        Entonces se muestra la sección para reclutadores
    CA02
        Dado que el visitante se encuentra en el landing page
        Cuando observe el video about the product en la seccion de empleadores
        Entonces la plataforma muestra informacion sobre los beneficios para los reclutadores de empresas