
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Kdash < Formula
  desc "A fast and simple dashboard for Kubernetes written in Rust"
  homepage "https://github.com/kdash-rs/kdash"
  if OS.mac?
    url "https://github.com/kdash-rs/kdash/releases/download/v0.3.6/kdash-macos.tar.gz"
    sha256 "6dd5d8ddf741163716ee6d8d755375ffeac0d01eace4b68d6786cbd76c915a7a"
  else
    url "https://github.com/kdash-rs/kdash/releases/download/v0.3.6/kdash-linux-musl.tar.gz"
    sha256 "73f1ca320666ed10536c7c99811b8e7f7713a6357398e89c67ae548be012e7cc"
  end
  version "v0.3.6"
  license "MIT"

  def install
    bin.install "kdash"
    ohai "You're done!  Run with \"kdash\""
    ohai "For runtime flags, see \"kdash --help\""
  end
end