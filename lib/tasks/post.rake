namespace :post do

  desc 'Create a new post passing the title as rake post:new["title"]'
  task :new, [:title] do |t,args|
		title = args.title.downcase
		RakeHelpers::shell("middleman article '#{title}'")
	end

end
