placefinder
===========
Yahoo! PlaceFinder is a geocoding webservice that converts street addresses and place names into geographic coordinates.


Use Yahoo! PlaceFinder within your ruby apps using this gem.

Synopsis
========

Install from RubyGems

        gem install placefinder

Require it in your files:

        require 'placefinder'

        placefinder = Placefinder::Base.new(:api_key => your_api_key)
        placefinder.get :q => "Central Park, NY, US", :flags => 'J'

You are encourage to check the documentation to see the params of the API:
    http://developer.yahoo.com/geo/placefinder/guide/requests.html

Super easy! isn't ?

NOTES:

       1- The api_key is not a required field, you can start hitting their api without it.
       2- If you specify format in the :flags, it will be ignore, a hash is always returned.

Important
=========
Yahoo! PlaceFinder as geolocation service really sucks and I would recommend to use Google, you can checkout Geokit which makes interactions with Google really easy.
       https://github.com/andre/geokit-gem

Author
======

Adolfo Builes, builes.adolfo@gmail.com

Copyright (c) 2011

