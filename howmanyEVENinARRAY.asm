.data 
 Arr dw 1,3,2,6,9,7,4
 
.code 
  main proc
 
  mov ax,@data
  mov ds,ax         
  
  mov bx,0  
  lea bx,Arr
  mov di,0
  mov cx,7
  mov dx,0
  mov dl,2
  
  loopy: 
  mov ah,0
  mov ax,[bx+di]
  div dl
  cmp ah,0 
  je eq 
  inc di  
  inc di
  loop loopy
  
  eq:   
  inc di
  inc di
  inc dh
  loop loopy
  
  
  mov ax,0 
  mov al,'0'
  add al,dh
  mov ah,0eh
  int 10h

main endp
end main

