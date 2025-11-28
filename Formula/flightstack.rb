class Flightstack < Formula
  desc "CLI for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.1.0/flightstack-1.1.0-macos-arm64.tar.gz"
      sha256 "bd57d9dd18b69eb98203e8fd242c0031ce50c910bbd9ab4c4a7c0577a9b9b3a9"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.1.0/flightstack-1.1.0-macos-x64.tar.gz"
      sha256 "a5f22c2824009dcb5e3d9fa9ede9f77757239725531a4f2c7729bc3e7ae490e8"
    end
  end

  def install
    bin.install "flightstack"
  end

  test do
    assert_match "FlightStack CLI", shell_output("#{bin}/flightstack --version")
  end
end
