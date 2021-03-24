class GitWork < Formula
  desc "Git subcommand for standardized branch creation"
  homepage "https://github.com/SirWindfield/git-work"
  url "https://github.com/SirWindfield/git-work/archive/v0.1.0.tar.gz"
  sha256 "63e6b4dde3e2743416f91a01ab9b0ce1fe397a01ed0b797a7564b4e468799c8f"
  license any_of: ["Apache-2.0", "MIT"]
  head "https://github.com/SirWindfield/git-work.git"

  bottle do
    root_url "https://github.com/SirWindfield/homebrew-tap/releases/download/git-work-0.1.0"
    sha256 cellar: :any_skip_relocation, catalina:     "e0a2d511c441f1278b39c2dabeb202992d7b57968e8f0169b53114432fa6c7eb"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "f792dbf3646d46fcae8663398ece9c2cd3103a1f5641a532e0c509b703ec9395"
  end

  depends_on "rust" => :build
  uses_from_macos "zlib"

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/git-work", "help"
  end
end
