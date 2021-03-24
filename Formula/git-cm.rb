class GitCm < Formula
  desc "CLI for creating conventional-commits friendly commit messages"
  homepage "https://github.com/SirWindfield/git-cm"
  url "https://github.com/SirWindfield/git-cm/archive/v0.2.2.tar.gz"
  sha256 "e585ada8584c52dbb759be8137367b6727ab0ceb8e304ff3f721c7668b7065a9"
  license any_of: ["Apache-2.0", "MIT"]
  head "https://github.com/SirWindfield/git-cm.git"

  bottle do
    root_url "https://github.com/SirWindfield/homebrew-tap/releases/download/git-cm-0.2.2"
    sha256 cellar: :any_skip_relocation, catalina:     "a097e47a3bb06031817d95da9da6f3a009e0e7f8c26c0626145fa17856807c31"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "5f6cd186a1d0fbd02637280ea525229dc424cc5609d4e8ebe31d526579c81df2"
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
