
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Kdash < Formula
  desc "A fast and simple dashboard for Kubernetes written in Rust"
  homepage "https://github.com/kdash-rs/kdash"
  if OS.mac? and Hardware::CPU.arm?
    url "https://github.com/kdash-rs/kdash/releases/download/v1.1.2/kdash-macos-arm64.tar.gz"
    sha256 "9624193f4b89b7fea38661eece2f8bae26938bcc507bce3961f11f4a74ad33f6"
  elsif OS.mac? and Hardware::CPU.intel?
    url "https://github.com/kdash-rs/kdash/releases/download/v1.1.2/kdash-macos.tar.gz"
    sha256 "b1ac98d8407e5bfe01fc0de30bf4837640d7921463736c0a24ddf100c7599400"
  else
    url "https://github.com/kdash-rs/kdash/releases/download/v1.1.2/kdash-linux-musl.tar.gz"
    sha256 "7c3130a47f68f1d30ba858635e5ede33bb360972d0213bd90116156e0c9e2082"
  end
  version "v1.1.2"
  license "MIT"

  def install
    bin.install "kdash"
    ohai "You're done!  Run with \"kdash\""
    ohai "For runtime flags, see \"kdash --help\""
  end
end