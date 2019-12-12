#!/usr/bin/env ruby

# data_hash = JSON.parse(File.read('file-name-to-be-read.json'))

# Then just map over the data!

# reviews = data_hash['sentiment_analysis'].first
# reviews.map do |sentiment, reviews|
#   puts "#{sentiment} #{reviews.map { |review| review['score'] }}"
# end

# https://stackoverflow.com/questions/25489804/creating-an-html-file-with-ruby



require 'rubygems'
require 'pp'
require 'date'
require 'json'
require 'active_support'
require 'erb'

#starts an internal server
require_relative 'server'




#all watered on the Monday at start
#No plants are watered on Saturday[6] or on Sunday[7] (.cwday)
cal_start = Date.new(2019, 12, 16)
cal_end = Date.new(2020, 1, 20)

info_object = JSON.parse(File.read('Apprentice_WeGrowInTandem_Data.json'))

#get rid of later
pp info_object

if (info_object)
    puts "yeah I exisit"
end

str = "14 days"


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


t = Time.now
puts t.day
puts t.month
puts t.hour


#days from the current day the converted str
# puts i.day.from_now
# puts today >> 5
# Date.today.prev_day



# class Launcher
# end

# launcher = Launcher.new

# def initialize cal_app 
#     @call_app = cal_app
#   end








template = File.read('./index.erb.html')
if (template)
    puts "hey"
end
result = ERB.new(template).result(binding)
if (result)
    puts "hey hey"
end

File.open('public_html/index.html', 'w+') do |f|
  f.write result
end



#Another way to do it but gross
# FileHtml = File.new("filename.html", "w+")

# fileHtml.write <<EOH
# <HTML>
# <HEAD>
# <style media='all' type='text/css'>
# body {font-family: Helvetica Neue, sans-serif; font-size: 18px; color: #525252; padding: 0; margin: 0;background: #f2f2f2;}
# .content {max-width:1180px; padding: 40px;}
# .div1 {margin-top: 28px; margin-bottom: 1px; background-color: #fff; padding: 10px 40px; padding-bottom: 8px; }
# .div2 {margin-top: 2px; height:25%; margin-bottom: 28px; background-color: #fff; padding: 10px 40px; padding-bottom: 8px; }
# .header {background-color: white; height: 16%; min-height: 110px; position: relative; width: 100%; -webkit-user-select: none;}
# .secondSection {background-color: #e8e8e8; height: 16%; min-height: 110px; position: relative; width: 100%; -webkit-user-select: none;}
# .pass {color: #ffffff; background: #34d9a2; padding: 10px 20px 10px 20px; text-decoration: none; width:50px;}
# .fail {color: #ffffff; background: #f25e6a; padding: 10px 20px 10px 20px; text-decoration: none; width:50px;}
# </style>
# </HEAD>
# <BODY>
# <DIV class='header'><img src='img.png' alt='logo'></div>
# <DIV class='secondSection'><p>#{dateTime}</p><p>#{platform}</p><p>#{log}</p></div>
# <DIV class='content'>
# <DIV class='div1'><h2>Test Case 001: name</h2></DIV>
# <DIV class='div2'><p class='pass'>#{pass}</p><p class='fail'>#{fail}</p></DIV>
# </DIV>
# </BODY></HTML>
# EOH

# fileHtml.close()