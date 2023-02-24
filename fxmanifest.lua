fx_version 'cerulean'
games { 'gta5' }
author 'Thedoc'
client_scripts {
    'client/**'
}

server_scripts {
    'server/**'
}

shared_scripts{
    '@es_extended/imports.lua',
    'config.lua'
}
lua54 'yes'

escrow_ignore {
    'config.lua'
  }

dependencies {'es_extended', 'baseevents'}