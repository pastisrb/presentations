---
layout: code
---

# Returns array of instances of subclasses of parameter
def instantiate_subclasses(klass)
  klass.subclasses.select do |c|
    !self.safe || c.safe
  end.sort.map do |c|
    c.new(self.config)
  end
end

def generate
  self.generators.each do |generator|
    generator.generate(self)
  end
end