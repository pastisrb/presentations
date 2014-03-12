---
layout: code
title: Une petite contrainte pour nos vins
---

class Wine < ActiveRecord::Base
  validates :ean, presence: true
end