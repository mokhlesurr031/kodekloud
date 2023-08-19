## Linux Commands 

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

Add content to file => ```cat > new_dile.txt + Contents + CTRL+D ```

View content of file => ```cat new_file.txt ```

Copy file => ```cp new_file.txt copy_file.txt ```

Move(Rename) file => ```mv new_file.txt sample_file.txt``` 

Remove(Delete) file => ```rm new_file.txt``` 


Download files  => ```curl http://www.domain.com/some_file.txt -O ```

                => ```wget http://www.domain.com/some_file.txt -O some-file.txt ```





Check OS version    => ```ls /etc/*release*``` 

                    => ```cat /etc/*release*```














