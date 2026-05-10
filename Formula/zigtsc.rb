class Zigtsc < Formula
  desc "TypeScript subset compiler targeting C, C++, and JavaScript"
  homepage "https://github.com/nathanjmorton/zigtsc"
  version "0.15.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nathanjmorton/zigtsc/releases/download/v#{version}/zigtsc-aarch64-macos.tar.gz"
      sha256 "139ab34668fb364db537fa5c4d297c24aafb00839caea45f1e6a4d9b1cbd6993"
    end
    on_intel do
      url "https://github.com/nathanjmorton/zigtsc/releases/download/v#{version}/zigtsc-x86_64-macos.tar.gz"
      sha256 "9dfdca72a3082c7e4e87b40dc7f65ecbe1c7586981dabbab5f7f08213896419f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nathanjmorton/zigtsc/releases/download/v#{version}/zigtsc-aarch64-linux-gnu.tar.gz"
      sha256 "5a66a66fe18bfdad9c899ca418a0bdd11b2ba8b178d17f3ff8371af89d326aff"
    end
    on_intel do
      url "https://github.com/nathanjmorton/zigtsc/releases/download/v#{version}/zigtsc-x86_64-linux-gnu.tar.gz"
      sha256 "4b13779739068f9ee502dad6b5d4b19f5ec5320ddc7954dda2e46a54daca70d4"
    end
  end

  def install
    bin.install "zigtsc"
  end

  test do
    system "#{bin}/zigtsc", "--help"
  end
end
