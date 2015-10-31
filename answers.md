# Q0: Why is this error being thrown? 
# Because a Pokemon model hasn't been generated.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
# The controller returns a random pokemon from the list of pokemon with a trainer field of nil. The common factor is that the trainer field must be nil.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
# It is giving the paramater id: @pokemon to the path /capture. This gives the current pokemon's id. It also sets the the HTTP request to patch.

# Question 3: What would you name your own Pokemon?
# Rubew

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
# I passed in a trainers_path with :trainer.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
