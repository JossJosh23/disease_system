-- config.lua - Configuración del Sistema de Enfermedades

Config = {}

-- Enfermedades y sus síntomas
Config.Diseases = {
    fever = {
        name = "Fiebre",
        symptoms = {"dolor de cabeza", "mareos"},
        treatment = "medicina_fiebre"
    },
    headache = {
        name = "Dolor de Cabeza",
        symptoms = {"mareos", "deshidratación"},
        treatment = "pastillas_dolor_cabeza"
    },
    dizziness = {
        name = "Mareos",
        symptoms = {"deshidratación", "fiebre"},
        treatment = "jarabe_mareos"
    },
    dehydration = {
        name = "Deshidratación",
        symptoms = {"fiebre", "mareos"},
        treatment = "bebida_rehidratante"
    },
    sunstroke = {
        name = "Insolación",
        symptoms = {"dolor de cabeza", "mareos", "fiebre"},
        treatment = "inyeccion_soleada"
    }
}

-- Ítems de tratamiento y sus propiedades
Config.Treatments = {
    medicina_fiebre = {name = "Medicina para Fiebre", effect = "reduce_fiebre"},
    pastillas_dolor_cabeza = {name = "Pastillas para Dolor de Cabeza", effect = "reduce_dolor_cabeza"},
    jarabe_mareos = {name = "Jarabe para Mareos", effect = "reduce_mareos"},
    bebida_rehidratante = {name = "Bebida Rehidratante", effect = "reduce_deshidratacion"},
    inyeccion_soleada = {name = "Inyección para Insolación", effect = "reduce_insolacion"}
}

-- Configuración de notificaciones y animaciones
Config.NotificationDuration = 5000 -- Duración de las notificaciones en milisegundos

-- Carpeta de recursos para imágenes
Config.ResourceFolder = 'resources/images/items/'
