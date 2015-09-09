require 'mina/rvm'

namespace :sitemap do
  # sitemap:create
  desc "Generate sitemaps but don't ping search engines."
  task :create => :environment do
    queue %{
      echo "-----> Generate sitemaps but don't ping search engines."
      cd "#{deploy_to}/#{current_path}"
      #{echo_cmd %[#{rake} sitemap:refresh:no_ping]}
    }
  end

  # sitemap:refresh
  desc "Generate sitemaps and ping search engines."
  task :refresh => :environment do
    queue %{
      echo "-----> Generate sitemaps and ping search engines."
      cd "#{deploy_to}/#{current_path}"
      #{echo_cmd %[#{rake} sitemap:refresh]}
    }
  end

  # sitemap:clean
  desc "Delete all Sitemap files in public/ directory"
  task :clean => :environment do
    queue %{
      echo "-----> Delete all Sitemap files in public/ directory"
      cd "#{deploy_to}/#{current_path}"
      #{echo_cmd %[#{rake} sitemap:clean]}
    }
  end
end
