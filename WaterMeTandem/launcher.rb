#!/usr/bin/env ruby

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
