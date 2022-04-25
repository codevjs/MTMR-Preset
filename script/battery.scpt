set theList to paragraphs of text of (do shell script "pmset -g batt")
set Power to "No"
set Status to "Yes_Normal"
set Pct to 0
if theList's item 1 contains "AC Power" and theList's item 2 contains "; charging" then
  set Power to "Yes"
else
  set Power to "No"
end if
set Pct to (do shell script "pmset -g batt | grep -Eo \"\\d+%\" | cut -d% -f1")

-- Battery charged & Battery percent normal
if Pct > 29 then
  if  Pct < 86 then
    if Power = "Yes" then
      set Status to "Yes_Normal"
    end if
    if Power = "No" then
      set Status to "No_Normal"
    end if
  end if
end if

-- Battery charged & Battery 100 percent
if Pct = "100" then
  if Power = "Yes" then
    say "Sir, the battery is above 85%"
    set Status to "Yes_More"
  end if
  if Power = "No" then
    set Status to "No_More"
  end if
end if

-- Battery charged & Battery percent less then 30
if Pct < 30 then
  if Power = "Yes" then
    set Status to "Yes_Less"
  end if
  if Power = "No" then
    if Pct ≠ "100" then
      say "sir, the battery is below 30%"
      set Status to "No_Less"
    end if
  end if
end if

-- Battery charged & Battery percent more then 80
if Pct > 85 then
  if Power = "Yes" then
    say "Sir, the battery is above 85%"
    set Status to "Yes_More"
  end if
  if Power = "No" then
    set Status to "No_More"
  end if
end if

return {Pct & "%", Status}