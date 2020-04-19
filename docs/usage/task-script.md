# Secondary Task Script

Call Dev Power-Up! from another script or alias/synlink and pass the required arugments. See the example in `launcher-template`. 

1. Add the folder to the search path:

**Windows**

```SET Path=c:\Guidewire\Dev-Power-Up\launcher\bin;%Path%```

**macOS**

```export PATH="$PATH:~/Guidewire/Dev-Power-Up/launcher/bin"```

2. Create an alias of the product and command:

**Windows**

```cd C:\Guidewire\Dev-Power-Up\launcher\bin```

```mklink pc-gwTasks.bat launcher.cmd```

**macOS**

```cd Guidewire/Dev-Power-Up/launcher/bin/```

```ln -s launcher pc-runServer```

3. Launch the alias/symlink from the command prompt/terminal in any location:

**Windows**

```pc-gwTasks.cmd```

The macOS command can launch from any path Terminal window.
**macOS**

```sh pc-gwTasks```