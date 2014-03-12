---
layout: code
title: Oh un autre delegate
---

class WineByAgreementPresenter
  delegate :name, to: :filter, prefix: true
  # ...
end