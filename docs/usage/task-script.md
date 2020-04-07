# Secondary Task Script

Call QuickCenter from another script or alias/synlink and pass the required arugments. See the example in `quickcenter-launcher`. 

1. Add the folder to the search path:

**Windows**

```SET Path=c:\Guidewire\QuickCenter\launcher\bin;%Path%```

**macOS**

```export PATH="$PATH:~/Guidewire/QuickCenter/launcher/bin"```

2. Create an alias of the product and command:

**Windows**

```cd C:\Guidewire\QuickCenter\launcher\bin```

```mklink pc-gwTasks.bat quickcenter-launcher.cmd```

**macOS**

```cd Guidewire/QuickCenter/launcher/bin/```

```ln -s quickcenter-launcher pc-runServer```

3. Launch the alias/symlink from the command prompt/terminal in any location:

**Windows**

```pc-gwTasks.bat```

The macOS command can launch from any path Terminal window.
**macOS**

```sh pc-gwTasks```