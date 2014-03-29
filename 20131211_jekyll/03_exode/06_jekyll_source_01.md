---
layout: code
title: Comment ça marche ?
---

# Load necessary libraries, plugins, converters, and generators.
def setup
  ensure_not_in_dest

  # If safe mode is off, load in any Ruby files under the plugins
  # directory.
  unless self.safe
    self.plugins.each do |plugins|
      Dir[File.join(plugins, "**/*.rb")].each do |f|
        require f
      end
    end
    self.gems.each do |gem|
      require gem
    end
  end

  self.converters = instantiate_subclasses(Jekyll::Converter)
  self.generators = instantiate_subclasses(Jekyll::Generator)
end