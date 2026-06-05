sqlSET SERVEROUTPUT ON;

-- PRUEBA PROCEDURE 1: Caso exitoso
BEGIN
    registrar_recorrido_completo(
        p_visitante_id   => 2,
        p_carrito_id     => 3,
        p_guia_id        => 2,
        p_num_personas   => 3,
        p_precio_persona => 80000
    );
END;
/

-- PRUEBA PROCEDURE 2: Caso fallo (carrito En uso)
BEGIN
    registrar_recorrido_completo(
        p_visitante_id   => 3,
        p_carrito_id     => 1,
        p_guia_id        => 3,
        p_num_personas   => 2,
        p_precio_persona => 80000
    );
END;
/

-- PRUEBA PROCEDURE 3: Caso fallo (personas superan capacidad)
BEGIN
    registrar_recorrido_completo(
        p_visitante_id   => 4,
        p_carrito_id     => 3,
        p_guia_id        => 4,
        p_num_personas   => 999,
        p_precio_persona => 80000
    );
END;
/