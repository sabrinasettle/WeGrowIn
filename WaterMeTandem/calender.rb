
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


#I NEED THIS TO DO THE THINGS
# str = "14 days"
# puts duration_to_days(str)
# i = duration_to_days(str);

def duration_to_days(string)
  items = string.split(' ')
  ret = items.shift.to_i
  ret
end

def startParsing
  i = 0
  $info_objects.each do |item|
    checkWaterAfter($info_objects[i], "14 days")
    checkWaterAfter($info_objects[i], "7 days")
    checkWaterAfter($info_objects[i], "3 days")
    checkWaterAfter($info_objects[i], "2 days")
    i += 1
  end
end

def checkWaterAfter(array, str)
  if array.water_after == str
    numDays = duration_to_days(str)
    fillArrays(array, numDays)
  end
end

def fillArrays(array, int)
  if int == 14
    plant_ft_arr = []
    plant_ft_arr << array.name
    pp plant_ft_arr
    ftDays(int)
  end
  if int == 7
    plant_sev_arr = []
    plant_sev_arr << array.name
    pp plant_sev_arr
    sevenDays(int)
  end
  if int == 3
    plant_th_arr = []
    plant_th_arr << array.name
    pp plant_th_arr
    threeDays(int)
  end
  if int == 2
    plant_th_arr = []
    plant_th_arr << array.name
    pp plant_th_arr
    twoDays(int)
  end
end

def ifWeekend()

end

# not gonna worry about the 1 week waterings or the 2 week ones as they wont fall on a weekend
def ftDays(int)
  # for or while loop that while the duration of time in the main project 
  # create dates for watering
  # decrement down with int = whatever(14? 7?)
  wateringDayFt = []
#   watering = $startDate + 14.days
end


def sevenDays(int)
  wateringDaySev = []
end


def threeDays(int)
  wateringDayThr = []
  ifWeekend()
end


#these may fall on a weekend, so I can do my if d.cwday == 6 || 7 or d.saturday? d.sunday? 
def twoDays(int)
  wateringDayTw = []
  ifWeekend()
end


startParsing