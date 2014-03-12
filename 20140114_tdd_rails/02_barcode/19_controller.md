---
layout: code
title: On édite le controller
---

class Front::WinesController < FrontController
  def bottle_scanner
  end

  def ean
    wine = Wine.where(ean: params[:ean]).first

    if wine.nil?
      redirect_to front_bottle_scanner
    else
      redirect_to front_wine_path(wine)
    end
  end
end