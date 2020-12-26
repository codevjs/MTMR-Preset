set val to {"water pump", "on"}

do shell script "curl -X POST https://maker.ifttt.com/trigger/turn_off_water_pump/with/key/cH2Fz9SicoQQ3Ef6FQtBH1"

--& system attribute "IFTTT_API_KEY"

say "the water pump is turned off."

return val