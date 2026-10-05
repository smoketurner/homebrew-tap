class Quack < Formula
  desc "Knowledge engine: documents, tables, and a knowledge graph in one workspace"
  homepage "https://github.com/smoketurner/quack"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    on_arm do
      url "https://github.com/smoketurner/quack/releases/download/v2026.10.3/quack-2026.10.3-aarch64-apple-darwin.tar.gz"
      sha256 "6e748c57f9fe2aaa0d5508563f69d05b4f662179f3700bcc14244da0b9df2fcb"
    end
  end

  def install
    bin.install "quack"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quack -V")
  end
end
