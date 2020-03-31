# QuickCenter Launcher
> Launch your Guidewire Software applications and invoke tasks with a few keystrokes project.

## What is it?
QuickCenter Launcher is a collection of launch tools for Guidewire Software InsuranceSuite products that will save time throughout a developer's daily workflow. 

## Features
- Compatible with InsuranceSuite products version 8, 9, and 10
- Use scripts in conjunction with products such as LaunchBar (macOS) and Launchy (Windows) to launch products and processes with just a few keystrokes
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


## Quick Start

The core scripts are `quickcenter.cmd` and `quickcenter.sh`, which require two arguments: a product code and the Guidewire task.

```bash
quickcenter product-code gw-task
```

Thus, to start PolicyCenter Studio, run the respective command:

**Windows**
```bash
quickcenter.cmd pc studio
```
**macOS**
```bash
./quickcenter pc studio
```


## TL:DR
The product code are established in the ```local.properties``` file with the code to the left of the period, such as ```bc.path```. (This was done in the Setup portion of this README.)

The gw-task that is passed to the Guidewire application can be any of the tasks that are available to the Guidewire application. Common tasks are items such as ```runServer```, ```studio```, and ```compile```.

To view the list of available tasks in version 9 and 10 of the Guidewire platform, run the following command:

Windows
```bash
quickcenter pc gwTasks
```
macOS
```bash
./quickcenter pc gwTasks
```

## Other Ways to Use Launch
One alternative is to call QuickCenter from another script, such as the example in `quickcenter-launcher`. 

Create an alias of the product and command:

**macOS**
```bash
cd Guidewire/QuickCenter/launcher/bin/
ln -s quickcenter-launcher pc-runServer
```

Add the folder to the search path
```bash
export PATH="$PATH:~/Guidewire/QuickCenter/launcher/bin"
```

Run the alias from the terminal anywhere:
```bash
sh pc-gwTasks
```

Or, run the shell script:
```bash
sh quickcenter bc studio
```

**Windows**

```bash
quickcenter.cmd pc gwTasks --more
quickcenter.cmd bc studio
quickcenter.cmd cc8 compile
```

**macOS**

```bash
./quickcenter pc gwTasks --more
./quickcenter bc studio
./quickcenter cc8 compile
```