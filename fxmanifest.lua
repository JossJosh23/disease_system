-- fxmanifest.lua

fx_version 'cerulean'
game 'gta5'

author 'TuNombre'
description 'Sistema de Enfermedades y Tratamientos para FiveM'
version '1.2.0'

shared_script 'config.lua'

client_scripts {
    'client/main.lua',
    'client/zombie_behaviour.lua',
    'client/safe_zones.lua',
    'client/loot_system.lua',
    'client/sound_management.lua'
}

server_scripts {
    'server/main.lua',
    'server/sync.lua',
    'server/spawn_manager.lua'
}

files {
    'resources/images/items/medicina_fiebre.png',
    'resources/images/items/pastillas_dolor_cabeza.png',
    'resources/images/items/jarabe_mareos.png',
    'resources/images/items/bebida_rehidratante.png',
    'resources/images/items/inyeccion_soleada.png'
}

data_file 'DLC_ITYP_REQUEST' 'resources/images/items/'
