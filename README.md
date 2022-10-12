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
- Force use local help browser to ease accessing the help while this [external issue](https://github.com/flathub/org.freedesktop.Sdk.Extension.openjdk17/issues/1) is not fixed.
