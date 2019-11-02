This is the Snap Packaging for Java-based [CloudCoin Wallet Desktop App](https://cloudcoinconsortium.com/use.html).

Why to package the app with [Snapcraft](https://snapcraft.io/)?

- **Snaps are easy to discover and install**
  Millions of users can browse and install snaps graphically in the Snap Store or from the command-line.
- **Snaps install and run the same across Linux**
  They bundle the exact version of whatever is required, along with all of your app’s dependencies, be they Java modules or system libraries.
- **Snaps automatically update to the latest version**
  Four times a day, users’ systems will check for new versions and upgrade in the background.
- **Upgrades are not disruptive**
  Because upgrades are not in-place, users can keep your app open as it’s upgraded in the background.
- **Upgrades are safe**
  If your app fails to upgrade, users automatically roll back to the previous revision.

## Install

Go to the [Release][release] page to download the snap file that we built.

Then, run the following command to install it.

```bash
sudo snap install cloudcoinwallet_2.1.18_amd64.snap --devmode
```

> NOTE:
>
> You need to finish the snapd installation on your Linux desktop first if not found snap command.

## Rebuild (optional)

To create a snap, you need to finish the installation of the [Snapcraft](https://snapcraft.io/), the snap-building tool.

Since my Mint Linux desktop isn't supporting for the Snapcraft so I used Docker for Snapcraft.

Build snapcraft image

```bash
$ docker build -t snapcraft:core18 .
```

Build snap app

```bash
$ docker run -v "$PWD":/build -w /build snapcraft:core18 snapcraft
```

