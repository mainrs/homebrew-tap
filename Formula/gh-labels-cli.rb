class GhLabelsCli < Formula
  desc "CLI for managing labels in existing GitHub repositories"
  homepage "https://github.com/SirWindfield/gh-labels-cli"
  url "https://github.com/SirWindfield/gh-labels-cli/archive/v0.1.3.tar.gz"
  sha256 "7b2ad2cab79ff271c6e6a940fed836decea268453cf0b3d8b401ecddc6c0b34a"
  license any_of: ["Apache-2.0", "MIT"]
  head "https://github.com/SirWindfield/gh-labels-cli.git"

  depends_on "openssl@1.1"
  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/gh-labels", "help"
  end
end
