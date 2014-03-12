---
layout: code
title: Donne ce que je veux, encore !
---

class FilterLinkPresenterTest < ActiveSupport::TestCase
  setup do
    @category  = Category.first
    @agreement = @category.agreements.first 
    @agreement_params = {'id' => '1', 'agreement_id' => '1'}
  end
  
  test "active? for a given agreement with request_params" do
    presenter = FilterLinkPresenter.new(@agreement, @agreement_params)
    assert presenter.active?
  end

  test "!active? for a given agreement with request_params" do
    presenter = FilterLinkPresenter.new(@agreement, {'id' => '1'})
    assert !presenter.active?
  end
end