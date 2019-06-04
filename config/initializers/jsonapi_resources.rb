JSONAPI.configure do |config|
  # built in paginators are :none, :offset, :paged
  config.default_paginator =
    :paged

  config.maximum_page_size = 10
end
