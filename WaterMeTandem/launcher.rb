#!/usr/bin/env ruby

# https://stackoverflow.com/questions/25489804/creating-an-html-file-with-ruby
# https://stackoverflow.com/questions/4654457/how-to-add-10-days-to-current-time-in-rails
# https://stackoverflow.com/questions/1489826/how-to-get-the-number-of-days-in-a-given-month-in-ruby-accounting-for-year

# http://www.korenlc.com/nested-arrays-hashes-loops-in-ruby/


#https://stackoverflow.com/questions/3022163/how-do-i-get-name-of-the-month-in-ruby-on-rails

require 'rubygems'
require 'pp'
require 'date'
require 'time'
require 'json'
require 'ostruct'
require 'active_support/all'
require 'erb'



#waterings sets up arrays of the dates to water plants
require_relative 'waterings'

#calender is info needed to create the represtation of the calender
require_relative 'calender'

#Rendering the ERB partial in a regular html file for rendering
template = File.read('./index.erb.html')

result = ERB.new(template).result(binding)

File.open('public_html/index.html', 'w+') do |f|
  f.write result
end

#starts an internal server
require_relative 'server'













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