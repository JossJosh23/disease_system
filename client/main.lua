-- client/main.lua - Manejo de Enfermedades y Tratamientos

local playerState = {
    infected = false,
    disease = nil,
    diseaseStartTime = 0
}

-- Función para aplicar enfermedad
function ApplyDisease(disease)
    if playerState.infected then return end

    playerState.infected = true
    playerState.disease = disease
    playerState.diseaseStartTime = GetGameTimer()
    TriggerEvent('zombie:notify', '¡Has contraído ' .. Config.Diseases[disease].name .. '! Encuentra tratamiento pronto.')
end

-- Función para tratar una enfermedad
function TreatDisease(treatment)
    if not playerState.infected then return end

    local disease = playerState.disease
    local treatmentConfig = Config.Treatments[treatment]
    
    if disease and treatmentConfig and treatmentConfig.effect == Config.Diseases[disease].treatment then
        -- Aplicar tratamiento
        TriggerEvent('zombie:notify', 'Tratamiento aplicado: ' .. treatmentConfig.name)
        playerState.infected = false
        playerState.disease = nil
        playerState.diseaseStartTime = 0
    end
end

-- Manejo de síntomas
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000)

        if playerState.infected then
            local elapsedTime = (GetGameTimer() - playerState.diseaseStartTime) / 1000
            local disease = playerState.disease

            if disease then
                -- Aplicar síntomas de enfermedad
                if Config.Diseases[disease].symptoms then
                    for _, symptom in ipairs(Config.Diseases[disease].symptoms) do
                        -- Lógica para aplicar síntomas
                        -- Por ejemplo, reducción gradual de la salud o efectos visuales
                    end
                end

                -- Ejemplo: Aplicar fiebre
                if disease == "fever" and elapsedTime > 600 then
                    -- Lógica para aplicar fiebre
                end
            end
        end
    end
end)

-- Función para mostrar notificaciones
RegisterNetEvent('zombie:notify')
AddEventHandler('zombie:notify', function(message)
    -- Mostrar notificación en pantalla
    -- Ejemplo: TriggerEvent('mythic_notify:client:SendAlert', { type = 'inform', text = message, length = Config.NotificationDuration })
end)
