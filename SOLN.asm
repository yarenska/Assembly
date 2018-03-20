.data
  Arr db ?

.code
  main proc
  
  mov ax,@data
  mov ds,ax 
  mov di,0 
  
  mov ax,4356 
  mov cx,10
  mov bx,ax
  
  loopy: 
  mov cx,10
  mov ax,bx
  div cx
  mov cx,ax
  mov ax,0  
  
  lea bx,Arr
  mov [bx+di],dl
  inc di
  
  mov dx,0
  mov bx,cx
  cmp bx,0
  jne loopy
     
  mov cx,di
  dec di
  
  Label1:
  mov dl,Arr[di]
  mov al,'0'
  add al,dl
  mov ah,0eh
  int 10h
  dec di 
  loop Label1

main endp
end main


