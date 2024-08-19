-- server/main.lua - Manejo de Enfermedades en el Servidor

-- Evento para aplicar enfermedad a un jugador
RegisterServerEvent('zombie:applyDisease')
AddEventHandler('zombie:applyDisease', function(disease)
    local source = source
    TriggerClientEvent('zombie:applyDisease', source, disease)
end)

-- Evento para tratar la enfermedad
RegisterServerEvent('zombie:applyTreatment')
AddEventHandler('zombie:applyTreatment', function(treatment)
    local source = source
    TriggerClientEvent('zombie:applyTreatment', source, treatment)
end)
