class Quack < Formula
  desc "Knowledge engine: documents, tables, and a knowledge graph in one workspace"
  homepage "https://github.com/smoketurner/quack"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    on_arm do
      url "https://github.com/smoketurner/quack/releases/download/v2026.10.5/quack-2026.10.5-aarch64-apple-darwin.tar.gz"
      sha256 "fe19b587e4c664483f96adf7b697f27cc03d0c86d7eb79ae8a6cf97a507822f5"
    end
  end

  def install
    bin.install "quack"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quack -V")
  end
end
