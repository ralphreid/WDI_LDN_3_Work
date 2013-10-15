class JourneyController < ApplicationController

  def index

    # @calculation = calculation station_start station_start

    respond_to do |format|
      format.html
    end
  end


  # def calculation station_start station_end
  
  #   stations = {
  #     "Line N - Times Square" => 4, 
  #     "Line N - 34th" => 3,
  #     "Line N - 28th" => 2, 
  #     "Line N - 23rd" => 1,
  #     "Line N - Union Square" => 0, 
  #     "Line N - 8th" => -1,
  #     "Line L - 8th" => 2,
  #     "Line L -6th" => 1,
  #     "Line L -Union Square" => 0,
  #     "Line L -3rd" => -1,
  #     "Line L -1st" => -2,
  #     "Line 6 -Grand Central" => 3,
  #     "Line 6 -Grand Central33rd" => 2,
  #     "Line 6 -Grand Central28th" => 1,
  #     "Line 6 -Grand CentralUnion Square" => 0,
  #     "Line 6 -Grand CentralAstor Place" => -1
  #     }

  #   start_distance = stations[station_start]
  #   station_end = stations[station_end]

  #   total_stops = start_distance - end_distance
  # end




end