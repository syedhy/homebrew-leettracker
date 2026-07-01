# Homebrew Tap for LeetTracker

This is the Homebrew tap for **LeetTracker**, a free macOS app that shows your LeetCode progress and streak in desktop widgets.

Main app repository:

https://github.com/syedhy/LeetTracker

Current release:

```text
v1.0.0-beta
```

---

## Install

Run these commands:

```bash
brew tap syedhy/leettracker
brew trust --cask syedhy/leettracker/leettracker
brew install --cask syedhy/leettracker/leettracker
```

---

## Important first-launch note

LeetTracker is currently **unsigned** because it is not Apple-notarized yet.

On first launch, macOS may show a warning like:

> Apple could not verify “LeetTracker.app” is free of malware that may harm your Mac or compromise your privacy

This is expected for the current beta.

If you see this warning, **do not click Move to Trash** if you want to use the app.

### How to open LeetTracker

1. Click **Done**
2. Open **System Settings**
3. Go to **Privacy & Security**
4. Scroll down near the bottom
5. Find the message about `LeetTracker.app` being blocked
6. Click **Open Anyway**
7. Confirm by clicking **Open**

After this, LeetTracker should open normally.

Some macOS versions may also allow right-clicking `LeetTracker.app` in the Applications folder and choosing **Open**, but the **Privacy & Security → Open Anyway** method is the most reliable.

---

## After installation

Open LeetTracker from the **Applications** folder.

Then:

1. Enter your LeetCode username
2. Press **Save**
3. Press **Refresh**
4. Add the Progress and Streak widgets
5. Enable **Background Refresh** from Settings

---

## Widgets

LeetTracker includes two widgets:

- Progress widget
- Streak widget

To add them:

1. Right-click the desktop
2. Click **Edit Widgets**
3. Search for **LeetTracker**
4. Add the widgets

---

## Background Refresh

Background Refresh lets LeetTracker update widget data even when the main app is closed.

To enable it:

1. Open LeetTracker
2. Go to **Settings**
3. Click **Enable Background Refresh**

Refreshes are scheduled about every 2 hours. macOS controls exact timing.

---

## Uninstall

To uninstall the app:

```bash
brew uninstall --cask leettracker
```

To remove app data and support files too:

```bash
brew zap leettracker
```

---

## Troubleshooting

### Homebrew says the tap is not trusted

Run:

```bash
brew trust --cask syedhy/leettracker/leettracker
```

Then install again:

```bash
brew install --cask syedhy/leettracker/leettracker
```

---

### App will not open

Because the current beta is unsigned, macOS may block it on first launch.

To fix it:

1. Click **Done**
2. Open **System Settings**
3. Go to **Privacy & Security**
4. Scroll down
5. Find the message about `LeetTracker.app`
6. Click **Open Anyway**
7. Confirm **Open**

Do not click **Move to Trash** unless you want to remove the app.

---

### Widgets do not appear

Make sure:

1. `LeetTracker.app` is installed in the **Applications** folder
2. You opened LeetTracker once
3. You waited a few seconds
4. You searched for **LeetTracker** in Edit Widgets

If needed, log out and log back in.

---

### Widgets say “add username”

Open LeetTracker and make sure:

1. Your LeetCode username is entered
2. You pressed **Save**
3. You pressed **Refresh**
4. The app shows your stats

Then remove and re-add the widgets if needed.

---

## Cask details

Cask file:

```text
Casks/leettracker.rb
```

Current app release:

```text
v1.0.0-beta
```

Direct ZIP release:

```text
https://github.com/syedhy/LeetTracker/releases/download/v1.0.0-beta/LeetTracker-1.0-macOS.zip
```
