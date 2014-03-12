---
layout: code
title: Non, cette action ne doit rien afficher
---

class Front::WinesController < FrontController
  def ean
    wine = Wine.first
    redirect_to front_wine_path(wine)
  end
end