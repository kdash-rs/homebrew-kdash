
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Kdash < Formula
  desc "A fast and simple dashboard for Kubernetes written in Rust"
  homepage "https://github.com/kdash-rs/kdash"
  if OS.mac?
    url "https://github.com/kdash-rs/kdash/releases/download/v0.2.1/kdash-macos.tar.gz"
    sha256 "d86f6643ddf975cf2b153968d9bb902d5844575a270ebd92077a0571abfabe0d"
  else
    url "https://github.com/kdash-rs/kdash/releases/download/v0.2.1/kdash-linux-musl.tar.gz"
    sha256 "d7b18b52a2680eb37d545f024b8ed5570d7e289ece7fa99aafcfff1a4111ff56"
  end
  version "v0.2.1"
  license "MIT"

  def install
    bin.install "kdash"
    ohai "You're done!  Run with \"kdash\""
    ohai "For runtime flags, see \"kdash --help\""
  end
end