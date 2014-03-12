---
layout: code
title: Donne le nom de l'accord en cours
---

class WineByAgreementPresenterTest < ActiveSupport::TestCase
  test "filter_name must be the agreement name" do
    presenter = WineByAgreementPresenter.new(id: 1, agreement_id: 1)

    assert Agreement.first.name, presenter.filter_name
  end
end