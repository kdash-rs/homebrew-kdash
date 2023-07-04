
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Kdash < Formula
  desc "A fast and simple dashboard for Kubernetes written in Rust"
  homepage "https://github.com/kdash-rs/kdash"
  if OS.mac?
    url "https://github.com/kdash-rs/kdash/releases/download/v0.4.0/kdash-macos.tar.gz"
    sha256 "6e7e4c00cec0a14fc25dc525efc282938971f547f72164ecec2ff3bef30ebb10"
  else
    url "https://github.com/kdash-rs/kdash/releases/download/v0.4.0/kdash-linux-musl.tar.gz"
    sha256 "1c6ad268a688e127707ee504e64c163b9d3e372ce9d88678c39cdaa87093fd77"
  end
  version "v0.4.0"
  license "MIT"

  def install
    bin.install "kdash"
    ohai "You're done!  Run with \"kdash\""
    ohai "For runtime flags, see \"kdash --help\""
  end
end