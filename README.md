<img src="icon.png" align="right" width="9%">

_[VS Code]_ Custom [App icon]s
==============================
Replace the _[Visual Studio Code][vs code]_ app icon, and associated [file icons][`icns`],
with your own from the [user settings] folder.
Changes persist across updates and restarts, but are reverted on [`uninstall`].

## Install
~~~ sh
code --install-extension danielbayley.custom-app-icons
~~~

Usage
-----
Drop your custom `*.`[`icns`]/[`ico`]/`png`/`bmp` files in an `icons` subfolder of your [user settings],
or specify an alternative `customAppIcons.path` in the package [settings].
[File icons][`icns`] will apply to all corresponding files associated with VS Code.

License
-------
[MIT] © [Daniel Bayley]

[MIT]:                LICENSE.md
[Daniel Bayley]:      https://github.com/danielbayley

[vs code]:            https://code.visualstudio.com
[settings]:           https://code.visualstudio.com/docs/getstarted/settings
[user settings]:      https://code.visualstudio.com/docs/getstarted/settings#_settings-file-locations
[`uninstall`]:        https://code.visualstudio.com/docs/editor/extension-marketplace#_uninstall-an-extension

[app icon]:           https://github.com/microsoft/vscode/blob/main/resources/darwin/code.icns
[`icns`]:             https://github.com/microsoft/vscode/tree/main/resources/darwin
[`ico`]:              https://github.com/microsoft/vscode/tree/main/resources/win32
