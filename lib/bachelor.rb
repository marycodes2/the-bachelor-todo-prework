'''data = { 
  "season 30": [
    {
      "name":      "Beth Smalls",
      "age":       "26",
      "hometown":  "Great Falls, Virginia",
      "occupation":"Nanny/Freelance Journalist",
      "status":    "Winner"
    },
    {
      "name":       "Becca Tilley",
      "age":        "27",
      "hometown":   "Shreveport, Louisiana",
      "occupation": "Chiropractic Assistant",
      "status":     "Eliminated Week 8"
    }
  ],
  "season 29": [
    {
      "name":      "Ashley Yeats",
      "age":       "24",
      "hometown":  "Denver, Colorado",
      "occupation":"Dental Assitant",
      "status":    "Winner"
    },
    {
      "name":       "Sam Grover",
      "age":        "29",
      "hometown":   "New York, New York",
      "occupation": "Entertainer",
      "status":     "Eliminated Week 6"
    }
  ]
}'''
def get_first_name_of_season_winner(data, season)
  return_value = "No winners this season!"
  data.each do |season_in_hash, contestant_array|
    if season_in_hash.to_s == season
      contestant_array.each do |contestant|
        if contestant[:status] == "Winner"
          winning_contestant = contestant[:name]
          winning_contestant = winning_contestant.split(" ")
          return_value = winning_contestant[0]
        end
      end 
    end
  end
  return_value
end

#puts get_first_name_of_season_winner(data, "season 30")


def get_contestant_name(data, occupation)
  return_value = "No contestant with that occupation!"
  data.each do |season_in_hash, contestant_array|
      contestant_array.each do |contestant|
        if contestant[:occupation] == occupation
          return_value = contestant[:name]
        end
      end 
    end
  return_value
end

#puts get_contestant_name(data, "Chiropractic Assistant")

def count_contestants_by_hometown(data, hometown)
  count_of_contestants_from_hometown = 0
  data.each do |season_in_hash, contestant_array|
    contestant_array.each do |contestant|
      if contestant[:hometown] == hometown
        count_of_contestants_from_hometown += 1
      end
    end
  end
  count_of_contestants_from_hometown
end

#puts count_contestants_by_hometown(data, "Denver, Colorado")

def get_occupation(data, hometown)
  return_value = "No contestants from tat hometown"
  data.each do |season_in_hash, contestant_array|
    contestant_array.each do |contestant|
      if contestant[:hometown] == hometown
        return_value = contestant[:occupation]
      end
    end
  end 
  return_value
end

#puts get_occupation(data, "Denver, Colorado")

def get_average_age_for_season(data, season)
  array_of_ages = []
  average = 0
   data.each do |season_in_hash, contestant_array|
     if season_in_hash.to_s == season
      contestant_array.each do |contestant|
        array_of_ages << contestant[:age].to_f
      end 
      average = (array_of_ages.inject{ |sum, num| sum + num }.to_f / array_of_ages.size).round
    end
  end
  average
end 

#puts get_average_age_for_season(data, "season 30")

