class GhLabelsCli < Formula
  desc "CLI for managing labels in existing GitHub repositories"
  homepage "https://github.com/SirWindfield/gh-labels-cli"
  url "https://github.com/SirWindfield/gh-labels-cli/archive/v0.1.1.tar.gz"
  head "https://github.com/SirWindfield/gh-labels-cli.git"
  sha256 "01eb373711c856259be812a06decd9d7bf81e38b97bc60a7e658106fcbcc8a5f"
  license any_of: ["Apache-2.0", "MIT"]

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/gh-labels help"
  end
end
