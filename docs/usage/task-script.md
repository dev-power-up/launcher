# Secondary Task Script

Call Dev Power-Up! from another script or alias/synlink and pass the required arugments. See the example in `launcher-template`. 

**Windows**


1. Add the folder to the search path:

```SET Path=c:\Guidewire\Dev-Power-Up\launcher\bin;%Path%```

2. Create an alias of the product and command:

```cd C:\Guidewire\Dev-Power-Up\launcher\bin```

```mklink pc_gwTasks.cmd launcher-task.cmd```

3. Launch the alias/symlink from the command prompt/terminal in any location:

```pc_gwTasks.cmd```


**macOS**

1. Add the folder to the search path:

```export PATH="$PATH:~/Guidewire/Dev-Power-Up/launcher/bin"```

2. Create an alias of the product and command:

```cd Guidewire/Dev-Power-Up/launcher/bin/```

```ln -s launcher-task pc_gwTasks```

3. Launch the alias/symlink from the command prompt/terminal in any location:

```sh pc_gwTasks```