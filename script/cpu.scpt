set cpu to do shell script "ps axo %cpu | awk '{s+=$1}END{print s}'"
return cpu & "%"