Spree Lekarnar Consultations
============================

This gem adds consultations to Spree shop. Consultants are added to the system and assigned a category (taxon) and/or multiple products.

A message appears on products with consultations allowing users to ask for a professional advice.

Installation
==============

Add gem to gemfile:

    gem 'spree_lekarnar_consultations'

Copy over migrations and migrate the database:

    rails g spree_lekarnar_consultations:install

If you use Rich text editor you might want to enable it for fields with the following ids:
  
    consultation_description consultation_form_description


Copyright (c) 2013 Lenart Rudel, released under the New BSD License