
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Kdash < Formula
  desc "A fast and simple dashboard for Kubernetes written in Rust"
  homepage "https://github.com/kdash-rs/kdash"
  if OS.mac?
    url "https://github.com/kdash-rs/kdash/releases/download/v0.3.3/kdash-macos.tar.gz"
    sha256 "3356e298be846a508d7a3d6640e6e767f75e548990528de0a4c6a56b2c09984c"
  else
    url "https://github.com/kdash-rs/kdash/releases/download/v0.3.3/kdash-linux-musl.tar.gz"
    sha256 "85a0fc5554acf962a049b138e9485769082a3096b006bcf7ed2a8e5de491e224"
  end
  version "v0.3.3"
  license "MIT"

  def install
    bin.install "kdash"
    ohai "You're done!  Run with \"kdash\""
    ohai "For runtime flags, see \"kdash --help\""
  end
end