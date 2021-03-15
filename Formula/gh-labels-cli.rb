# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class GhLabelsCli < Formula
  desc "A CLI for managing labels in existing GitHub repositories"
  homepage "https://github.com/SirWindfield/gh-labels-cli"
  head "https://github.com/SirWindfield/gh-labels-cli.git"
  url "https://github.com/SirWindfield/gh-labels-cli/archive/v0.1.1.tar.gz"
  sha256 "01eb373711c856259be812a06decd9d7bf81e38b97bc60a7e658106fcbcc8a5f"
  license any_of: ["Apache-2.0", "MIT"]

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test gh-labels-cli`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "#{bin}/gh-labels help"
  end
end
