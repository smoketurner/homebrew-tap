class Quack < Formula
  desc "Knowledge engine: documents, tables, and a knowledge graph in one workspace"
  homepage "https://github.com/smoketurner/quack"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    on_arm do
      url "https://github.com/smoketurner/quack/releases/download/v2026.9.7/quack-2026.9.7-aarch64-apple-darwin.tar.gz"
      sha256 "19fd7b8f92b35a266003f18db8711d1e99e13d3896a42de7814b14c1aa56dc0a"
    end
  end

  def install
    bin.install "quack"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quack -V")
  end
end
