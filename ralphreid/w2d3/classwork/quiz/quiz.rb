require "pry"
require "pry-byebug"

require "sinatra"
require "sinatra/contrib/all"

set :questions, {
  1 => ['ruby is awesome?', true],
  2 => ['The code <pre><code>2+2</code></pre> gives the result <pre>4</pre>', true]
}

enable :sessions

# here are the handlers
get "/" do
  erb :welcome
end

get '/questions/:question_id' do
  handle_answer
  @question_id = params[:question_id].to_i
  @question = settings.questions[@question_id].first
  erb :question
  next_question_id = @question_id + 1
  @link = "/questions/next_question_id?



end

# /questions/2?answer_id=<%=@question_id%>&answer=false

def handle_answer

end