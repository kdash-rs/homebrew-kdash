
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Kdash < Formula
  desc "A fast and simple dashboard for Kubernetes written in Rust"
  homepage "https://github.com/kdash-rs/kdash"
  if OS.mac?
    url "https://github.com/kdash-rs/kdash/releases/download/v0.0.6/kdash-macos.tar.gz"
    sha256 "6765dfc966e8c9bbbe4e6a2fa7c2f5b58b06ac1a2ba3db404aaa95b198feb292"
  else
    url "https://github.com/kdash-rs/kdash/releases/download/v0.0.6/kdash-linux-musl.tar.gz"
    sha256 "93ffc4939ab25fc71d1e05f9c6bb823f2dd0f0a8a1df19373dc8607ca27648aa"
  end
  version "v0.0.6"
  license "MIT"

  def install
    bin.install "kdash"
    ohai "You're done!  Run with \"kdash\""
    ohai "For runtime flags, see \"kdash --help\""
  end
end