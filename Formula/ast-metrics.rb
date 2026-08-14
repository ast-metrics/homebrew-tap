class AstMetrics < Formula
  desc "Multi-language code analyzer: complexity, coupling, maintainability"
  homepage "https://ast-metrics.dev"
  version "0.42.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ast-metrics/ast-metrics/releases/download/v0.42.1/ast-metrics_Darwin_arm64"
      sha256 "56e8b01dbd95a46f029025e540ba4a15b890e344129e91c4223ae68c38c12327"
    end
    on_intel do
      url "https://github.com/ast-metrics/ast-metrics/releases/download/v0.42.1/ast-metrics_Darwin_x86_64"
      sha256 "052269e3fc6fffd50f3cff405bc46bb54ea110e5712f3cabde16abe5bf68fd3e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ast-metrics/ast-metrics/releases/download/v0.42.1/ast-metrics_Linux_arm64"
      sha256 "18304ef609f097d2973f87874a48132248dbee0780ec16ef29bceb66f46bd767"
    end
    on_intel do
      url "https://github.com/ast-metrics/ast-metrics/releases/download/v0.42.1/ast-metrics_Linux_x86_64"
      sha256 "9b3c5b087056cf636f17864d0ab97b760a78646447644644a916f49ac3da2396"
    end
  end

  def install
    bin.install Dir["ast-metrics*"].first => "ast-metrics"
  end

  test do
    system "#{bin}/ast-metrics", "version"
  end
end
