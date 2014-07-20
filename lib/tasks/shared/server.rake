namespace :server do
	task :development => :delete do
		verbose(false) do
			HelperFunctions::msg("Cranking up the development server running on port 4567")
			HelperFunctions::msg("Open your browser to http://localhost:4567/")
			HelperFunctions::shell('middleman server -e development')
		end
	end
	task :build do
		verbose(false) do
			HelperFunctions::msg("Building static files, but I will not be starting the server")
			HelperFunctions::shell('middleman build')
		end
	end
end
