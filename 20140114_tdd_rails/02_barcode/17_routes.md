---
layout: code
title: On modifie les routes
---

Isommelier::Application.routes.draw do
  namespace :front, path: '' do
    get 'bottle_scanner' => 'wines#bottle_scanner'
    get 'ean/(:ean)' => 'wines#ean', as: :ean
  end
end