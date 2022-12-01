# Apache JMeter for Flatpak

Unofficial Apache JMeter Flatpak package.

<a href='https://flathub.org/apps/details/org.apache.jmeter'><img width='120' alt='Download on Flathub' src='https://flathub.org/assets/badges/flathub-badge-en.png'/></a>

Waiting for [official response](https://github.com/apache/jmeter/issues/5702) in order to give them the control of this repository.

## Permissions

- GUI: x11,ipc
- Network (to allow perfonming the actual tests)
- Documents folder (to load and save JMX files)

## Special configurations

Since the application folder is readonly it has been enabled the following configurations and paths have been changed:

- User configuration: `~/.var/app/org.apache.jmeter/config/jmeter/user.properties`
- User plugins directory: `~/.var/app/org.apache.jmeter/data/jmeter/lib/ext/`
- Application log: `~/.var/app/org.apache.jmeter/.local/state/jmeter/jmeter.log`
- GUI save backups: `~/.var/app/org.apache.jmeter/.local/state/jmeter/backups`

Opening GUI links in a browser is not working due this [external issue](https://github.com/flathub/org.freedesktop.Sdk.Extension.openjdk17/issues/1).
But with the `org.apache.jmeter.Help` extension installed, the application help can be viewed in the internal help browser.
