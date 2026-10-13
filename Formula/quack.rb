class Quack < Formula
  desc "Knowledge engine: documents, tables, and a knowledge graph in one workspace"
  homepage "https://github.com/smoketurner/quack"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    on_arm do
      url "https://github.com/smoketurner/quack/releases/download/v2026.10.7/quack-2026.10.7-aarch64-apple-darwin.tar.gz"
      sha256 "0a87fcbe66d30c85e8aac3917fe5b1497d3f2c85e302e98aabccd3535e231301"
    end
  end

  def install
    bin.install "quack"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quack -V")
  end
end
