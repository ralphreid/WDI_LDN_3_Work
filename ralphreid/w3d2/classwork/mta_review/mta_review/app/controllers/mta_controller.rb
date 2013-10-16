class MtaController < ApplicationController

  def index

  end

  def create
    @number_of_stations = number_of_stations params[:start_line].to_sym, params[:start_station], params[:end_line].to_sym, params[:end_station]
    render :index
  end

  def number_of_stations start_train, stop_a, stop_train, stop_b

    mta = {
      n:['ts', '34th', '28th-n', '23rd-n', 'us', '8th'],
      l:['8th', '6th', 'us', '3rd', '1st'],
      s:['gc', '33rd', '28th-s', '23rd-s', 'us', 'ap']
    }

    intersection = (mta[start_train] & mta[stop_train]).first
    if start_train != stop_train
      stop_a_index = mta[start_train].index(stop_a)
      stop_a_intersection_index = mta[start_train].index(intersection)
      trip_a_length = (stop_a_index - stop_a_intersection_index).abs

      stop_b_index = mta[stop_train].index(stop_b)
      stop_b_intersection_index = mta[stop_train].index(intersection)
      trip_b_length = (stop_b_index - stop_b_intersection_index).abs

      length_of_trip = trip_a_length + trip_b_length
    else
      stop_a_index = mta[start_train].index(stop_a)
      stop_b_index = mta[stop_train].index(stop_b)
      puts stop_a_index
      puts stop_b_index
      length_of_trip = (stop_a_index - stop_b_index).abs
    end
    
    length_of_trip

  end

end
