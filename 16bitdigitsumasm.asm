.code
  main proc
 
   mov ax,4356
   mov cx,10
   mov bx,0
   
   
   loopy:
   div cx
   add bx,dx
   mov dx,0
   cmp ax,0
   jne loopy
   
   ending:
  
   
 

main endp
end main

