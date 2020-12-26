set val to {"water pump", "off"}

do shell script "curl -X POST https://maker.ifttt.com/trigger/turn_on_water_pump/with/key/cH2Fz9SicoQQ3Ef6FQtBH1"

say "the water pump is turned on."

return val