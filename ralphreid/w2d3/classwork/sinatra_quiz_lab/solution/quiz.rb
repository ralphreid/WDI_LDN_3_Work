require 'pry'
require 'sinatra'
require 'sinatra/contrib/all'

enable :sessions

set :questions, {
  1 => ["Ruby can use short easy to read syntax a.should > 7?", true),
  2 => ["Ruby can use use standardised libraries", true],
  3 => ["You can call blocks from within method using yield", true]
  4 => ["A two-dot range form creates a inclusive range", true]
  5 => ["Ranges can be conditions", true]
  6 => ["Enumerators in Ruby can generate infinite sequences", true]
  7 => ["A ruby itierator", true]
  8 => ["Ruby access control allows developers to choose how much of their classes are exposed", true]
  9 => ["File.new allows you to create a new file object", true]
  10 => ["Ruby is magic", true]

}

set :num_questions, settings.questions.length

get '/' do
  session['answers'] = {} # initialize the session storage
  erb :welcome
end

get '/questions/:question_id' do
  record_answer
  @question_id = params[:question_id].to_i
  @question = settings.questions[@question_id].first
  next_page = if @question_id >= settings.num_questions
    @next_path = "/result"
  else
    @next_path = "/questions/#{@question_id + 1}"
  end
  erb :question
end

get "/result" do
  record_answer
  @score = calculate_score
  @num_questions = settings.num_questions
  erb :result
end

private

def record_answer
  answered_question_id = params[:answered_question_id].to_i
  answer = params[:answer]
  if answered_question_id && answer
    session['answers'][answered_question_id] = answer
  end
end

def calculate_score
  session['answers'].reduce(0) do |score, (qid, ans)| #NOTE use of array assignment via (qid, ans)
    if ans == settings.questions[qid].last.to_s
      score += 1
    else
      score
    end
  end
end
