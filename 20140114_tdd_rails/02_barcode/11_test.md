---
layout: code
title: On modifie notre test
---

class Front::WinesControllerTest < ActionController::TestCase
  test "for an existing EAN should be redirected to wines#show" do
    wine = Wine.create(ean: '7351353')
    get :ean, ean: wine.ean

    assert_redirected_to front_wine_path(wine)
  end
end