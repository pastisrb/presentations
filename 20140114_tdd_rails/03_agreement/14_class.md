---
layout: code
title: Harder, Better, Faster filter
---

class WineByAgreementPresenter
  # ...
  private
  
  def filter
    if agreement_id?
      @filter ||= Agreement.wine_filter(@params[:agreement_id])
    else
      @filter ||= Category.wine_filter(@params[:id])
    end
  end

  def agreement_id?
    @params[:agreement_id] != 0 && @params.has_key?(:agreement_id)
  end
end