---
layout: code
title: Donne ce que je veux, encore !
---

class FilterLinkPresenterTest < ActiveSupport::TestCase
  setup do
    @category  = Category.first
    @agreement = @category.agreements.first 
  end

  test "valid attributes for a given agreement" do
    presenter = FilterLinkPresenter.new(@agreement)

    assert_equal 'Boeuf - grillé', presenter.name
    assert_equal 1, presenter.count
    assert_equal({id: '1', agreement_id: '1'}, presenter.params)
  end
end