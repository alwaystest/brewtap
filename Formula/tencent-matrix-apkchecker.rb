class TencentMatrixApkchecker < Formula
  desc "Matrix Android ApkChecker"
  homepage ""
  url "https://jcenter.bintray.com/com/tencent/matrix/matrix-apk-canary/0.6.0/matrix-apk-canary-0.6.0.jar"
  version "0.6.0"
  sha256 "66d2b152c5cf2215773256c28ec09031380056de65f257b3c9096f7ffecf7c03"

  bottle :unneeded

  resource "sample.apk" do
    url "https://github.com/downloads/stephanenicolas/RoboDemo/robodemo-sample-1.0.1.apk"
    sha256 "bf3ec04631339538c8edb97ebbd5262c3962c5873a2df9022385156c775eb81f"
  end

  def install
    libexec.install "matrix-apk-canary-#{version}.jar"
    bin.write_jar_script libexec/"matrix-apk-canary-#{version}.jar", "apkchecker"
  end

  test do
    resource("sample.apk").stage do
      system bin/"apkchecker", "--apk", "robodemo-sample-1.0.1.apk"
    end
  end
end
