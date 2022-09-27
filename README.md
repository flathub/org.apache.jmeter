# Apache JMeter for Flatpak

Unofficial Apache JMeter Flatpak package.

Waiting for [official response](https://bz.apache.org/bugzilla/show_bug.cgi?id=66258) in order to give them the control of this repository.

## Permissions

- GUI: x11,ipc,dri
- Network (to allow perfonming the actual tests)
- Documents folder (to load and save JMX files)

## Special configurations

Since the application folder is readonly it has been enabled the following configurations and paths have been changed:

- User configuration: `~/.var/app/org.apache.jmeter/config/jmeter/user.properties`
- User plugins directory: `~/.var/app/org.apache.jmeter/data/jmeter/lib/ext/`
- Application log: `~/.var/app/org.apache.jmeter/.local/state/jmeter/jmeter.log`
- Force use local help browser to ease accessing the help while this [external issue](https://github.com/flathub/org.freedesktop.Sdk.Extension.openjdk17/issues/1) is not fixed.

## Known issues

The current configuration doesn't allow the **[JMeter Plugins Manager](https://github.com/undera/jmeter-plugins-manager)** to install plugins, this can be fixed modifying the plugin and [an issue](https://groups.google.com/g/jmeter-plugins/c/-rJeqHz8lCw) have been created to allow custom property to be used to designate the JMeter home to be used so that the `jmeter-wrapper.sh` can point it to `~/.var/app/org.apache.jmeter/data/jmeter/`.
