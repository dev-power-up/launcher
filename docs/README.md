# QuickCenter Launcher
> Launch your Guidewire Software applications and tasks fast!

## What is it?
QuickCenter Launcher is a collection of launch tools for Guidewire Software InsuranceSuite applications and tasks that will save time throughout a developer's daily workflow. 

## Features
- Compatible with InsuranceSuite products version 8, 9, and 10
- Use scripts in conjunction with application launchers, such as [LaunchBar (macOS)](https://www.obdev.at/products/launchbar/index.html) and [Listary (Windows)](https://www.listary.com/), to dramatically increase productivity
- Launch from the Windows command shell or macOS Terminal
- Create shortcuts/alias and launch from the UI
- Support for Windows, macOS, and Linux

## Setup

1. Copy or clone the QuickCenter project into the parent folder along with the Guidewire applications. 
   
    QuickCenter can exist in any location, but it may be helpful to maintain this structure if multiple projects or workspaces exist. For example, some may have the Guidewire base configuration available locally as well as the suite of configured code. 

    ```text
    └── Guidewire
        ├── BillingCenter
        ├── ClaimCenter
        ├── ClaimCenter8
        ├── ContactManager
        ├── PolicyCenter
        └── QuickCenter
    ```

2. Modify the InsuranceSuite paths and available products in the `local.properties` file. 

    - Use the full canonical path name for your operating system. Be sure to terminate folder listings with a trailing slash or backslash.
    - Ensure any spaces are escaped.

    ```bash
    # InsuranceSuite paths
    bc.path=/Users/jpollone/Guidewire/BillingCenter/
    cc.path=/Users/jpollone/Guidewire/ClaimCenter/
    cc8.path=/Users/jpollone/Guidewire/ClaimCenter8/
    cm.path=/Users/jpollone/Guidewire/ContactManager/
    pc.path=/Users/jpollone/Guidewire/PolicyCenter/

    # Availability 
    available.product.codes=bc,cc,cc8,cm,pc
    ```

3. Set the location of JDKs in the `local.properties` file. 

    - If using multiple base platforms of the Guidewire InsuranceSuite, specify the JDK locations accordingly.
    - The JDK path supplants any environment-wide JAVA_HOME specification at run time.

    ```bash
    # JDKs
    java18.path=/Library/Java/JavaVirtualMachines/jdk1.8.0_241.jdk/Contents/Home/
    java17.path=/Library/Java/JavaVirtualMachines/jdk1.7.0_25.jdk/Contents/Home/
    java11.path=/Library/Java/JavaVirtualMachines/jdk-11.0.6.jdk/Contents/Home/
    ```

!> Ensure ```local.properties``` uses ```LF``` line ending characters and not  ```CRLF```.


## Quick Start

The core QuickCenter launch scripts (`quickcenter.cmd` and `quickcenter.sh`) require two arguments: a product code and the Guidewire task. Thus, to start PolicyCenter Studio, run the respective command:

**Windows**

```quickcenter pc studio```

**macOS**

```sh quickcenter pc studio```


## Product Codes and Tasks
The product code are established in the ```local.properties``` file with the code to the left of the period, such as ```bc.path```. (Completed in the Setup portion of this README.)

The gw-task passed to the Guidewire application can be any of the tasks available to the Guidewire application. Common tasks are items such as ```runServer```, ```studio```, and ```compile```.

To view the list of available tasks in version 9 and 10 of the Guidewire platform, run the following command:

**Windows**

```quickcenter pc gwTasks```

**macOS**

```sh quickcenter pc gwTasks```

## Other Ways to Use Launcher

### Launch QuickCenter Directly

1. Add the folder to the search path:

    **Windows**

    ```export PATH="$PATH:~/Guidewire/QuickCenter/launcher/bin"```


    **macOS**

    ```export PATH="$PATH:~/Guidewire/QuickCenter/launcher/bin"```

2. Launch the script from the terminal anywhere by supplying the product and any Guidewire task:

    **macOS**

    ```sh quickcenter bc studio```

### Launch Using a Secondary Task Script

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


### Launch with the Mouse (macOS only)

Use the utility `quickcreate-desktop-runner` to create a shell script icon on the Desktop.

>! Ensure Terminal has proper permissions to access the Desktop.

1. Using the Terminal, change the active folder to the QuickCenter Launcher bin: 

    ```cd Guidewire/QuickCenter/launcher/bin/```

2. Run the command: 

    ```sh create-desktop-runner```

3. The utility will prompt for the product code. Enter an appropriate code, such as ```pc```.

4. The utility will prompt for a Guidewire task. Enter an appropriate task, such as ```studio```.

An icon is created on the Desktop and can be clicked to launch the appropriate task.
