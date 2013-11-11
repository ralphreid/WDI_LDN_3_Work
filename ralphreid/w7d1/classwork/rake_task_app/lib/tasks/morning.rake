namespace :morning do 

  desc "turning off the alarm"
  task :turn_off_alarm do
    puts "Turned off alarm. Would have liked 5 more mins, though"
  end

  desc 'brewing like a barista'
  task :make_coffee do
    cups = ENV['COFFEE_CUPS'] || 2
    puts "made #{cups} of coffee."
  end

  task :ready_for_the_day => [ :turn_off_alarm, :make_coffee] do
    puts "ready for the day"
  end
end