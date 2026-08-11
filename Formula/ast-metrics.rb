class AstMetrics < Formula
  desc "Multi-language code analyzer: complexity, coupling, maintainability"
  homepage "https://ast-metrics.dev"
  version "0.41.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ast-metrics/ast-metrics/releases/download/v0.41.1/ast-metrics_Darwin_arm64"
      sha256 "e99158d729a6f3e3556a7b371f8cb0f15ae1020f49409f395ce67fd10f40dd88"
    end
    on_intel do
      url "https://github.com/ast-metrics/ast-metrics/releases/download/v0.41.1/ast-metrics_Darwin_x86_64"
      sha256 "6b837e3a696b06a556a53a2b7bffa28e52930df87a27215344767567a3287019"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ast-metrics/ast-metrics/releases/download/v0.41.1/ast-metrics_Linux_arm64"
      sha256 "db44a7811ebedf2c4dc032712ba82de9e5e2733082870e4815ee5ef3e40bde6b"
    end
    on_intel do
      url "https://github.com/ast-metrics/ast-metrics/releases/download/v0.41.1/ast-metrics_Linux_x86_64"
      sha256 "49b4458a33f420c72fad96cfc510e371db9b4f4712830eee6b34bc83191a1e42"
    end
  end

  def install
    bin.install Dir["ast-metrics*"].first => "ast-metrics"
  end

  test do
    system "#{bin}/ast-metrics", "version"
  end
end
