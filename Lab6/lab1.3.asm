.data 
msg db "AB",0dh,0ah,'$'


.code
main proc
    
 mov ax,@data
 mov ds,ax     
 
 lea bx,msg
 mov dh,[bx] 
 mov dl,[bx+1]
 mov [bx+1],dh
 mov [bx],dl
    
 mov ah,9
 mov dx,bx
 int 21h
 
 mov ax,4c00h
 int 21h
 
main endp
end main
    




