
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Kdash < Formula
  desc "A fast and simple dashboard for Kubernetes written in Rust"
  homepage "https://github.com/kdash-rs/kdash"
  if OS.mac?
    url "https://github.com/kdash-rs/kdash/releases/download/v0.3.1/kdash-macos.tar.gz"
    sha256 "577a2530d38b78b55c8a9ac7f1aebe5dc55529d59d9a916d7f90d42a71936b8a"
  else
    url "https://github.com/kdash-rs/kdash/releases/download/v0.3.1/kdash-linux-musl.tar.gz"
    sha256 "133f9d7b5cd3fda5999dc65c525ef408bea3656c0e56534c9282cce233d5bf00"
  end
  version "v0.3.1"
  license "MIT"

  def install
    bin.install "kdash"
    ohai "You're done!  Run with \"kdash\""
    ohai "For runtime flags, see \"kdash --help\""
  end
end