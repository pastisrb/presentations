---
layout: code
title: Un peu de Ruby
---

# _plugins/_tag_gen.rb
module Jekyll
  class TagGenerator < Generator
    def generate(site)
      if site.layouts.key? 'tag_index'
        site.tags.keys.each do |tag|
          paginate(site, tag)
        end
        site.config['tags_list'] = site.tags.keys.each_with_object([]) do |tag, r| 
          r.push Tag.new(tag)
        end.uniq{ |tag| tag.path }.sort_by do |tag|
          tag.name
        end
      end
    end
  end
end  