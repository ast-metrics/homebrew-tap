class AstMetrics < Formula
  desc "Multi-language code analyzer: complexity, coupling, maintainability"
  homepage "https://ast-metrics.dev"
  version "0.40.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ast-metrics/ast-metrics/releases/download/v0.40.3/ast-metrics_Darwin_arm64"
      sha256 "4b8a969ab8390428e124a19aa00cc63a0e5d631173f8cdf933b9dd6053f9abc2"
    end
    on_intel do
      url "https://github.com/ast-metrics/ast-metrics/releases/download/v0.40.3/ast-metrics_Darwin_x86_64"
      sha256 "20407a5fe65eb3b49d4b4f3b0564f7484a4a1bba61f16494435658b2b7a5df93"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ast-metrics/ast-metrics/releases/download/v0.40.3/ast-metrics_Linux_arm64"
      sha256 "5ff6a5b2d2070e14d56c6741f3d67ef4191c70a5df9c72e9ed9a2ec66781534c"
    end
    on_intel do
      url "https://github.com/ast-metrics/ast-metrics/releases/download/v0.40.3/ast-metrics_Linux_x86_64"
      sha256 "a653511b720b710573e6786739b15053320f11b8bf1a1ec79c3fe3929566d67d"
    end
  end

  def install
    bin.install Dir["ast-metrics*"].first => "ast-metrics"
  end

  test do
    system "#{bin}/ast-metrics", "version"
  end
end
