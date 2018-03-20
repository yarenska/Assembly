
.code
  main proc
    
    mov cx,0
    mov dx,0
    mov ax,1
    mov cl,2
    
    even:
       mov ah,0
       mov dh,al
       div cl
       cmp ah,0
       jne other
       
       add dl,dh
       
    other:
       inc dh
       mov al,dh
       cmp al,7
       jle even
       
main endp
end main




