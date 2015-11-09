#!/usr/bin/env ruby

require 'rubygems'
require 'sinatra'

set :bind, '0.0.0.0'

get '/' do
   Dir.entries('.').map { |e| "<p>#{e}</p>" }
end
