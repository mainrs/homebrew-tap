class GhLabelsCli < Formula
  desc "CLI for managing labels in existing GitHub repositories"
  homepage "https://github.com/SirWindfield/gh-labels-cli"
  url "https://github.com/SirWindfield/gh-labels-cli/archive/v0.1.9.tar.gz"
  sha256 "8959ad4dbfbf121c648300a13996eceb3f5d5e30d192a9678477b5efb1cd00e1"
  license any_of: ["Apache-2.0", "MIT"]
  head "https://github.com/SirWindfield/gh-labels-cli.git"

  bottle do
    root_url "https://github.com/SirWindfield/homebrew-tap/releases/download/gh-labels-cli-0.1.9"
    sha256 cellar: :any_skip_relocation, catalina:     "5b7d49d7d943db37b31b3a08a7300c747f5c951302dc50405e11f5e6bb855904"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "ffbaefb83f965904a8899ef1e9410304ed0a7fd1550862e1d1018f2e847b0dba"
  end

  depends_on "rust" => :build
  uses_from_macos "zlib"

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/gh-labels", "help"
  end
end
