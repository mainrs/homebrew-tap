class GhLabelsCli < Formula
  desc "CLI for managing labels in existing GitHub repositories"
  homepage "https://github.com/SirWindfield/gh-labels-cli"
  url "https://github.com/SirWindfield/gh-labels-cli/archive/v0.1.8.tar.gz"
  sha256 "ad66dedf7fcd42d9c3cac0430a6e3d667cf4f197103392aa09635e5e2f3a2f84"
  license any_of: ["Apache-2.0", "MIT"]
  head "https://github.com/SirWindfield/gh-labels-cli.git"

  depends_on "rust" => :build
  depends_on :macos
  
  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/gh-labels", "help"
  end
end
