class AstMetrics < Formula
  desc "Multi-language code analyzer: complexity, coupling, maintainability"
  homepage "https://ast-metrics.dev"
  version "0.41.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ast-metrics/ast-metrics/releases/download/v0.41.0/ast-metrics_Darwin_arm64"
      sha256 "b9b206cafc5a9e1eafc168de82712efca0b5c5a71612ceffad703b7efcd28446"
    end
    on_intel do
      url "https://github.com/ast-metrics/ast-metrics/releases/download/v0.41.0/ast-metrics_Darwin_x86_64"
      sha256 "806a7571d6fe99c8350001f0a75763e675fd5c0c5c04de794fd372a71e0c125e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ast-metrics/ast-metrics/releases/download/v0.41.0/ast-metrics_Linux_arm64"
      sha256 "ae0024f1caf18ff3f71d327ea2c060fef4ddbc45d16cf9096c0edea677b0ae37"
    end
    on_intel do
      url "https://github.com/ast-metrics/ast-metrics/releases/download/v0.41.0/ast-metrics_Linux_x86_64"
      sha256 "1a2515203433060a5f7206d0489445e710deb2c50e894e3b8d5e8956c6d386ab"
    end
  end

  def install
    bin.install Dir["ast-metrics*"].first => "ast-metrics"
  end

  test do
    system "#{bin}/ast-metrics", "version"
  end
end
