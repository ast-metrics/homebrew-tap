class AstMetrics < Formula
  desc "Multi-language code analyzer: complexity, coupling, maintainability"
  homepage "https://ast-metrics.dev"
  version "0.42.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ast-metrics/ast-metrics/releases/download/v0.42.0/ast-metrics_Darwin_arm64"
      sha256 "cce86ac13b532b2213a987276d04acc2bc651093d428d6c477937e8008d73f5b"
    end
    on_intel do
      url "https://github.com/ast-metrics/ast-metrics/releases/download/v0.42.0/ast-metrics_Darwin_x86_64"
      sha256 "3dff744a043f6d71c72784a8ec7bc04e4d382f4385b0d1711545efe694e8d740"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ast-metrics/ast-metrics/releases/download/v0.42.0/ast-metrics_Linux_arm64"
      sha256 "de873870222df10a2727d27483ae42ebcfbd3d5e8ad7b72cf37454c67dddca8f"
    end
    on_intel do
      url "https://github.com/ast-metrics/ast-metrics/releases/download/v0.42.0/ast-metrics_Linux_x86_64"
      sha256 "fb716ff312af45358a943b3926331f6f90f94e22f9199027f530667cf22a171f"
    end
  end

  def install
    bin.install Dir["ast-metrics*"].first => "ast-metrics"
  end

  test do
    system "#{bin}/ast-metrics", "version"
  end
end
