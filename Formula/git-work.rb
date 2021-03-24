class GitWork < Formula
  desc "git subcommand for standardized branch creation"
  homepage "https://github.com/SirWindfield/git-work"
  url "https://github.com/SirWindfield/git-work/archive/v0.1.0.tar.gz"
  sha256 "63e6b4dde3e2743416f91a01ab9b0ce1fe397a01ed0b797a7564b4e468799c8f"
  license any_of: ["Apache-2.0", "MIT"]
  head "https://github.com/SirWindfield/git-work.git"

  depends_on "rust" => :build
  uses_from_macos "zlib"

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/git-work", "help"
  end
end
