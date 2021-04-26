
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Kdash < Formula
  desc "A fast and simple dashboard for Kubernetes written in Rust"
  homepage "https://github.com/kdash-rs/kdash"
  if OS.mac?
    url "https://github.com/kdash-rs/kdash/releases/download/#{version}/kdash-macos.tar.gz"
    sha256 "95c9282c0e8f16bc3b7f2dc9bb8c597950da451b6358ed75e4ef3ae09f497e2a"
  else
    url "https://github.com/kdash-rs/kdash/releases/download/#{version}/kdash-linux-musl.tar.gz"
    sha256 "ba6011f2e1257d63a531cf8a39ece6c84b86259de39aac613be2fdc1e39f782b"
  end
  version "v0.0.4"
  license "MIT"

  def install
    bin.install "kdash"
    ohai "You're done!  Run with \"kdash\""
    ohai "For runtime flags, see \"kdash --help\""
  end
end