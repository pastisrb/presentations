---
layout: code
title: On a bien ce que l'on veut ?
---

class FilterLinkPresenterTest < ActiveSupport::TestCase
  setup do
    @category  = Category.first
  end

  test "valid attributes for a given category" do
    presenter = FilterLinkPresenter.new(@category)

    assert_equal 'Tous', presenter.name
    assert_equal 1, presenter.count
    assert_equal({id: '1'}, presenter.params)
  end
end