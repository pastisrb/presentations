---
layout: code
title: On ajoute la route à l'application
---

Isommelier::Application.routes.draw do
  namespace :front, path: '' do
    get 'ean/:ean' => 'wines#ean', as: :ean
  end
end