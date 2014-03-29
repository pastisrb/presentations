---
layout: code
title: Récupération des images manquantes dans le cas d'un article
---

# lib/jekyll/jekyll-import/tumblr.rb
# def self.write_post(post, use_markdown, add_highlights)
  
if use_markdown
  content = html_to_markdown content
  content = add_syntax_highlights content if add_highlights
else
  # current html_to_markdown function remove img
  doc = Nokogiri::HTML.fragment(content)
  doc.css('img').each do |img|
    src = img[:src]
    ext = File.extname(src)
      
    img[:src] = save_photo(src, ext)
  end
  content = doc.to_html
end
File.open("_posts/tumblr/#{post[:name]}", "w") do |f|
  f.puts post[:header].to_yaml + END_YAML + content
end