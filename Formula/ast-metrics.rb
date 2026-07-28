class AstMetrics < Formula
  desc "Multi-language code analyzer: complexity, coupling, maintainability"
  homepage "https://ast-metrics.dev"
  version "0.40.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ast-metrics/ast-metrics/releases/download/v0.40.2/ast-metrics_Darwin_arm64"
      sha256 "6fbd9a510691b4308be67da8fbe416b961b4e7fd462f6298a3022048343f99c7"
    end
    on_intel do
      url "https://github.com/ast-metrics/ast-metrics/releases/download/v0.40.2/ast-metrics_Darwin_x86_64"
      sha256 "8db7b30889fe152fb23b70a7f0ccc22ac56994fef986d9d16b4cfd5fe2fc2fdd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ast-metrics/ast-metrics/releases/download/v0.40.2/ast-metrics_Linux_arm64"
      sha256 "70ecf63a67fedda33a34fbc22d89a7314879bf3e7f409bf60909308914ed0323"
    end
    on_intel do
      url "https://github.com/ast-metrics/ast-metrics/releases/download/v0.40.2/ast-metrics_Linux_x86_64"
      sha256 "3eb3b0fbec0b6433bc8424e298cf91004cc36c56a898f953ff527453f3970723"
    end
  end

  def install
    bin.install Dir["ast-metrics*"].first => "ast-metrics"
  end

  test do
    system "#{bin}/ast-metrics", "version"
  end
end
