# Q0: Why is this error being thrown?
There is no Pokemon model or controller, so Rails throws an error.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
The random Pokemon are generated in the home_controller, and then rendered by the index.html.erb file. All possible Pokemon do not have trainers.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
The line renders a button which calls the capture method. It looks for a route to patch a request to /pokemons/capture.

# Question 3: What would you name your own Pokemon?
pokemon.name

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed in the trainer path into the redirect_to. It needed a current trainer.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
Flash messages are created in views/layouts/application.html.erb. By adding this line in the pokemons_controller, we can also render that error message.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
https://github.com/leonk7/proj1
