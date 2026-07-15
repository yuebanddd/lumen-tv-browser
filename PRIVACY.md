# Lumen TV Browser Privacy Policy

Effective: July 15, 2026

Lumen TV Browser is an open-source Android TV browser maintained at [yuebanddd/lumen-tv-browser](https://github.com/yuebanddd/lumen-tv-browser). It is derived from [TV Bro](https://github.com/truefedex/tv-bro).

## Data handled by the app

Lumen TV Browser does not include a Lumen account system, advertising SDK, or first-party analytics SDK. The app does not send browsing history, bookmarks, or downloaded-file records to a Lumen-operated server.

Browser data such as history, bookmarks, tabs, preferences, cookies, cache, and site storage is kept on the TV by the application or its selected web engine. Incognito mode avoids saving browsing history and clears its session data when the incognito process exits, but downloads and bookmarks explicitly created by the user remain.

## Network requests

Websites opened by the user receive normal browser requests and may collect data under their own policies. Search terms are sent to the search provider selected in Settings. When ad blocking is enabled, the app may download the configured filter list; the default source is EasyList.

Android System WebView and optional GeckoView are separately maintained rendering engines. Their behavior and any system-level diagnostics are governed by their respective providers and device settings.

## Permissions

The app may request microphone access for voice search, storage or media access for downloads and uploads, camera or location access when a website requests those capabilities, notifications for active downloads, and package-install permission when the user chooses to open an APK. Website permissions are presented to the user where Android and the selected engine support prompting.

## User control

Users can clear browsing data from the application settings or clear all local application data from Android TV system settings. Uninstalling the app removes its private application data; files saved into shared Downloads storage may remain.

## Changes and questions

Policy changes are published in the repository history. Questions and security reports can be opened through the repository issue tracker without including private browsing data.
