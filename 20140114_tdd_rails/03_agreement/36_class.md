---
layout: code
title: Accord != Catégorie
---

class FilterLinkPresenter
  #...
  def name
    resource_is_category? ? 'Tous' : @resource.name
  end
  
  def params
    resource_is_category? ? 
    {id: @resource.id.to_s} : 
    {id: @resource.category_id.to_s, agreement_id: @resource.id.to_s}
  end
  
  private
  #...
  def resource_is_category?
    @resource.kind_of?(Category)
  end
end