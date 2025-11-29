class Flightstack < Formula
  desc "CLI for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.3/flightstack-1.2.3-macos-arm64.tar.gz"
      sha256 "513616de921a2ac410b3dee0973ca962c26131cd3b7af19d57f239636ba47404"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.3/flightstack-1.2.3-macos-x64.tar.gz"
      sha256 "bc3c69e3f5ae98fd8ae0fb5626d23e2e6bcc0db209f1d8cb9b3e8396255de4c0"
    end
  end

  def install
    bin.install "flightstack"
  end

  test do
    assert_match "FlightStack CLI", shell_output("#{bin}/flightstack --version")
  end
end
