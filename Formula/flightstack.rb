class Flightstack < Formula
  desc "CLI for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.1/flightstack-1.2.1-macos-arm64.tar.gz"
      sha256 "62a559f05fa1cee3a4c2d9591218dfe4d555457809a8ab2413075c2139bbb134"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.1/flightstack-1.2.1-macos-x64.tar.gz"
      sha256 "97931b6fc413065d2a4cc2a7bf520b56176d6df7fda505d398cf45c691d13323"
    end
  end

  def install
    bin.install "flightstack"
  end

  test do
    assert_match "FlightStack CLI", shell_output("#{bin}/flightstack --version")
  end
end
