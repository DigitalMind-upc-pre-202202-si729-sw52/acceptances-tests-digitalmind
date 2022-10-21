Feature: Como reclutador personal deseo filtrar a las personas en busca de trabajo de acuerdo con su especializacion

    Scenario: E01: Seleccion de filtros
        TA01

        Given deseo observar un filtrado especial.
        When selecciono el tipo de especializacion.
        Then la plataforma clasifica a todos los profesionales del area

        Examples:
            | especializacion        |
            | UI Design              |
            | Database administrator |
            | Scrum master           |

    Scenario: E02: Filtro por certificados
        TA02

        Given selecciono filtrar alguna especializacion
        When ejecuto el evento click en “filtrar ya”.
        Then la plataforma muestra principalmente a las personas que verificaron dicha competencia.

        Examples:
            | filtrar-ya | | nombre | | correo-electronico   |
            | clic() |   | | Ramon  | | hornydiaz@gmail.com  |

    Scenario: E03: Excepcion en caso de que el servicio no funcione
        TA03

        Given selecciono el tipo de especializacion.
        When la plataforma no muestra la lista de todos los profesionales del area.
        Then se muestra un mensaje indicando que el servicio estara disponible en momentos breve

        Examples:
            | mensaje                          |
            | the service is no avaliable now  |