---
layout: code
title: Oh un delegate
---

class WineByAgreementPresenter
  delegate :wines, to: :filter

  def initialize(params)
    @params = params
  end

  private
  
  def filter
    Category.wine_filter(@params[:id])
  end
end