race_array = ["P C",
              "M C",
              "M Van D",
              "X C"]

def horse_racing_format!(race_array)
  number_of_horses = race_array.length

  race_array.reverse!

  race_array.map! do |horse|
    "#{number_of_horses - race_array.index(horse)} - #{horse}!"
  end
end

p horse_racing_format!(race_array)
