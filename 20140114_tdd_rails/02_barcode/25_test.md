---
layout: code
title: Dans le doute, un test
---

class Front::WinesControllerTest < ActionController::TestCase
  test "nonexistent EAN must redirect to bottle_scanner" do
    get :ean, ean: '6666666'
    assert_redirected_to front_bottle_scanner_path
  end
end