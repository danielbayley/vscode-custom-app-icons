<img src="icon.png" align="right" width="9%">

[VS Code] Custom [App Icons]
==============================
Replace the _[Visual Studio Code][vs code]_ app icon, and associated file icons [`*.icns`] with your own from the [user settings] folder.

**Changes persist across updates and restarts, but are reverted on [`uninstall`].**

## Install
~~~ sh
code --install-extension danielbayley.custom-app-icons
~~~
This [extension] is also [available] from the _[Open VSX]_ registry.

Usage
-----
In the directory of your user settings `~/Library/Application\ Support/Code/User/icons` create a directory called `icons`. Or specify an alternative `customAppIcons.path` in the package [settings].
~~~
cd ~/Library/Application\ Support/Code/User/ && mkdir icons && open .
~~~
Then, copy your custom [`*.icns`]/[`*.ico`]/`*.png`/`*.bmp` files into the `icons` directory. Once your icon files are in the `icons` directory, name each icon file after the name of the icon file that ships with Visual Studio Code. For example, to change the app icon, rename your custom app icon file to `Code.icns`.

[Here's a complete list] of icon names. File icons will apply to all corresponding files associated with Visual Studio Code.

❗️ _Once you've added all of your custom icons, you may need to restart Visual Studio Code for the the changes to apply._

License
-------
[MIT] © [Daniel Bayley]

[MIT]:                LICENSE.md
[Daniel Bayley]:      https://github.com/danielbayley

[vs code]:            https://code.visualstudio.com
[extension]:          https://code.visualstudio.com/docs/editor/extension-marketplace
[settings]:           https://code.visualstudio.com/docs/getstarted/settings
[user settings]:      https://code.visualstudio.com/docs/getstarted/settings#_settings-file-locations
[`uninstall`]:        https://code.visualstudio.com/docs/editor/extension-marketplace#_uninstall-an-extension

[open vsx]:           https://open-vsx.org
[available]:          https://open-vsx.org/extension/danielbayley/custom-app-icons

[app icons]:           https://github.com/microsoft/vscode/blob/main/resources/darwin/code.icns
[Here's a complete list]:      https://github.com/microsoft/vscode/tree/main/resources/darwin
[`*.icns`]:             https://github.com/microsoft/vscode/tree/main/resources/darwin
[`*.ico`]:              https://github.com/microsoft/vscode/tree/main/resources/win32
