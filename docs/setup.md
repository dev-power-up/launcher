# Setup

1. Copy or clone the Dev Power-Up! project into the parent Guidewire folder. 
   
Dev Power-Up! can exist in any location, but it may be helpful to maintain this structure if multiple projects or workspaces exist. For example, some may have the Guidewire base configuration available locally as well as the suite of configured code. 

```text
└── Guidewire
    └── Suite
        ├── BillingCenter
        ├── ClaimCenter
        ├── ClaimCenter8
        ├── ContactManager
        ├── PolicyCenter
    └── Dev-Power-Up
```

2. Modify the InsuranceSuite paths and available products in the `local.properties` file. 

    - Use the full canonical path name for your operating system. Be sure to terminate folder listings with a trailing slash or backslash.
    - Unused products/JDKs can be removed. 
    - Properties must be unique.
    - The product code (left side of the period of the product path key) can be any designator. If working with multiple projects or workspaces, it may make sense to create a key related to that project.


**Windows**
```text
# InsuranceSuite paths
pc.path=c:\Guidewire\Suite\PolicyCenter\
bc.path=c:\Guidewire\Suite\BillingCenter\
pcbase.path=c:\Guidewire\Suite-SB\PolicyCenter\

# Availability 
available.product.codes=pc,pcbase,bc

# Product version
product.version.path=modules/configuration/product.properties
```

**macOS**
```text
# InsuranceSuite paths
bc.path=/Users/yourusername/Guidewire/Suite/BillingCenter/
cc.path=/Users/yourusername/Guidewire/Suite/ClaimCenter/
cc8.path=/Users/yourusername/Guidewire/Suite/ClaimCenter8/
cm.path=/Users/yourusername/Guidewire/Suite/ContactManager/
pc.path=/Users/yourusername/Guidewire/Suite/PolicyCenter/

# Availability 
available.product.codes=bc,cc,cc8,cm,pc

# Product version
product.version.path=modules/configuration/product.properties
```

!> If the Dev Power-Up! Launcher folder was cloned, set the local git index to ignore any changes to the local properties file:
    
```git update-index --assume-unchanged local.properties```

3. Set the location of JDKs in the `local.properties` file. 

    - If using multiple base platforms, specify the JDK locations accordingly.
    - The JDK is referenced on the product's properties file with the property `product.java.version`. 
    - The `java` prefix and `.path` suffix are added to the reported version. Thus, JDK 11.0.3 is referenced as `java11.0.3.path`.
    - Refer to guidelines on supported JDKs. In the example below, 11.0.3 is the minimum requirement and the local system has 11.0.6 installed.
    - The JDK path supplants any environment-wide JAVA_HOME specification at run time.

```text
# JDKs
java1.8-amd64.path=/Library/Java/JavaVirtualMachines/jdk1.8.0_241.jdk/Contents/Home/
java11.0.3.path=/Library/Java/JavaVirtualMachines/jdk-11.0.6.jdk/Contents/Home/
```

!> Ensure ```local.properties``` uses ```LF``` line ending characters and not  ```CRLF```.