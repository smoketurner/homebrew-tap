class Quack < Formula
  desc "Knowledge engine: documents, tables, and a knowledge graph in one workspace"
  homepage "https://github.com/smoketurner/quack"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    on_arm do
      url "https://github.com/smoketurner/quack/releases/download/v2026.11.2/quack-2026.11.2-aarch64-apple-darwin.tar.gz"
      sha256 "9d4f18ebbf2107dc602ba4535543a54b704e1132aff6f5093a9fd9debcc1d965"
    end
  end

  def install
    bin.install "quack"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quack -V")
  end
end
