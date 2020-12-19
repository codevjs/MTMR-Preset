tell application "JSON Helper"
  set jsonData to fetch JSON from "https://pilkada2020.kpu.go.id/info/hhc/pkwkk/73.json"
  set tables to table of jsonData
  set blk to |7371| of tables
  set result to |1| of blk
  if result = missing value then
    set value to  0
  else
    set value to  result
  end if
  return value
end tell
