<img src="icon.svg" align="right" width="9%">

_[VS Code]_ Custom [App icon]s
==============================
Replace the _[Visual Studio Code][vs code]_ app icon, and associated [file icons][macos],
with your own from the [user settings] folder.

> [!NOTE]
> Changes persist across updates and restarts, but are reverted on [`uninstall`].

## Install
~~~ sh
code --install-extension danielbayley.custom-app-icons
~~~
This [extension] is also [available] from the _[Open VSX]_ registry.

Usage
-----
Drop your custom `*.`([`icns`][macos]|[`ico`][windows]|`png`|`bmp`) files in
an `icons/` directory of your [user settings] folder, or specify an alternative
`customAppIcons.path` in the package [settings]. For example, on macOS:
~~~ sh
VSCODE=Code # or VSCodium
mkdir -p "$HOME/Library/Application Support/$VSCODE/User/icons" && cp *.icns $_
~~~

> [!NOTE]
> You may need to restart VS Code for changes to apply.

> [!TIP]
> See the complete list of icons for [macOS], [Windows] or [Linux].
>
> [File icons][macos] will apply to all corresponding files associated with VS Code.

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

[app icon]:           https://github.com/microsoft/vscode/blob/main/resources/darwin/code.icns
[macos]:              https://github.com/microsoft/vscode/blob/main/resources/darwin
[windows]:            https://github.com/microsoft/vscode/tree/main/resources/win32
[linux]:              https://github.com/microsoft/vscode/tree/main/resources/linux
