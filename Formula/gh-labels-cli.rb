class GhLabelsCli < Formula
  desc "CLI for managing labels in existing GitHub repositories"
  homepage "https://github.com/SirWindfield/gh-labels-cli"
  url "https://github.com/SirWindfield/gh-labels-cli/archive/v0.1.9.tar.gz"
  sha256 "8959ad4dbfbf121c648300a13996eceb3f5d5e30d192a9678477b5efb1cd00e1"
  license any_of: ["Apache-2.0", "MIT"]
  head "https://github.com/SirWindfield/gh-labels-cli.git"

  bottle do
    root_url "https://github.com/SirWindfield/homebrew-tap/releases/download/gh-labels-cli-0.1.8"
    sha256 cellar: :any_skip_relocation, catalina: "6e87605c40151a213cf9646bcb41331ce64909df7783f9c381a2b696e48912fb"
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
