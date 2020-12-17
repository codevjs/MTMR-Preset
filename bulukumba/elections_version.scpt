tell application "JSON Helper"
  set jsonData to fetch JSON from "https://pilkada2020.kpu.go.id/info/hhc/pkwkk/73.json"
  set versi to table_ts of jsonData
  set blk to |7302| of versi
  return "Versi " & blk
end tell
