namespace :version do
	task :production => :delete do
		verbose(false) do
			HelperFunctions::msg("Building the production static version of the application")
			HelperFunctions::shell('find source/ -name .DS_Store -delete')	
			HelperFunctions::shell('middleman deploy')
		end
	end
end
