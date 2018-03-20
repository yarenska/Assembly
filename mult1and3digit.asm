.code
  main proc
         
    mov cx,0     
    mov ax,0
    mov bx,0
    mov ax,3254
    mov bl,100
    mov dx,0
    
    div bl
    mov dl,ah
    mov ah,0  
    mov bl,10
    div bl
    mov cl,al
    mov ax,0
    mov ax,dx
    div bl
    mul cl
    
    
    
    
main endp
end main



