.data
Arr1 dw ?
temp dw 0

.code

calculate proc
   
   mov temp,ax
   mov di,0
   label1:
     mov ax,temp
     div cx
     cmp dx,0
     je load
     mov dx,0
     inc cx
     cmp cx,temp
     jl label1
     ret
     
     load:
     mov [bx+di],cx
     mov dx,0
     inc di 
     inc di
     inc cx
     cmp cx,temp
     jl label1
     ret

calculate endp

main proc
    
    mov ax,@data
    mov ds,ax
       
    lea bx,Arr1   
    mov ax,220
    mov si,284
    mov di,0
    mov cx,1 

    mov temp,ax
    call calculate
    mov ax,0
    
    calc:
    add ax,[bx+di]  
    dec di
    cmp di,0
    jge calc
    
    cmp ax,si
    je cont
    jmp end1
    cont:
    mov ax,si
    mov si,temp
    mov di,0
    mov cx,1  
    
    mov temp,ax
    call calculate
    
    calc2:
    add ax,[bx+di]  
    dec di
    cmp di,0
    jge calc2
            
    cmp ax,si
    je end2 
    jmp end3
    
    end2:
    mov si,1
    jmp ending 
    
    end1:
    mov si,0
    jmp ending
    
    end3:
    mov si,0
    
    ending:

main endp
 end main