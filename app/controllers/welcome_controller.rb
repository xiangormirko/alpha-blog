class WelcomeController < ApplicationController
  
  def home 
    5.times { |i| puts i }
  end
  
  def about
    5.times do |i|
      puts "ciao"
    end
  end
  
end
