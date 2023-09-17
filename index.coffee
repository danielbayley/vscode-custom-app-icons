import os from "node:os"
import { readFile, writeFile, copyFile, stat, unlink } from "node:fs/promises"
import { basename } from "node:path"

import { env, workspace, extensions } from "vscode"
import glob from "fast-glob"
import JSZip from "jszip"
import touch from "touch"


backup = "backup.zip"
type = "nodebuffer"
paths =
  darwin: ["..", "icns"]
  win32: ["resources/win32", "{ico,png,bmp}"]

[resources, format] = paths[os.platform()]


camelCase = (string) =>
  string.toLowerCase()
    .replace /[^A-z0-9]+(.)/g, (_, char) => char.toUpperCase()

exists = (path) =>
  stat path
    .then  => true
    .catch => false


process.chdir "#{env.appRoot}/#{resources}"

id = null
obsolete = null

export activate = ({ extension, extensionMode, globalStoragePath }) =>
  { name, version } = extension.packageJSON
  id = "#{extension.id}-#{version}"

  { extensionPath } = if extensionMode is 2
    extensions.getExtension "vscode.bat"
  else extension
  obsolete = "#{extensionPath}/../.obsolete"

  { path } = config = workspace.getConfiguration camelCase name
  unless path
    path = globalStoragePath
      .replace ///^#{os.homedir()}///, "~"
      .replace /globalStorage.*/, "icons"

    await config.update "path", path, true

  icons = await glob "*.#{format}"

  path = path.replace /^~/, os.homedir()

  unless await exists backup
    zip = new JSZip()
    icons.forEach (icon) => zip.file icon, readFile icon
    zip = await zip.generateAsync { type }
    await writeFile backup, zip

  icons = await glob "#{path}/{#{icons.join()}}"
  await icons.forEach (icon) => copyFile icon, basename icon

  touch "../.."


export deactivate = =>
  return unless await exists obsolete
  uninstall = JSON.parse await readFile obsolete
  return unless Object.keys(uninstall).includes id

  zip = readFile backup
  { files } = await JSZip.loadAsync zip

  unzip = Object.values files
    .map (file) => writeFile file.name, await file.async type

  await Promise.all unzip
    .then => unlink backup
    .catch console.error

  touch "../.."
