
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Kdash < Formula
  desc "A fast and simple dashboard for Kubernetes written in Rust"
  homepage "https://github.com/kdash-rs/kdash"
  if OS.mac?
    url "https://github.com/kdash-rs/kdash/releases/download/v0.2.6/kdash-macos.tar.gz"
    sha256 "96a71d0055db5d37df59487a7e0f24ef5cdf7560ae21b97173d6004840180e86"
  else
    url "https://github.com/kdash-rs/kdash/releases/download/v0.2.6/kdash-linux-musl.tar.gz"
    sha256 "803fd5e815b8feb5774fdb5dbf154d07b26d1026e22b8ec2c90e092cffbf41a6"
  end
  version "v0.2.6"
  license "MIT"

  def install
    bin.install "kdash"
    ohai "You're done!  Run with \"kdash\""
    ohai "For runtime flags, see \"kdash --help\""
  end
end