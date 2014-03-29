---
layout: code
title: Petite tâche Rake
---
  
# Rakefile
namespace :migrate do
  desc "Migrate from Tumblr in the current directory"
    task :tumblr do
      sh "ruby -r './lib/jekyll/jekyll-import/tumblr' -e 'JekyllImport::Tumblr.process('#{ENV['URL']'}, 'html', true, false, true)'"
    end
end