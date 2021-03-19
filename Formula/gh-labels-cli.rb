class GhLabelsCli < Formula
  desc "CLI for managing labels in existing GitHub repositories"
  homepage "https://github.com/SirWindfield/gh-labels-cli"
  url "https://github.com/SirWindfield/gh-labels-cli/archive/v0.1.8.tar.gz"
  sha256 "856c0e24d4bcee82787a78d3504f1415acc1b9cdb54fcb6f47b2b731b005905f"
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
