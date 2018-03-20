.code
main proc
  
  mov ax,1001
  mov dx,ax
  mov bx,0   
  mov cl,10
  
  label1:        
  div cl
  mov bl,ah
  push bx
  mov ah,0
  cmp al,0
  jne label1  
   
  mov ax,dx
  mov cx,0
  mov dx,0
  mov dl,10
  
  label2:
  div dl
  mov cl,ah
  pop bx
  mov ah,0
  cmp al,0
  je ending2
  cmp cx,bx
  je label2
  
  ending1:
  mov dx,2 
  jmp end
  
  ending2:
  mov dx,1
  
  end:
    
main endp
end main
