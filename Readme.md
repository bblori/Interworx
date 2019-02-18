# Ioncube Installation on Centos x64

Open the terminal

Create a file called install.sh with the following command:
’’’
    vi install.sh
’’’

Press i to Insert the install.sh content, to save and exit use this command:

’’
    :wq
’’’

Change the install.sh file permission with this command:

’’’
    chmod 777 install.sh
’’’

Run the install.sh file which will install for you the ioncube.
Command:

’’’
    sh install.sh
’’’’

Dont forget to restart your apache!
Command:

’’’
    service restart httpd
’’’