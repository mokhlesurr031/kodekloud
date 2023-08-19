## Linux Commands 

How long the system is running since last reboot => ```uptime```
Print without a new trailing line afterwards => ```echo -n Hello``` 


### Linux Command Types
1. Internal or Built-in Commands => echo, cd, pwd, set, etc
2. External Commands => mv, date, uptime, cp, etc. 


About commands => whatis command_name (whatis ls, date)
Options => man date

Create multiple directory => mkdir dir_a, dir_b, dir_c 


Absolute path => Complete path from the root directory (denoted by /)

Relative path => Path related to the present working directory.


Rename directory name => mv Asia/BD/ Asia/Bangladesh (From BD to Bangladesh)

File content in scrollable format => more filename.txt [space-scrolls the display. enter-scrolls the display one line, b-scrolls the display backwards one screenful of data, /-search text. q-exit out]



Long list files => ls -l 

List files with hidden file => ls -a 

Long list files in order created => ls -lt (reverse order = ls -ltr)



Print on screen => ```echo Hi ```

List files and folders => ```ls ```

Change directory => ```cd my_dir ```

Present working directory => ```pwd ```

Make directory => ```mkdir new_directory ```

Multiple commands => ```cd new_directory; mkdir www; pwd ```


Make directory hierarchy => 

    mkdir /tmp/asia                     |

    mkdir /tmp/asia/india               | => mkdir -p /tmp/asia/india/bangalore 
    mkdir /tmp/asia/india/bangalore     |


Remove directory => ```rm -r /tmp/my_dir ```

Copy directory => ```cp -r my_dir /tmp/my_dir```


Create a new file(no contents) => ```touch new_file.txt ```

Create file and add content to file => ```cat > new_dile.txt + Contents + CTRL+D ```

View content of file => ```cat new_file.txt ```

Copy file => ```cp new_file.txt copy_file.txt ```

Move(Rename) file => ```mv new_file.txt sample_file.txt``` 

Remove(Delete) file => ```rm new_file.txt``` 


Download files  => 

    curl http://www.domain.com/some_file.txt -O 

    wget http://www.domain.com/some_file.txt -O some-file.txt 


Check OS version => 
    ls /etc/*release*

    cat /etc/*release*





Linux Shells => 
1. Bourne Shell (sh)
2. C Shell (csh or tcsh)
3. Korn Shell (ksh)
4. Z Shell (zsh)
5. Bourne again Shell (bash) 



Change the shell => chsh (sudo chsh -s /bin/sh bob - changes bobs shell from bash to bourne shell)

See all environment variables => ```env```
Set environment variable => ```export var_name=value```
Add environment variable persistent by add it to profile => echo 'export ENV_NAME=VALUE' >> /home/user-name/.profile 
Alias => alias env-name=new-name




## Linux Kernel 

Responsible for 4 major tasks: Memory Management, Process Management, Device Drivers, System Calls and Security. 

Display information about kernel => ```uname``` 

Display kernel version => ```uname -r```



### Memory Management 
2 Types: 
1. Kernel Space: Kernel and Device Drivers(Kernel Code, Extentions, Drivers etc)
2. User Space: Application/Programs (Programming Languages, Docker Containers)

OS Details in User Space=> cat /etc/os-release 

See all disk srivers => lsblk




## Boot Process 
4 Steps 
BIOS POST(POST-Power On Self Test) => Boot Loader (GRUB2) => Kernel Initialization => INIT Process (systemd)

Know the INIT Process => sudo ls -l /sbin/init




### RunLevel 
runlevel 0 -> poweroff.target

runlevel 1 -> rescue.target

runlevel 2 -> multi-user.target

runlevel 3 -> multi-user.target

runlevel 4 -> multi-user.target

runlevel 5 -> graphical.target

runlevel 6 -> reboot.target

Check => ```runlevel```

Check runlevel name => systemctl get-default 

Change runlevel => sudo systemctl set-default multi-user.target (to level 3)



## File Types

Everything is a file in linux even a directory is a special type of file. 

3 types:
1. Regular file 
2. Directory 
3. Special Files (character, block, links-hard link, soft link; named pipes)


Get the file types => file /dir or file filename.ext 


File Identifier 
```ls``` 
Directory - d 
Regular file - -
Character Device - c 
Link - l 
Socket File - s 
Pipe - p 
Block Device - b 



## File System Hierarchy 

                         Root 

/bin /boot /dev /etc /home /lib /media /mnt /opt /tmp /usr /var 

Install any third party program - Put them into /opt 
All external media is mounted in - /media file system 
External Harddisk like mouse and keyboard and devices - /dev system 
Configuration file in linux - /etc 
Shared library to be imported in - /lib 
Logs - /var 





## Linux Package Managers 

DPKG/APT - Ubuntu, Debian 
RPM - RedHat(Paid), CentOS, RHEL, Fedora 

Package => ```A compressed archieve that contains all the file that are required by a particular software to run. ```


Types of package managers => DPKG, APT, APT-GET, RPM, YUM, DNF. 


RPM - Red Hat Package Manager. (CentOS, RedHat, Fedora)


RPM has 5 basic mode of operations:
1. Installing. => rpm -ivh telnet.rpm 
2. Uninstalling. => rpm -e telnet.rpm
3. Upgrade. => rpm -Uvh telnet.rpm 
4. Query. => rpm -q telnet.rpm
5. Verifying. => rpm -Vf <path to file>


YUM 

1. Installing => yum install package.rpm 
2. Repolist => sudo yum repolist 



DPKG used to 
1. Install => dpkg -i package.deb 
2. Uninstall => dpkg -r package.deb 
3. List => dpkg -l package 
4. Status => dpkg -s package
5. Verify => dpkg -p <path to file>


## Compress and Archive 
du - disk usage 

File details => du -sk test.img
        => du -sh test.img (more human readable format)
        => ls -lh test.img (more details format)


Archieve files 
        => tar -cf test.tar file1 file2 file3 [3 file combined in test.tar file]
        => tar -tf test.tar [see files inside the tar]
        => tar -xf test.tar [extract the tar file]
        => tar -zcf test.tar file1 file2 file3 [compress the tar to reduce the size]

Compressing files

        Compress Command                                         Uncompress Command
    => bzip2 test.img                                       => bunzip2 test.img.bz2 
    => gzip test.img                                        => gunzip test.img.gz 
    => xz test.img                                          => unxz test.img.xz 
    => du -sh test.img.xz [see file size]




## Searching for files and directories 

Search file named city.txt => locate city.txt [sudo updatedb if locate command not works]
Search by find command => find /home/mahin -name city.txt 
Search by grep command (search character) => grep second test.txt [searches the all maching words second in test.txt file]
                                            => grep -r "third line" /home/mahin [search for third line string on this directory]
                                            => grep -i "good" new.txt [searches for word good in all upper and lower case]
                                            => grep -w "good" new.txt [searches for the specific word]


















