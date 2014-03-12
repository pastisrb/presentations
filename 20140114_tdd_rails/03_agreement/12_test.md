---
layout: code
title: Doit contenir des vins #bis
---

class WineByAgreementPresenterTest < ActiveSupport::TestCase
  test "should contain wines filtered by a category_id and an agreement_id" do
    presenter = WineByAgreementPresenter.new(id: 1, agreement_id: 4)

    assert(presenter.wines.all? {|wine| 
      wine.agreements.all? {|agreement| 
        agreement.category_id == 1 && agreement.id == 4
      }
    }, presenter.wines.collect{|wine| 
        wine.agreements.collect{|agreement| 
          agreement.id
        }
       }.inspect)
  end
end