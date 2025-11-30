class Flightstack < Formula
  desc "CLI for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.4/flightstack-1.2.4-macos-arm64.tar.gz"
      sha256 "26bdbfb2eb11e6eda2852d8b2413792ca1fa7e4baa3f4ebe3ff181679853d63d"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.4/flightstack-1.2.4-macos-x64.tar.gz"
      sha256 "670c0d4e74e0eeb0543441b1d897a79fde847f86cb28c5315b7f986529a6e4b8"
    end
  end

  def install
    bin.install "flightstack"
  end

  test do
    assert_match "FlightStack CLI", shell_output("#{bin}/flightstack --version")
  end
end
