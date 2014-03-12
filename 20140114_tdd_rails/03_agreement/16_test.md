---
layout: code
title: Donne le nom de la catégorie en cours
---

class WineByAgreementPresenterTest < ActiveSupport::TestCase
  test "filter_name must be the category name" do
    presenter = WineByAgreementPresenter.new(id: 1)

    assert Category.first.name, presenter.filter_name
  end
end