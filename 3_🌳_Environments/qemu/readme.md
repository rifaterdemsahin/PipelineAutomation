wget https://fedorapeople.org/groups/virt/virtio-win/direct-downloads/stable-virtio/virtio-win.iso
wget https://software-static.download.prss.microsoft.com/dbazure/888969d5-f34g-4e03-ac9d-1f9786c66749/26100.1742.240906-0331.ge_release_svc_refresh_SERVER_EVAL_x64FRE_en-us.iso


---

### Purpose of the Two Files

#### **1. VirtIO Drivers ISO (`virtio-win.iso`)**
- **Purpose**: The VirtIO drivers ISO contains paravirtualized drivers for Windows virtual machines running on KVM (Kernel-based Virtual Machine) or QEMU[1](https://pve.proxmox.com/wiki/Windows_VirtIO_Drivers). These drivers enable efficient access to devices and peripherals, improving performance compared to emulated devices.
- **Usage**: During the Windows Server installation, these drivers are loaded to ensure proper functionality of storage and network devices. Without these drivers, the virtual machine may not recognize the virtual hardware correctly[1](https://pve.proxmox.com/wiki/Windows_VirtIO_Drivers).

#### **2. Windows Server ISO (`26100.1742.240906-0331.ge_release_svc_refresh_SERVER_EVAL_x64FRE_en-us.iso`)**
- **Purpose**: The Windows Server ISO is the installation media for Windows Server. It contains the operating system files needed to install and set up Windows Server on your virtual machine[2](https://www.microsoft.com/en-us/evalcenter/evaluate-windows-server-2019).
- **Usage**: This ISO is mounted as a CD-ROM drive in the virtual machine, allowing you to boot from it and perform the installation of Windows Server[2](https://www.microsoft.com/en-us/evalcenter/evaluate-windows-server-2019).

### Why Both Files Are Needed
- **Windows Server ISO**: Provides the operating system that you want to install and run in the virtual machine.
- **VirtIO Drivers ISO**: Ensures that the virtual machine can interact efficiently with the virtual hardware, such as disk drives and network interfaces, during and after the installation of Windows Server[1](https://pve.proxmox.com/wiki/Windows_VirtIO_Drivers).

### Running in GitHub Codespaces
To run the QEMU command in GitHub Codespaces, follow these steps:

1. **Set Up Dev Container**:
   - Create a `.devcontainer` directory in your repository and add a `devcontainer.json` file with the following content:
     ```json
     {
       "name": "QEMU Dev Container",
       "image": "mcr.microsoft.com/vscode/devcontainers/base:ubuntu",
       "settings": {
         "terminal.integrated.shell.linux": "/bin/bash"
       },
       "runArgs": [
         "--memory=8g",
         "--cpus=4"
       ],
       "postCreateCommand": "sudo apt-get update && sudo apt-get install -y qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils virt-manager"
     }
     ```

2. **Rebuild the Container**:
   - After adding the `devcontainer.json` file, rebuild the container to apply the new configuration.

3. **Download Required Files**:
   - Use `wget` to download the necessary files:
     ```sh
     wget https://fedorapeople.org/groups/virt/virtio-win/direct-downloads/stable-virtio/virtio-win.iso
     wget https://software-static.download.prss.microsoft.com/dbazure/888969d5-f34g-4e03-ac9d-1f9786c66749/26100.1742.240906-0331.ge_release_svc_refresh_SERVER_EVAL_x64FRE_en-us.iso
     ```

4. **Run the QEMU Command**:
   - Open a terminal in your Codespace and run the QEMU command:
     ```sh
     qemu-system-x86_64 -enable-kvm -m 4096 -cpu host -smp 2 \
       -drive file=/workspaces/PipelineAutomation/6_🔣_Symbols/4_ActiveDirectory/windows-server.qcow2,format=qcow2 \
       -cdrom /workspaces/PipelineAutomation/6_🔣_Symbols/4_ActiveDirectory/windows-server.iso \
       -drive file=/workspaces/PipelineAutomation/6_🔣_Symbols/4_ActiveDirectory/virtio-win.iso,media=cdrom \
       -net nic -net user,hostfwd=tcp::3389-:3389
     ```

This setup will allow you to run a Windows Server virtual machine using QEMU in GitHub Codespaces. If you encounter any issues or need further assistance, feel free to ask!

[1](https://pve.proxmox.com/wiki/Windows_VirtIO_Drivers): [Proxmox VE VirtIO Drivers](https://pve.proxmox.com/wiki/Windows_VirtIO_Drivers)
[2](https://www.microsoft.com/en-us/evalcenter/evaluate-windows-server-2019): [Microsoft Evaluation Center](https://www.microsoft.com/en-us/evalcenter/evaluate-windows-server-2019)


---

@rifaterdemsahin ➜ /workspaces/PipelineAutomation/3_🌳_Environments/qemu (main) $ wget https://fedorapeople.org/groups/virt/virtio-win/direct-downloads/stable-virtio/virtio-win.iso
--2025-03-27 16:01:35--  https://fedorapeople.org/groups/virt/virtio-win/direct-downloads/stable-virtio/virtio-win.iso
Resolving fedorapeople.org (fedorapeople.org)... 152.19.134.196, 2600:2701:4000:5211:dead:beef:a7:9475
Connecting to fedorapeople.org (fedorapeople.org)|152.19.134.196|:443... connected.
HTTP request sent, awaiting response... 301 Moved Permanently
Location: https://fedorapeople.org/groups/virt/virtio-win/direct-downloads/archive-virtio/virtio-win-0.1.266-1/virtio-win.iso [following]
--2025-03-27 16:01:35--  https://fedorapeople.org/groups/virt/virtio-win/direct-downloads/archive-virtio/virtio-win-0.1.266-1/virtio-win.iso
Reusing existing connection to fedorapeople.org:443.
HTTP request sent, awaiting response... 301 Moved Permanently
Location: https://fedorapeople.org/groups/virt/virtio-win/direct-downloads/archive-virtio/virtio-win-0.1.266-1/virtio-win-0.1.266.iso [following]
--2025-03-27 16:01:35--  https://fedorapeople.org/groups/virt/virtio-win/direct-downloads/archive-virtio/virtio-win-0.1.266-1/virtio-win-0.1.266.iso
Reusing existing connection to fedorapeople.org:443.
HTTP request sent, awaiting response... 200 OK
Length: 724434944 (691M) [application/octet-stream]
Saving to: ‘virtio-win.iso’

virtio-win.iso                 100%[====================================================>] 690.88M  36.8MB/s    in 20s     

2025-03-27 16:01:55 (34.8 MB/s) - ‘virtio-win.iso’ saved [724434944/724434944]

@rifaterdemsahin ➜ /workspaces/PipelineAutomation/3_🌳_Environments/qemu (main) $ wget https://go.microsoft.com/fwlink/?linkid=2293312&clcid=0x809&culture=en-gb&country=gb
[1] 8062
[2] 8063
[3] 8064
[2]   Done                    clcid=0x809

Redirecting output to ‘wget-log’.
[3]+  Done                    culture=en-gb
@rifaterdemsahin ➜ /workspaces/PipelineAutomation/3_🌳_Environments/qemu (main) $ wget https://software-static.download.prss.microsoft.com/dbazure/888969d5-f34g-4e03-ac9d-1f9786c66749/26100.1742.240906-0331.ge_release_svc_refresh_SERVER_EVAL_x64FRE_en-us.iso
--2025-03-27 16:03:29--  https://software-static.download.prss.microsoft.com/dbazure/888969d5-f34g-4e03-ac9d-1f9786c66749/26100.1742.240906-0331.ge_release_svc_refresh_SERVER_EVAL_x64FRE_en-us.iso
Resolving software-static.download.prss.microsoft.com (software-static.download.prss.microsoft.com)... 146.75.74.172, 2a04:4e42:82::684
Connecting to software-static.download.prss.microsoft.com (software-static.download.prss.microsoft.com)|146.75.74.172|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 6014152704 (5.6G) [application/octet-stream]
Saving to: ‘26100.1742.240906-0331.ge_release_svc_refresh_SERVER_EVAL_x64FRE_en-us.iso’

26100.1742.240906-0331.ge_rele 100%[====================================================>]   5.60G   154MB/s    in 1m 50s  

2025-03-27 16:05:19 (52.1 MB/s) - ‘26100.1742.240906-0331.ge_release_svc_refresh_SERVER_EVAL_x64FRE_en-us.iso’ saved [6014152704/6014152704]

[1]+  Done                    wget https://go.microsoft.com/fwlink/?linkid=2293312
@rifaterdemsahin ➜ /workspaces/PipelineAutomation/3_🌳_Environments/qemu (main) $ 

@rifaterdemsahin ➜ /workspaces/PipelineAutomation/3_🌳_Environments/qemu (main) $ tree
.
├── 26100.1742.240906-0331.ge_release_svc_refresh_SERVER_EVAL_x64FRE_en-us.iso
├── index.html?linkid=2293312
├── readme.md
├── virtio-win.iso
└── wget-log

0 directories, 5 files
@rifaterdemsahin ➜ /workspaces/PipelineAutomation/3_🌳_Environments/qemu (main) $ 


└── wget-log

0 directories, 5 files
@rifaterdemsahin ➜ /workspaces/PipelineAutomation/3_🌳_Environments/qemu (main) $ ls -an 
total 6580740
drwxrwxrwx+ 2 1000 1000       4096 Mar 27 16:05 .
drwxrwxrwx+ 3 1000    0       4096 Mar 27 16:01 ..
-rw-rw-rw-  1 1000 1000 6014152704 Sep 19  2024 26100.1742.240906-0331.ge_release_svc_refresh_SERVER_EVAL_x64FRE_en-us.iso
-rw-rw-rw-  1 1000 1000       8004 Mar 27 16:05 readme.md
-rw-rw-rw-  1 1000 1000  724434944 Nov  4 02:10 virtio-win.iso
-rw-rw-rw-  1 1000 1000      58783 Mar 27 16:05 wget-log
@rifaterdemsahin ➜ /workspaces/PipelineAutomation/3_🌳_Environments/qemu (main) $ 