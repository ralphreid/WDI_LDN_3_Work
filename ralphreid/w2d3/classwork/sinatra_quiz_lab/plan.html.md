# Ruby Quiz Lab

## Framing

Now we'll practice:

* templating web-pages
* styling them
* sinatra routing
* session management
* passing and receiving parameters in a url

## Activities

* `gem install sinatra-contrib` if you haven't already
* discuss what pages are needed
  * welcome
  * question
  * result
* discuss way in which we can record the answers
  * how do we pass the user's answer to the server?
  * how can we store the user's answers?
* build a basic welcome page
  * layout first
  * then welcome
  * MAKE SURE THEY ADD THEIR NAME TO PAGE i.e. "Jon's Quiz"
* create the handler in quiz.rb
* now build the question pages...
  * idea of storing questions in a setting
  * using a Hash rather than Array so indexing is simple
  * dynamic path design
  * get page working, showing just the question text for now
  * now link welcome to the first question
  * discuss code to add link to next question or result
  * discuss parameter passing from question page
* now discuss results page
  * sketch out the page
  * needs to display a score
  * we need to compute that score using their past answers
  * so we need to record each answer on the page request AFTER they answer
  * so need to record answer in both question AND result page handlers - hint at DRY
* leave them to it
  * need to finish backend code
  * style frontend
  * when finished flesh out with 10 challenging ruby questions
* review solution
  * get them all to fix their code if they can
  * distribute solution
  * if you got your code working use it
  * if not, replace the questions in the solution with your own
  * ask someone to run the lab partner app and post groups on hipchat
  * invite them to use their partners quiz
  * but don't just pass laptop to them...
  * we'll connect using the local intranet
  * everyone enter `ifconfig a` into a terminal
  * that's information about your networking setup
  * run `ifconfig -a | grep "inet 10.0" ` to get just the line we're interested in
  * the first IP address 10.0.1.xxx is your local IP address
  * we're going complete our partner's quiz by visiting:
  * http://10.0.1.xxx
  * but first we need to restart sinatra with an extra flag
  * restart it with: `ruby quiz.rb -o 0.0.0.0`
* survival of the rubyest
  * do each other's quiz
  * whoever got the highest score wins (if drawn they both win)
  * through to the next round
  * regroup by modifying app
  * keep playing until we have a single winner or everyone is drawn.