### How to Disable ALSR in GDB  
  
get some help  
`gdb --batch -ex 'help all' | grep -iP '(addr)|(space)|(layout)|(rand)' | sort | > aslr_help.txt`  
  
realize this is what you want  
`set disable-randomization -- Set disabling of debuggee's virtual address space randomization`  
  
### How to Run it in the Debugger  
  
`gdb --args exploit example_data.txt`  
  
### How to Find System  
  
run  
print system  
  
### How to Find Call to /bin/sh  
