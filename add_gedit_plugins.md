## Add Gedit plugins:

### Installation:
Drop the files contained in this package into your `${HOME}/.local/share/gedit/plugins/+` folder.
If the plugins folder does not exist yet, just create it.
Start gedit and open Preferences and in the Plugins section activate the Duplicate Line plugin.

### How it works
The plugin adds the keyboard shortcut CTRL+SHIFT+d to gedit.
When pressing this key combination the plugin will duplicate the current line.
If there is a selection and the selection spans several lines, then all selected lines are duplicated.
If the selection is within a single line, then the selected text will be duplicated.

- https://github.com/hannenz/duplicate
