

$Dec = [*16..31]
$Jan = [*1..31]
$Feb = [*1..29]
$Mar = [*1..9]
$numOfDays = [*1..7]


#all watered on the Monday at start
#No plants are watered on Saturday[6] or on Sunday[7] (.cwday)
$startDate = Date.new(2019, 12, 16)
$endDate = Date.new(2020, 3, 9)

days = $endDate - $startDate
days.class
$duration = days.to_i
$numOfWeeks = $duration / 7


puts $duration
puts $numOfWeeks

$currentDay = DateTime.now

# COMMON_YEAR_DAYS_IN_MONTH = [nil, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

# def days_in_month(month, year = Time.now.year)
#    return 29 if month == 2 && Date.gregorian_leap?(year)
#    COMMON_YEAR_DAYS_IN_MONTH[month]
# end






t = Time.now
d = t.day
m = t.month
y = t.year


# days = Date.new(t.end_of_month.day)
# puts days

# puts Time.days_in_month(Time.now.month, Time.now.year)
# number_of_days = Date.civil(y, m, -1).day

# puts lenDays.to_i

#I NEED THIS TO DO THE THINGS
str = "14 days"

# info_object({:water_after =>})

def duration_to_days(string)
  items = string.split(' ')
  ret = items.shift.to_i
  # items.each_with_index do |item, index|
    # ret += item.to_i * 60 ** (index + 1)
  # end
  ret
end


puts duration_to_days(str)
i = duration_to_days(str);


# Trying to get a duration from the current day
# puts Time.now + duration_to_days(str).days

# puts DateTime.now.from_now(i)

#Time play
t = Time.now
puts day_date: t.day
puts month: t.month
puts hour: t.hour

now = DateTime.now
puts date_time: now.to_s


#days from the current day the converted str
# fourteen = Date.new(i.days.from_now)
# puts today >> 5
# Date.today.prev_day


# def 7_days(int)

# end

# def 14_days(int)

# end

# def 3_days(int)

# end

# def 2_days(int)

# end
