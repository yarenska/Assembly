
.code    


sum proc
cmp ax,1
je other 
dec ax
add dx,ax
call sum 

other:
ret 

sum endp    


main proc

mov ax,6
mov dx,ax
call sum

main endp
end main