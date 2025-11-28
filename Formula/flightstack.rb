class Flightstack < Formula
  desc "CLI for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack/releases/download/cli-v1.1.0/flightstack-1.1.0-macos-arm64.tar.gz"
      sha256 "25e83bc3c0a39295f3ffb6a2f1a70583a22b8f890b6fb954a8592cbb385ac944"
    end
    on_intel do
      url "https://github.com/voostack/flightstack/releases/download/cli-v1.1.0/flightstack-1.1.0-macos-x64.tar.gz"
      sha256 "51d2d9075afec252f4806e0999009e84adb1dbb3694a63025cd4130530b55557"
    end
  end

  def install
    bin.install "flightstack"
  end

  test do
    assert_match "FlightStack CLI", shell_output("#{bin}/flightstack --version")
  end
end
