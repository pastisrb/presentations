---
layout: code
title: On modifie notre action
---

class Front::WinesController < FrontController
  def ean
    wine = Wine.where(ean: params[:ean]).first
    redirect_to front_wine_path(wine)
  end
end