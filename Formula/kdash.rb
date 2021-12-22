
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Kdash < Formula
  desc "A fast and simple dashboard for Kubernetes written in Rust"
  homepage "https://github.com/kdash-rs/kdash"
  if OS.mac?
    url "https://github.com/kdash-rs/kdash/releases/download/v0.2.5/kdash-macos.tar.gz"
    sha256 "8f14bdfcca2a328cf6112b038e85b3e420ae9a287ec9d5fca863b62832845d05"
  else
    url "https://github.com/kdash-rs/kdash/releases/download/v0.2.5/kdash-linux-musl.tar.gz"
    sha256 "e9b71cb8fd0da3cefde26a65ce7b66797c2b9fe9af7b2c29b8d22c5863ed1964"
  end
  version "v0.2.5"
  license "MIT"

  def install
    bin.install "kdash"
    ohai "You're done!  Run with \"kdash\""
    ohai "For runtime flags, see \"kdash --help\""
  end
end