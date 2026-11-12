# Homebrew tap for LearnTranscriber

[LearnTranscriber](https://github.com/DeVFirmino/learntranscriber) is a Mac app for live transcription with an AI
study assistant. This tap installs the release DMG from GitHub. It needs an Apple Silicon Mac on macOS 14 or later.

## Install

```sh
brew tap devfirmino/learntranscriber
brew trust devfirmino/learntranscriber
brew install --cask learntranscriber
```

Homebrew asks you to trust a tap that is not its own before it loads anything from it; `brew trust` does that once.

The app is not notarized by Apple, so macOS blocks its first launch: open **System Settings → Privacy & Security**,
choose **Open Anyway** next to LearnTranscriber, and confirm with your password. Later launches open normally.

## Update and remove

```sh
brew upgrade --cask learntranscriber
brew uninstall --cask learntranscriber          # keeps the app's data and settings
brew uninstall --zap --cask learntranscriber    # also removes them and the logs
```

Session notes saved to `~/Documents/LearnTranscriber` stay in both cases.

A daily workflow opens a pull request here when a new release is published.
