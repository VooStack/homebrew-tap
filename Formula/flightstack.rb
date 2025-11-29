class Flightstack < Formula
  desc "CLI for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.0/flightstack-1.2.0-macos-arm64.tar.gz"
      sha256 "e5be854d7fa2e8712e2324e7b0469404cd65af5c299eb284ab23ba98ac0a6afd"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.0/flightstack-1.2.0-macos-x64.tar.gz"
      sha256 "e168f5b4b4818fb26c5432cfda7a0934df53fee698d97311ad1c23a73df4a243"
    end
  end

  def install
    bin.install "flightstack"
  end

  test do
    assert_match "FlightStack CLI", shell_output("#{bin}/flightstack --version")
  end
end
