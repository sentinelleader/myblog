desc 'Start up the server locally with live reload for development.'
task :development do
	Rake::Task['server:development'].invoke
end

desc 'Building the production static version of the application'
task :build do
	Rake::Task['server:build'].invoke
end
