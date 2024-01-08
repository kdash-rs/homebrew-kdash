
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Kdash < Formula
  desc "A fast and simple dashboard for Kubernetes written in Rust"
  homepage "https://github.com/kdash-rs/kdash"
  if OS.mac?
    url "https://github.com/kdash-rs/kdash/releases/download/v0.4.6/kdash-macos.tar.gz"
    sha256 "6241de30ca96fad0a3c7d249990af71e8f9de3a46e2017c1d227efca452465ef"
  else
    url "https://github.com/kdash-rs/kdash/releases/download/v0.4.6/kdash-linux.tar.gz"
    sha256 "af96453dd9ee268d460d1c8fbad399298f3c52e23522db4721fd970dd82ea5a3"
  end
  version "v0.4.6"
  license "MIT"

  def install
    bin.install "kdash"
    ohai "You're done!  Run with \"kdash\""
    ohai "For runtime flags, see \"kdash --help\""
  end
end