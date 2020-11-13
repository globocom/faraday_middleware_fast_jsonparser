# FaradayMiddleware::FastJsonparser [![Build Status](https://travis-ci.org/globo/faraday_middleware_fast_jsonparser.svg?branch=master)](https://travis-ci.org/globocom/faraday_middleware_fast_jsonparser)

A simple Faraday middleware that parses JSON responses using [FastJsonparser](https://github.com/anilmaurya/fast_jsonparser) inspired by [ParseOJ](https://github.com/7even/faraday_middleware-parse_oj)

It uses the `parse` method and accepts optional `parser_options`.

## Installation

``` ruby
# Gemfile
gem "faraday_middleware_fast_jsonparser"
```

or

``` bash
$ gem install faraday_middleware_fast_jsonparser
```

## Usage

The same as `FaradayMiddleware::ParseJson`:

``` ruby
require "faraday_middleware/fast_jsonparser"

Faraday.new do |conn|
  conn.use(FaradayMiddleware::FastJsonparser)
end
```

or

``` ruby
require "faraday_middleware/fast_jsonparser"

Faraday.new do |conn|
  conn.use(FaradayMiddleware::FastJsonparser, parser_options: { symbolize_keys: false })
end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
