.code
  main proc
      
   mov ax,1
   mov cx,0
   mov cl,2
   mov dx,0
   
   
   test:
   mov ah,0
   mov dl,al
   div cl
   cmp ah,0
   je other
   
   add dh,dl 
   
   other:   
   inc dl
   mov al,dl 
   cmp al,7
   jle test   

main endp
end main


