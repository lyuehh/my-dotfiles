#!/bin/sh

\curl -L https://get.rvm.io | bash -s stable
http_proxy=127.0.0.1:8087 rvm install ruby
