---
layout: code
title: Un autre test
---

class Front::WinesControllerTest < ActionController::TestCase
  test "nil EAN must redirect to bottle_scanner" do
    get :ean
    assert_redirected_to front_bottle_scanner_path
  end
end