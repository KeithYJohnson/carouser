require 'machinist/active_record'

Event.blueprint do
	title {"Bday Bash"}
		# {%w("Happy Hour" "A Party" "Readathon")}
	foldable { true }
	where { "Beecher's Cheese"}
end



# Add your blueprints here.
#
# e.g.
#   Post.blueprint do
#     title { "Post #{sn}" }
#     body  { "Lorem ipsum..." }
#   end
