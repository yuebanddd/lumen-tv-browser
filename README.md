# Lumen TV Browser

Lumen TV Browser is a remote-first web browser for Android TV and Google TV. It is derived from [TV Bro](https://github.com/truefedex/tv-bro) and keeps the upstream source layout so fixes can continue to flow into this fork.

## MVP scope

- D-pad and TV remote navigation
- On-screen cursor and direct-navigation mode
- Tabs, bookmarks, history, downloads, and incognito mode
- Voice search when the device provides Android speech recognition
- Desktop/mobile user-agent switching
- Built-in popup and EasyList-based ad blocking
- Full-screen media and configurable autoplay
- English, Simplified Chinese, Traditional Chinese, and upstream translations

The first Lumen release uses Android System WebView. This keeps the APK smaller and lets the TV receive rendering-engine security updates through the system component.

## Build

Requirements: JDK 21 and Android SDK 36.

```bash
./gradlew testGenericGeckoExcludedDebugUnitTest assembleGenericGeckoExcludedDebug
```

The APK is written to:

```text
app/build/outputs/apk/genericGeckoExcluded/debug/
```

Pull requests also run the Android CI workflow and publish the debug APK as a workflow artifact.

## Distribution identity

- Application ID: `com.deeplumen.lumentvbrowser`
- Version line: `0.x`
- Default engine: Android System WebView
- Built-in updater: disabled until Lumen has an independent signed release channel

## Upstream and license

The original source is [truefedex/tv-bro](https://github.com/truefedex/tv-bro). See [UPSTREAM.md](UPSTREAM.md) for the sync procedure.

Lumen TV Browser follows the terms in [LICENSE.md](LICENSE.md): the derivative uses a different product name, icon, and application ID, and the in-app About page links to the upstream source.
