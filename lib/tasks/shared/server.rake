namespace :server do
	task :development => :delete do
		verbose(false) do
			RakeHelpers::msg("Cranking up the development server running on port 4567")
			RakeHelpers::msg("Open your browser to http://localhost:4567/")
			RakeHelpers::shell('middleman server -e development')
		end
	end
	task :build => :delete do
		verbose(false) do
			RakeHelpers::msg("Building static files, but I will not be starting the server")
			RakeHelpers::shell('middleman build --verbose')
		end
	end
end
