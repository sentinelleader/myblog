module RakeHelpers

	# Permitted environments
	def environments(env, restrict: nil)
		env = "development" unless env.to_s == ''
		approved_environments = ["development", "test", "production"]
		if approved_environments.include?(env)
			if env == "production" && restrict == "production"
				error(env.capitalize + " environment not allowed for this task")
				exit
			else
				puts
				msg("Environment parameter is valid")
				return env
			end
		else
			error("Invalid environment parameter")
			exit
		end
	end

	# Console message handler
	def msg(txt, periods: "yes", new_line: "yes")
		txt = txt + "..." if periods == "yes"
		puts "===> " + txt
		puts if new_line == "yes"
	end
	def error(reason)
		puts "**** ERROR! ABORTING: " + reason + "!"
	end

	# Execute Shell Commands
	def shell(cmd, step: nil)
		msg("Starting step #{step}", new_line: "no") if step.to_s == ''
		if ENV['TRY']
			puts "**>> " + cmd
		else
			puts "-->> " + cmd
			system(cmd)
		end
		msg("#{step} completed!", periods: "no")
	end

end
