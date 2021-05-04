
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Kdash < Formula
  desc "A fast and simple dashboard for Kubernetes written in Rust"
  homepage "https://github.com/kdash-rs/kdash"
  if OS.mac?
    url "https://github.com/kdash-rs/kdash/releases/download/v0.0.8/kdash-macos.tar.gz"
    sha256 "457b9a7025bf9cb0868d91d59a919d0451037e445bc7119ce1206852522023e1"
  else
    url "https://github.com/kdash-rs/kdash/releases/download/v0.0.8/kdash-linux-musl.tar.gz"
    sha256 "0c7aef07711a21e5134bdc737c4205e6ea09e1f3e782558cabe2b4f202014011"
  end
  version "v0.0.8"
  license "MIT"

  def install
    bin.install "kdash"
    ohai "You're done!  Run with \"kdash\""
    ohai "For runtime flags, see \"kdash --help\""
  end
end