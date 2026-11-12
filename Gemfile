source "https://rubygems.org"

# Same gem set GitHub Pages runs (Jekyll 3.10), so a local build matches the live one.
gem "github-pages", "~> 232", group: :jekyll_plugins

# Ruby 3.4 no longer bundles these; Jekyll 3.10 still needs them locally.
gem "csv"
gem "base64"
gem "bigdecimal"
gem "logger"
gem "webrick"

platforms :windows, :jruby do
  gem "tzinfo-data"
  gem "wdm", ">= 0.1.0"
end
