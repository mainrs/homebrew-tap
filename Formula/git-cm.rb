class GitCm < Formula
  desc "CLI for creating conventional-commits friendly commit messages"
  homepage "https://github.com/SirWindfield/git-cm"
  url "https://github.com/SirWindfield/git-cm/archive/v0.2.1.tar.gz"
  sha256 "04b6181d958f3909462cc75c3800143d4941bc8702b69893d35fade92a5b3315"
  license any_of: ["Apache-2.0", "MIT"]
  head "https://github.com/SirWindfield/git-cm.git"

  bottle do
    root_url "https://github.com/SirWindfield/homebrew-tap/releases/download/git-cm-0.2.0"
    sha256 cellar: :any_skip_relocation, catalina:     "750b301e02b12cd4f1ac3887509229071f1849e41b300c45f66fc24d6f9a9a1b"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "88607e204bfb6df655294c7e502500d5ec857cd29ee27f47624ad96d1d147735"
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
