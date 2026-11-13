# frozen_string_literal: true

# The gem version of Alcor, for sites built with `theme: jekyll-theme-alcor`
# (local builds, Netlify, Cloudflare Pages, GitHub Actions).
# GitHub Pages users don't need it: they use `remote_theme: Tortoiz-Themes/alcor-jekyll`.
Gem::Specification.new do |spec|
  spec.name     = "jekyll-theme-alcor"
  spec.version  = "1.0.1"
  spec.authors  = ["Tortoiz Themes"]
  spec.summary  = "A free one-page Jekyll theme for freelancers and small studios. Works on GitHub Pages."
  spec.homepage = "https://alcor.tortoizthemes.com"
  spec.license  = "MIT"
  spec.metadata = {
    "source_code_uri" => "https://github.com/Tortoiz-Themes/alcor-jekyll",
    "bug_tracker_uri" => "https://github.com/Tortoiz-Themes/alcor-jekyll/issues",
  }

  # Only what a site needs: layouts, includes (sections, CSS, illustrations) and assets.
  # The demo's social image is left out; each site sets its own.
  spec.files = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r{\A(_layouts|_includes|assets)/|\A(LICENSE|README\.md)\z})
  end.reject { |f| f == "assets/images/og.png" }

  spec.required_ruby_version = ">= 2.7"
  spec.add_runtime_dependency "jekyll", ">= 3.10", "< 5.0"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.8"
  spec.add_runtime_dependency "jekyll-sitemap", "~> 1.4"
end
