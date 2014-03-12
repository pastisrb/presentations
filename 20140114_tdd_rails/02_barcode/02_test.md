---
layout: code
title: Un premier test
---

class Front::WinesControllerTest < ActionController::TestCase
  test "for an existing EAN should be redirected to wines#show" do
    get :ean, ean: '7351353'

    assert_redirected_to front_wine_path(1)
  end
end