require 'open-uri'
require 'json'

RushingStat.delete_all

file = File.read("rushing.json")
parsedData = JSON.parse(file)
  parsedData.each do |stat|
  RushingStat.create(
      {
        player: stat["Player"],
        team: stat["Team"],
        position: stat["Pos"],
        attempts: stat["Att"],
        attempts_per_game: stat["Att/G"],
        yds: stat["Yds"],
        avg: stat["Avg"],
        yds_per_game: stat["Yds/G"],
        td: stat["TD"],
        lng: stat["Lng"],
        first_downs: stat["1st"],
        first_down_percentage: stat["1st%"],
        rushes_gt_twenty_yds: stat["20+"],
        rushes_gt_forty_yds: stat["40+"],
        fumbles: stat["FUM"],
      }
  )
end
puts "seed completed successfully!"