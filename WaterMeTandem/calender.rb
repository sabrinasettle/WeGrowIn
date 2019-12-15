$numOfWeeks = $duration / 7


$Dec = Time.days_in_month(12, 2019)
$Jan = Time.days_in_month(1, 2020)
$Feb = Time.days_in_month(2, 2020)
$Mar = Time.days_in_month(3, 2020)
$lenOfMonths = [$Dec, $Jan, $Feb, $Mar]

$numOfMonths = 4

def setFirst
    base = Date.civil(2019, 12, 1)
    p $lastDay = base.end_of_month
    $firstDay = base.at_beginning_of_month

    # monthYear = $firstDay.strftime("%B %Y")
end

# def offset(month, year) #to calculate the offset of the first week
#     start = Date.new(year, month).wday
#     case start 
#     when 0
#       6
#     when 1
#       0
#     when 2
#       1
#     when 3
#       2
#     when 4
#       3
#     when 5
#       4
#     when 6
#       5
#     end 
# end 

def monthInfo
    setFirst

    $firstDays = []
    $lastDays = [] 
    $monthTitles =[]
    daysOfWeek = []

    # p $lastDay
    
    1.times do |month|
        # $firstDays << $firstDay.strftime("%Y-%m-%d")
        $firstDays << $firstDay
        $lastDays << $lastDay
        $monthTitles << $firstDay.strftime("%B %Y")
    end
    3.times do |month|
        # $firstDays << i.strftime("%Y-%m-%d")
        $firstDays << $firstDay += 1.month
        $lastDays << $lastDay += 1.month
        $monthTitles << $firstDay.strftime("%B %Y")
    end

    # YYYY-MM-DD
    
    # local_offset = offset(month, year)
    # dates = [nil] * local_offset + (1..$Dec).to_a
    # pp dates
    # pp $monthTitles
    # pp $firstDays
    # pp $lastDays
end

monthInfo


#This way its going over the expected array
# $Jan.times do |day|
    # p $firstDays[1] += 1.days
# end 


# A function to be given the incremented int from the html
# give it the array number???
# def Dates(int)
#    array = [$firstDays[int]]
#    array << $firstDays[int] += 1.day
#    pp array
# end

# Dates(0)





# June = [*1..5]

$currentDay = DateTime.now
# p $currentDay

d = Time.now.end_of_month.day
# puts day: d

Date.today.strftime("%Y%m")
# => "201407"
# p Date.today.next_month.strftime("%B")


$wateringDayFt
# pp $plant_ft_arr

$wateringDaySev
# pp $plant_sev_arr

$wateringDayThr
# $plant_th_arr

$wateringDayTw
# $plant_tw_arr
