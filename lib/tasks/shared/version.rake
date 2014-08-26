namespace :version do
	task :production => :delete do
		verbose(false) do
			RakeHelpers::msg("Building the production static version of the application")
			RakeHelpers::shell('find source/ -name .DS_Store -delete')	
			RakeHelpers::shell('middleman deploy')
		end
	end
end
