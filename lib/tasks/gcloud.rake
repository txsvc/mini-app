# typed: false
namespace :gcloud do
    desc 'Deploy to Google App Engine'
    
    task :deploy do
        puts 'Clean assets'
        `RAILS_ENV=production bundle exec rake assets:clean && bundle exec rake assets:clobber`

        puts 'Build assets'
        `RAILS_ENV=production bundle exec rake assets:precompile`
    
        puts 'Deploy to Google AppEngine'
        opts = ''
        project_id = ENV['PROJECT_ID']
        opts = "--project=#{project_id}" unless project_id.nil?
  
        cmd = "gcloud app deploy app.yaml -q #{opts}"

        puts "\nExecuting '#{cmd}'"
        ok = system(cmd)
    end
  end