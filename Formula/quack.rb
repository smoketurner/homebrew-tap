class Quack < Formula
  desc "Knowledge engine: documents, tables, and a knowledge graph in one workspace"
  homepage "https://github.com/smoketurner/quack"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    on_arm do
      url "https://github.com/smoketurner/quack/releases/download/v2026.10.2/quack-2026.10.2-aarch64-apple-darwin.tar.gz"
      sha256 "8e142d4b3220c305e4f957d38de2821491da1a6599a0f250d55bb921a8f2b975"
    end
  end

  def install
    bin.install "quack"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quack -V")
  end
end
