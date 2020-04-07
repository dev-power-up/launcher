# Quick Start Basics

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