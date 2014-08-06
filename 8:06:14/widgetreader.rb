# ## 1. Data, data, data
#
# Take a look at the included `widgets.yml` file. Write a Ruby
# script to find
#
# * The most and least expensive widget
# * The total revenue and profit from all widgets sold
# * The top 10 best selling widgets
# * The number of widgets sold in each department
#
# You'll need to -
#
# Read the list of widgets from the YAML file: http://ruby-doc.org/stdlib-1.9.3/libdoc/yaml/rdoc/YAML.html
# Use appropriate methods from Enumerable: http://ruby-doc.org/core-2.1.2/Enumerable.html (lists are Enumerable!)

include Enumerable
require "yaml"

widget_list = YAML::load(File.open("widgets.yml"))

puts "Most Expensive Item"
puts "Name: #{widget_list.max_by { |item| item[:price] }[:name]}"
puts "Price: #{widget_list.max_by { |item| item[:price] }[:price]}"
puts
puts "Cheapest Item"
puts "Name: #{widget_list.min_by { |item| item[:price] }[:name]}"
puts "Price: #{widget_list.min_by { |item| item[:price] }[:price]}"
puts
puts "Revenue: #{widget_list.collect { |i| i[:price]*i[:sold] }.reduce(:+).to_i}"
puts
puts "Profit: #{widget_list.collect { |i| (i[:price]-i[:cost_to_make])*i[:sold] }.reduce(:+).to_i}"
puts
puts "Ten Best Selling Widgets"
widget_list.sort_by { |i| -i[:sold] }.first(10).each { |i| puts "#{i[:name]} Units(#{i[:sold]})"}
puts
puts "Departments: "
departments = widget_list.group_by{|x| x[:department]}
departments.each do |d, h|
  n = h.reduce(0){|x, y| x + y[:sold]}
  puts "#{d} - #{n} widgets sold"
end
