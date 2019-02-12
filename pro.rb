#!/usr/bin/ruby
#
#
#
require 'net/ssh'
require 'set'
require 'rexml/document'
require 'json'
require 'csv'
require "pry-byebug"
#require 'nokogiri'
#csv.new

test = "/tmp/file1.csv"

Net::SSH.start("localhost") do |ssh| # create ssh connection.
    puts "Starting xx"
    result = ssh.exec!("ls -l")
    #puts result
    puts "files listed"
    ssh.exec!("cp /home/mprak/file.csv /tmp/file1.csv")
    ssh.exec!("cp /home/mprak/file1.xml /tmp/file1.xml")

    puts "transfer complete"
end

system 'cat /tmp/file1.csv'
system( 'cat /tmp/file1.xml')

# xml data file to csv


csv_file = File.new("/tmp/showcase.txt", "w")
xml = REXML::Document.new(File.open("/tmp/file1.xml"))
binding.pry
xml.elements().each do |line|
    puts line
    csv_file.puts line.elements.text  
end


#xmlfile = File.new( "/tmp/file1.xml" )
#doc = REXML::Document.new xmlfile

# csv data file

unique = Set.new   # collection with no dups.

Dir.glob('/tmp/file1.csv') do |f|
  File.foreach(f) { |l| unique << l }
end

File.write('unique.csv', unique.sort.join) # create new csv.

# join csv data


# format csv file as JSON

puts 'completed' 
