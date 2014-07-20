desc 'Start up the server locally with live reload for development.'
task :development do
	Rake::Task['server:development'].invoke
end
