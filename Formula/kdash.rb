
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Kdash < Formula
  desc "A fast and simple dashboard for Kubernetes written in Rust"
  homepage "https://github.com/kdash-rs/kdash"
  if OS.mac? and Hardware::CPU.arm?
    url "https://github.com/kdash-rs/kdash/releases/download/v0.4.8/kdash-macos-arm64.tar.gz"
    sha256 "06c57e7470d04a0d6ab570c6e65ebfede52450ac474e9c3997c358e00313b762"
  elsif OS.mac? and Hardware::CPU.intel?
    url "https://github.com/kdash-rs/kdash/releases/download/v0.4.8/kdash-macos.tar.gz"
    sha256 "8c6e815cc01dac4f081d6bc0c9b1ca9744e0d854d8c43c9cbf361ebf67985d48"
  else
    url "https://github.com/kdash-rs/kdash/releases/download/v0.4.8/kdash-linux.tar.gz"
    sha256 "b7378a93b4cc856da407d77e708abe0787a053985fe43545649d138c0de794eb"
  end
  version "v0.4.8"
  license "MIT"

  def install
    bin.install "kdash"
    ohai "You're done!  Run with \"kdash\""
    ohai "For runtime flags, see \"kdash --help\""
  end
end