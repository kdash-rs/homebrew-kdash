
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Kdash < Formula
  desc "A fast and simple dashboard for Kubernetes written in Rust"
  homepage "https://github.com/kdash-rs/kdash"
  if OS.mac? and Hardware::CPU.arm?
    url "https://github.com/kdash-rs/kdash/releases/download/v0.4.9/kdash-macos-arm64.tar.gz"
    sha256 "4636c70be6b5f0d3e1fd0da03f052e69293c21d16b49953e4c5e4d8a12f5be4f"
  elsif OS.mac? and Hardware::CPU.intel?
    url "https://github.com/kdash-rs/kdash/releases/download/v0.4.9/kdash-macos.tar.gz"
    sha256 "1485e9c79a67045ca910010eead6141bdccbcd90046060cd7e08f5e5224f78a1"
  else
    url "https://github.com/kdash-rs/kdash/releases/download/v0.4.9/kdash-linux.tar.gz"
    sha256 "9cc101f5d0c2a12cd7049022c105984908b231fbfb288e724e576f266f467755"
  end
  version "v0.4.9"
  license "MIT"

  def install
    bin.install "kdash"
    ohai "You're done!  Run with \"kdash\""
    ohai "For runtime flags, see \"kdash --help\""
  end
end