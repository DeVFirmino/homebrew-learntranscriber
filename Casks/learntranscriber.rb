cask "learntranscriber" do
  version "0.1.1"
  sha256 "ad86974f6205178b541a232af4c287f8e27f37985752b5900f3430eb5ad176ee"

  url "https://github.com/DeVFirmino/learntranscriber/releases/download/v#{version}/LearnTranscriber-arm64.dmg"
  name "LearnTranscriber"
  desc "Live transcription and an AI study assistant for classes and calls"
  homepage "https://learntranscriber.danieldias.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "LearnTranscriber.app"

  zap trash: [
    "~/Library/Application Support/LearnTranscriber",
    "~/Library/Logs/LearnTranscriber",
    "~/Library/Preferences/dev.danieldias.learntranscriber.plist",
    "~/Library/Saved Application State/dev.danieldias.learntranscriber.savedState",
  ]

  caveats <<~EOS
    LearnTranscriber is not notarized by Apple, so macOS blocks its first launch.
    Open System Settings > Privacy & Security, choose Open Anyway next to
    LearnTranscriber, and confirm with your password. Later launches open normally.
  EOS
end
