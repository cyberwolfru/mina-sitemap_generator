# Mina::SitemapGenerator

This gem provides several mina tasks for [SitemapGenerator](https://github.com/kjvarga/sitemap_generator):

    mina sitemap:create           # Generate sitemaps but don't ping search engines.
    mina sitemap:refresh          # Generate sitemaps and ping search engines.
    mina sitemap:clean            # Delete all Sitemap files in public/ directory

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mina-sitemap_generator', :require => false
```

And then execute:

    $ bundle


## Example deploy task
    ...
    require 'mina/sitemap_generator'
    
    ...
    desc "Deploys the current version to the server."
    task :deploy => :environment do
      deploy do
        invoke :'git:clone'
        invoke :'deploy:link_shared_paths'
        invoke :'bundle:install'
        invoke :'rails:assets_precompile'

        to :launch do
          invoke :'unicorn:restart'
          invoke :'sitemap:create'
        end
      end
    end

## Contributing

1. Fork it ( https://github.com/cyberwolfru/mina-sitemap_generator/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
