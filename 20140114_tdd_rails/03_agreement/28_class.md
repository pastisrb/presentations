---
layout: code
title: Return true!
---

class FilterLinkPresenter
  def initialize(resource, request_params = {})
    @resource = resource
  end
  
  def active?
    true
  end
  # ...
end