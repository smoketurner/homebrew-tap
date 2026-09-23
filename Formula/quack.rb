class Quack < Formula
  desc "Knowledge engine: documents, tables, and a knowledge graph in one workspace"
  homepage "https://github.com/smoketurner/quack"
  version "2026.9.2"
  license "Apache-2.0 OR MIT"

  on_macos do
    on_arm do
      url "https://github.com/smoketurner/quack/releases/download/v2026.9.2/quack-2026.9.2-aarch64-apple-darwin.tar.gz"
      sha256 "301ee95d86f568931c3861d100d75918fc9c177383164a952a54854d7099f3cc"
    end
  end

  def install
    bin.install "quack"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quack -V")
  end
end
