
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Kdash < Formula
  desc "A fast and simple dashboard for Kubernetes written in Rust"
  homepage "https://github.com/kdash-rs/kdash"
  if OS.mac?
    url "https://github.com/kdash-rs/kdash/releases/download/v0.2.2/kdash-macos.tar.gz"
    sha256 "762792fcfa4bcf00e34a7940ede08888f1c2f025f7c73a52998b7910de48b627"
  else
    url "https://github.com/kdash-rs/kdash/releases/download/v0.2.2/kdash-linux-musl.tar.gz"
    sha256 "56e8f9abfa5134dbdf67364ce7f497c8679dcaacbadfc17c8cda75b4920ddecf"
  end
  version "v0.2.2"
  license "MIT"

  def install
    bin.install "kdash"
    ohai "You're done!  Run with \"kdash\""
    ohai "For runtime flags, see \"kdash --help\""
  end
end