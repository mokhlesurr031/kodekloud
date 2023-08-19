## Linux Commands 

How long the system is running since last reboot => ```uptime```
Print without a new trailing line afterwards => ```echo -n Hello``` 


### Linux Command Types
1. Internal or Built-in Commands => echo, cd, pwd, set, etc
2. External Commands => mv, date, uptime, cp, etc. 

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














