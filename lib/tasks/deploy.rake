namespace :deploy do
	desc 'Build the production static version of the application + deploy to github pages'
	task :gh do
		Rake::Task['version:production'].invoke
	end
end
