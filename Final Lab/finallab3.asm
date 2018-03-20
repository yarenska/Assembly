;; output is in ax register

.data
 Arr dw 6,7,5,10,3,4
 
 
.code
 main proc
    
    mov ax,@data
    mov ds,ax
    
    lea bx,Arr
    mov cx,0
    mov di,0
    mov si,0
    
    label1:
    mov ax,[bx+di]
    add di,2
    mov dx,[bx+di]   
    cmp ax,dx
    jl let
    
    add cx,ax
    push cx 
    add si,1
    mov cx,0
    cmp di,12
    jle label1
   
    jmp cont
    let:
    add cx,ax
    cmp di,12
    jl label1
    
    cont:
    pop ax
    stack:
    pop bx
    cmp ax,bx
    jl change 
    dec si
    cmp si,0
    jg stack
    jmp end
   
    change: 
    mov ax,bx
    dec si 
    cmp si,0
    jg stack
               
    end:
    
main endp
end main