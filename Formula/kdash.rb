
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Kdash < Formula
  desc "A fast and simple dashboard for Kubernetes written in Rust"
  homepage "https://github.com/kdash-rs/kdash"
  if OS.mac?
    url "https://github.com/kdash-rs/kdash/releases/download/v0.0.4/kdash-macos.tar.gz"
    sha256 "7b01c607e69b9387c7d9d813d22bfde540efd9a5ce6f0e315e78458df9fa7602"
  else
    url "https://github.com/kdash-rs/kdash/releases/download/v0.0.4/kdash-linux-musl.tar.gz"
    sha256 "673cae364bcd722bda21c6fbcafad9feedd29138b175c0d99c2ef790469a2e1a"
  end
  version "v0.0.4"
  license "MIT"

  def install
    bin.install "kdash"
    ohai "You're done!  Run with \"kdash\""
    ohai "For runtime flags, see \"kdash --help\""
  end
end