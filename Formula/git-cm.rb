class GitCm < Formula
  desc "CLI for creating conventional-commits friendly commit messages"
  homepage "https://github.com/SirWindfield/git-cm"
  url "https://github.com/SirWindfield/git-cm/archive/v0.2.3.tar.gz"
  sha256 "1a8960058f7eaff99098e80d9f91017515ed1c2d5f2c337f756a553ffc4a4ff9"
  license any_of: ["Apache-2.0", "MIT"]
  head "https://github.com/SirWindfield/git-cm.git"

  bottle do
    root_url "https://github.com/SirWindfield/homebrew-tap/releases/download/git-cm-0.2.3"
    sha256 cellar: :any_skip_relocation, catalina:     "3ea7dc8c6cf9ea6dca469489e6b7708ac5833e08d25abb340650c3e85d589c6a"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "8c5fde22827f4616b8c872a70546342fae26eb78a77e58e488d266426cc86844"
  end

  depends_on "rust" => :build
  uses_from_macos "zlib"

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/git-cm", "help"
  end
end
