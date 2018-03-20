.code
main proc
    
        
mov ax,0
mov bx,1
mov cx,10
push ax
push bx

label:

pop bx
mov dx,bx

pop ax
add dx,ax
mov ax,bx
mov bx,dx

push ax
push bx

loop label

        
main endp
end main



