---
layout: code
title: Return pas true !
---

class FilterLinkPresenter
  def initialize(resource, request_params = {})
    @resource = resource
    @request_params = request_params
  end

  def active?
    if params.length == sanitized_request_params.length
      params.all? { |k, v| 
        sanitized_request_params.has_key?(k) && sanitized_request_params[k] == v 
      }
    else
      false
    end
  end
  # ...
  private

  def sanitized_request_params
    @request_params.reject{|k| !['id', 'agreement_id'].include?(k) }.to_h.symbolize_keys!
  end
end