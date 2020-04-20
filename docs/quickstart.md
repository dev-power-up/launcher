# Quick Start Basics

The core Dev Power-Up! launch scripts (`launcher.cmd` and `launcher.sh`) require two arguments: a product code and the Guidewire task. Thus, to start PolicyCenter Studio, run the respective command:

**Windows**

```launcher.cmd pc studio```

**macOS**

```sh launcher pc studio```


## Product Codes and Tasks
The product code are established in the ```local.properties``` file with the code to the left of the period, such as ```bc.path```. (Completed in the Setup portion of this README.)

The gw-task passed to the Guidewire application can be any of the tasks available to the Guidewire application. Common tasks are items such as ```runServer```, ```studio```, and ```compile```.

To view the list of available tasks in version 9 and 10 of the Guidewire platform, run the following command:

**Windows**

```launcher.cmd pc gwTasks```

**macOS**

```sh launcher pc gwTasks```