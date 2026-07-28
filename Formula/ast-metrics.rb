class AstMetrics < Formula
  desc "Multi-language code analyzer: complexity, coupling, maintainability"
  homepage "https://ast-metrics.dev"
  version "0.40.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ast-metrics/ast-metrics/releases/download/v0.40.0/ast-metrics_Darwin_arm64"
      sha256 "ae0f188f64918f71e7e8827ba450eaaf6221b258cc786ec46552005a4f3b25ce"
    end
    on_intel do
      url "https://github.com/ast-metrics/ast-metrics/releases/download/v0.40.0/ast-metrics_Darwin_x86_64"
      sha256 "3cf7440c64438d05bf214b4d206bb5ed807b5fb106b7c977d05cf7e7efa6d6f2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ast-metrics/ast-metrics/releases/download/v0.40.0/ast-metrics_Linux_arm64"
      sha256 "2434205e0b1d7c9931e3e04184604dc9aa89c702d6d4785be8cd1627ccce31e2"
    end
    on_intel do
      url "https://github.com/ast-metrics/ast-metrics/releases/download/v0.40.0/ast-metrics_Linux_x86_64"
      sha256 "365c8c0836765a1e99335bc338a5f00473e2e17ade914adb2f506d6355c25cda"
    end
  end

  def install
    bin.install Dir["ast-metrics*"].first => "ast-metrics"
  end

  test do
    system "#{bin}/ast-metrics", "version"
  end
end
