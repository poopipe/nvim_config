" Root config location
let s:config_path = expand('<sfile>:p:h')
 
" Start loading our lua configs
exec 'source' s:config_path . '/lua/init.lua'
