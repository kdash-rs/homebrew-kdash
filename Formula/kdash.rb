
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Kdash < Formula
  desc "A fast and simple dashboard for Kubernetes written in Rust"
  homepage "https://github.com/kdash-rs/kdash"
  if OS.mac?
    url "https://github.com/kdash-rs/kdash/releases/download/v0.2.0/kdash-macos.tar.gz"
    sha256 "f00f08c7960b1789ed16541c66081b50c82e368c31fce874742607407ed87041"
  else
    url "https://github.com/kdash-rs/kdash/releases/download/v0.2.0/kdash-linux-musl.tar.gz"
    sha256 "fb8cf6347e23943da0030f02505e99e4a86a0206ca2f92c35ef72c37c0da2bce"
  end
  version "v0.2.0"
  license "MIT"

  def install
    bin.install "kdash"
    ohai "You're done!  Run with \"kdash\""
    ohai "For runtime flags, see \"kdash --help\""
  end
end