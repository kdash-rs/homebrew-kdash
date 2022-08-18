
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Kdash < Formula
  desc "A fast and simple dashboard for Kubernetes written in Rust"
  homepage "https://github.com/kdash-rs/kdash"
  if OS.mac?
    url "https://github.com/kdash-rs/kdash/releases/download/v0.3.4/kdash-macos.tar.gz"
    sha256 "82410c9e0aa91755b10a73aa01c9e8072237a00de8c7d352240b518a8368e40d"
  else
    url "https://github.com/kdash-rs/kdash/releases/download/v0.3.4/kdash-linux-musl.tar.gz"
    sha256 "181ba81ebc9a4f5a8bc997f96051006d00db8f778a201f39792e6839995f725a"
  end
  version "v0.3.4"
  license "MIT"

  def install
    bin.install "kdash"
    ohai "You're done!  Run with \"kdash\""
    ohai "For runtime flags, see \"kdash --help\""
  end
end