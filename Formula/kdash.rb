
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Kdash < Formula
  desc "A fast and simple dashboard for Kubernetes written in Rust"
  homepage "https://github.com/kdash-rs/kdash"
  if OS.mac? and Hardware::CPU.arm?
    url "https://github.com/kdash-rs/kdash/releases/download/v2.0.0/kdash-macos-arm64.tar.gz"
    sha256 "39d9e0b7db8b3a6b0b0bdb731d08a8904e524b0794e7c992db830dd077ce7107"
  elsif OS.mac? and Hardware::CPU.intel?
    url "https://github.com/kdash-rs/kdash/releases/download/v2.0.0/kdash-macos.tar.gz"
    sha256 "1571b49c8b19cff6273ffbed64dc4ccaf2859d7598ef9672c75bb2f32ad55135"
  else
    url "https://github.com/kdash-rs/kdash/releases/download/v2.0.0/kdash-linux-musl.tar.gz"
    sha256 "384e7a08cd37e445f06f13bf96efccb6e526c7e1eac875686ac7a93387ecce24"
  end
  version "v2.0.0"
  license "MIT"

  def install
    bin.install "kdash"
    ohai "You're done!  Run with \"kdash\""
    ohai "For runtime flags, see \"kdash --help\""
  end
end