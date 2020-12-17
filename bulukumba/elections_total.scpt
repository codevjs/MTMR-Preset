tell application "JSON Helper"
  set jsonData to fetch JSON from "https://pilkada2020.kpu.go.id/info/hhc/pkwkk/73.json"
  set progress to table_progres of jsonData
  set blk to |7302| of progress
  return blk
end tell
