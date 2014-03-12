---
layout: code
title: Catégorie non-active ?
---

class FilterLinkPresenterTest < ActiveSupport::TestCase
  setup do
    @category  = Category.first
  end

  test "!active? for a given category with request_params" do
    presenter = FilterLinkPresenter.new(@category, {'id' => '1', 'agreement_id' => '1'})

    assert !presenter.active?
  end 
end