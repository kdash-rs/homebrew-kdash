
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Kdash < Formula
  desc "A fast and simple dashboard for Kubernetes written in Rust"
  homepage "https://github.com/kdash-rs/kdash"
  if OS.mac?
    url "https://github.com/kdash-rs/kdash/releases/download/v0.4.1/kdash-macos.tar.gz"
    sha256 "a305e105ff7fd0faa66ccd99d18f1804db6dde17d9de3bd4776ff685257e9124"
  else
    url "https://github.com/kdash-rs/kdash/releases/download/v0.4.1/kdash-linux-musl.tar.gz"
    sha256 "99a367a305b74f64d2b2500c611916834def877bd1672ebc8e7f64779ccb8546"
  end
  version "v0.4.1"
  license "MIT"

  def install
    bin.install "kdash"
    ohai "You're done!  Run with \"kdash\""
    ohai "For runtime flags, see \"kdash --help\""
  end
end