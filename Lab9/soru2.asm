.data
 Arr dw 4,7,5,6,2,8,13
 
 .code 
 isprime proc
            
     mov ax,0
     mov ax,[bx+di]
     cmp dl,al
     je end2
     div dl
     inc dl
     cmp ah,0
     jne isprime 
     
     end1:
     mov ax,0
     ret
     
     end2:
     mov ax,[bx+di]
     ret
     
 isprime endp
 
 main proc
    mov ax,@data
    mov ds,ax
    
    lea bx,Arr
    mov dx,0
    mov di,0
    mov cx,7
    mov ax,0
    mov si,0
    
    label:
     mov ax,0
     mov ax,[bx+di]
     mov dl,2
     call isprime         
     cmp ax,0
     jne stack
     add di,2
     jmp end
     
     stack:  
     push ax
     add di,2
     
     end:
     loop label       
    
 main endp
 end main