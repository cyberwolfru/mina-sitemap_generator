namespace :sitemap do
  desc "Generate sitemaps but don't ping search engines."
  task :create => :environment do
    command %{
      echo "-----> Generate sitemaps but don't ping search engines."
      cd "#{fetch(:current_path)}"
      #{echo_cmd %[#{fetch(:rake)} sitemap:refresh:no_ping]}
    }
  end

  desc 'Generate sitemaps and ping search engines.'
  task :refresh => :environment do
    command %{
      echo "-----> Generate sitemaps and ping search engines."
      cd "#{fetch(:current_path)}"
      #{echo_cmd %[#{fetch(:rake)} sitemap:refresh]}
    }
  end

  desc 'Delete all Sitemap files in public/ directory'
  task :clean => :environment do
    command %{
      echo "-----> Delete all Sitemap files in public/ directory"
      cd "#{fetch(:current_path)}"
      #{echo_cmd %[#{fetch(:rake)} sitemap:clean]}
    }
  end
end
