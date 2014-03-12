---
layout: code
title: Une autre classe, encore
---

class FilterLinkPresenter
  def initialize(resource)
    @resource = resource
  end
  
  def name
    'Tous'
  end

  def count
    @resource.wines_count
  end
  
  def params
    {id: @resource.id.to_s}
  end
end