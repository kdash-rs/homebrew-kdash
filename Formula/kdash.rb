
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Kdash < Formula
  desc "A fast and simple dashboard for Kubernetes written in Rust"
  homepage "https://github.com/kdash-rs/kdash"
  if OS.mac? and Hardware::CPU.arm?
    url "https://github.com/kdash-rs/kdash/releases/download/v1.1.1/kdash-macos-arm64.tar.gz"
    sha256 "47c8af2671bc23f9a74a9a754c44978f214aeddb990867b6647e0215449a820e"
  elsif OS.mac? and Hardware::CPU.intel?
    url "https://github.com/kdash-rs/kdash/releases/download/v1.1.1/kdash-macos.tar.gz"
    sha256 "068caea9e45db8768b7a5c5f910ac935bb0e6aeb39ed2e7477f16b1d22c54bf7"
  else
    url "https://github.com/kdash-rs/kdash/releases/download/v1.1.1/kdash-linux-musl.tar.gz"
    sha256 "a57bd2eb9dafe92ec28d32f32f240a4f672622557ae2fea239dd818f593cd8ab"
  end
  version "v1.1.1"
  license "MIT"

  def install
    bin.install "kdash"
    ohai "You're done!  Run with \"kdash\""
    ohai "For runtime flags, see \"kdash --help\""
  end
end