require "pry"

def get_first_name_of_season_winner(data, season)
  # code here
  winner = ""
  data.each do |season_number, detail|
  	if season_number.to_s == season
  		detail.each do |contestant|
  			contestant.each do |attribute, value|
  				if data[season_number][0][attribute] == "Winner"
  					winner = data[season_number][0]["name"]
  				end
  			end
  		end
  	end
  end
  return winner.split(" ").first
end


def get_contestant_name(data, occupation)
  # code here
  woman_name = ""
  data.each do |season_number, detail|
  	detail.each do |contestant|
  		contestant.each do |attribute, value|
  			if value == occupation
  				woman_name = contestant["name"]
  			end
  		end
  	end
  end
 return woman_name
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |season_number, detail|
  	detail.each do |contestant|
  		contestant.each do |attribute, value|
  			if value == hometown
  				counter += 1
  			end
  		end
  	end
  end
  return counter
end

def get_occupation(data, hometown)
  # code here
  occupation = []
  data.each do |season_number, detail|
  	detail.each do |contestant|
  		contestant.each do |attribute, value|
  			if value == hometown
  				occupation << contestant["occupation"]
  			end
  		end
  	end
  end
  return occupation.first
end

def get_average_age_for_season(data, season)
  # code here
  ages_of_contestants = []
  data.each do |season_number, detail|
  	if season_number.to_s == season
  		detail.each do |contestant|
  			contestant.each do |attribute, value|
  				if value == contestant["age"]
  					ages_of_contestants << value.to_i
  				end
  			end
  		end
  	end
  end
  average = ages_of_contestants.inject { |sum, i| sum + i }.to_f / ages_of_contestants.size
  return average.round
end
