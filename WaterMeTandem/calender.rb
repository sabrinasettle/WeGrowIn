$currentDay = DateTime.now

$numOfWeeks = $duration / 7

$Dec = Time.days_in_month(12, 2019)
$Jan = Time.days_in_month(1, 2020)
$Feb = Time.days_in_month(2, 2020)
$Mar = Time.days_in_month(3, 2020)
$lenOfMonths = [$Dec, $Jan, $Feb, $Mar]

$numOfMonths = 4

# Arrays of Dates for the palnts to be watered on
$wateringDayFt
$wateringDaySev
$wateringDayThr
$wateringDayTw

# Arrays of the palnt names determined by their watering duration
$plantsFtArr 
$plantsSevArr 
$plantsThArr
$plantsTwArr

def setFirst
    base = Date.civil(2019, 12, 1)
    $lastDay = base.end_of_month
    $firstDay = base.at_beginning_of_month
end

def monthInfo
    setFirst

    $firstDays = []
    $lastDays = [] 
    $monthTitles =[]
    daysOfWeek = []
    
    1.times do |month|
        $firstDays << $firstDay
        $lastDays << $lastDay
        $monthTitles << $firstDay.strftime("%B %Y")
    end
    3.times do |month|
        $firstDays << $firstDay += 1.month
        $lastDays << $lastDay += 1.month
        $monthTitles << $firstDay.strftime("%B %Y")
    end
    $lastDays[3] += 2.days
end

monthInfo
