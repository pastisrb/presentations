---
layout: code
title: Doit contenir des vins
---

class WineByAgreementPresenterTest < ActiveSupport::TestCase
  test "should contain wines filtered by a category_id" do
    presenter = WineByAgreementPresenter.new(id: 1)

    assert(!presenter.wines.empty?)
    assert(presenter.wines.all? {|wine| 
      wine.agreements.any? {|agreement| 
        agreement.category_id == 1
      }
    }, presenter.wines)
  end
end