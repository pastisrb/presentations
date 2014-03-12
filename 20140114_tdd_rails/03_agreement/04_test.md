---
layout: code
title: N'a pas de vin 
---

class WineByAgreementPresenterTest < ActiveSupport::TestCase
  test "wines must be empty when the category haven't any wines" do
    presenter = WineByAgreementPresenter.new(id: 3)

    assert presenter.wines.empty?
  end
end