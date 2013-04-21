# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Carouser::Application.initialize!
Time::DATE_FORMATS[:time] = "%l:%M %p"