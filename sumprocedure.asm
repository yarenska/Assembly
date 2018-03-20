



.code 

sum proc
 mov ax,8 
 mov bx,5
 mov cx,7
 add ax,bx
 add ax,cx
 ret   
sum endp



main proc  
    

call sum

    
    
    
main endp
end main