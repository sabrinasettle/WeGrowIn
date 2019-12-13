
$info_objects = JSON.parse(File.read('Apprentice_WeGrowInTandem_Data.json'), object_class: OpenStruct)

#get rid of later
# pp $info_objects[1]




#the array is nested


#all watered on the Monday at start
#No plants are watered on Saturday[6] or on Sunday[7] (.cwday)
$startDate = Date.new(2019, 12, 16)
$endDate = Date.new(2020, 3, 9)

days = $endDate - $startDate
days.class
$duration = days.to_i
$numOfWeeks = $duration / 7

$Dec = Time.days_in_month(12, 2019)
$Jan = Time.days_in_month(1, 2020)
$Feb = Time.days_in_month(2, 2020)
$Mar = Time.days_in_month(3, 2020)


$currentDay = DateTime.now



# $startDate + 7.days

#Time play
t = Time.now
puts day_date: t.day
puts month: t.month
puts hour: t.hour

t = Time.now
d = t.day
m = t.month
y = t.year

d = t.end_of_month.day
puts day: d

puts Time.days_in_month(Time.now.month, Time.now.year)
# number_of_days = Date.civil(y, m, -1).day

# puts lenDays.to_i

#I NEED THIS TO DO THE THINGS
str = "14 days"

def duration_to_days(string)
  items = string.split(' ')
  ret = items.shift.to_i
  ret
end

puts duration_to_days(str)
i = duration_to_days(str);


#create 4 arrays for each set of watering times that have the name of the plant in them

def sevendays()
  i = 0;
  str = "7 days"
  #for each seven day plants
  watering = $startDate + 7.days
  # for item in $info_objects

  # end
  $info_objects.each do |item|
  #   puts "The current array item is: #{item}"
    if $info_objects[i].water_after == str
      puts "I am equal"
      daysseven = []
      
    end
    i += 1
  end
end

puts sevendays
# def 14_days()

# end

# def 3_days()

# end

# def 2_days()

# end
