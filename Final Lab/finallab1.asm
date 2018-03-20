.code
 main proc
         
         
   mov ax,28
   mov bx,1
   mov cx,ax
   mov di,0
   
   label1:   
     mov ax,cx
     div bx
     cmp dx,0
     je stack 
     mov dx,0
     inc bx
     cmp bx,cx
     jl label1 
     jmp cont
     
     stack:
     push bx 
     mov dx,0
     inc di
     inc bx
     cmp bx,cx
     jl label1
    
    cont: 
    mov dx,0 
    mov bx,0
    sum:
    pop ax
    add dx,ax
    dec di
    cmp di,0
    jg sum
    
    cmp dx,cx
    je end1
    jmp end2
    
    end1:
    mov bx,1
    jmp last
    
    end2:
    mov bx,0
    
    last:   
    
main endp
 end main