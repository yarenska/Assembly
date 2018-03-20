.data
 Arr db 6,54,3,21,5,1
 
 .code   
 swap proc   
    
    mov dl,[bx+di]
    mov dh,[bx+di+1]
    mov [bx+di],dh
    mov [bx+di+1],dl
    
    ret
    
 swap endp
  
 main proc
   
   mov ax,@data
   mov ds,ax
   
   lea bx,Arr 
   mov ax,0
   mov dx,0
   mov cx,0
   mov di,0
   mov si,1
   
   label1:
    
     label2:
       mov al,[bx+di]
       cmp al,[bx+di+1]
       jg bubble
       add di,1
       cmp di,4
       jl label2
       jmp end
       
       bubble:
       call swap
       add di,1
       cmp di,5
       jl label2
       jmp end
        
    end:     
    mov di,0
    add si,1
    cmp si,6
    jl label1
    
    mov di,0
    mov ax,0 
    lab:
    mov ax,0
    mov al,[bx+di]
    push ax
    add di,1
    cmp di,6
    jne lab 
    
    theend:
     
main endp
end main
   