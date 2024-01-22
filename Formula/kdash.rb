
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Kdash < Formula
  desc "A fast and simple dashboard for Kubernetes written in Rust"
  homepage "https://github.com/kdash-rs/kdash"
  if OS.mac? and Hardware::CPU.arm?
    url "https://github.com/kdash-rs/kdash/releases/download/v0.5.0/kdash-macos-arm64.tar.gz"
    sha256 "f199635a9d9eeba432128e748a4b5d87ef4ab3675671b5b1fde7f368e70e60a5"
  elsif OS.mac? and Hardware::CPU.intel?
    url "https://github.com/kdash-rs/kdash/releases/download/v0.5.0/kdash-macos.tar.gz"
    sha256 "2ea6032915926fe25b829c0d4e13c6b4ab85fb8f4631b08964360b5abd623c6c"
  else
    url "https://github.com/kdash-rs/kdash/releases/download/v0.5.0/kdash-linux-musl.tar.gz"
    sha256 "a45fdc9f37f8540fca581d476121eee511158d9e076d220089e886135e3bd4eb"
  end
  version "v0.5.0"
  license "MIT"

  def install
    bin.install "kdash"
    ohai "You're done!  Run with \"kdash\""
    ohai "For runtime flags, see \"kdash --help\""
  end
end