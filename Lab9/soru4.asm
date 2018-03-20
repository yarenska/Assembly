.data
 Arr db 6,54,3,21,5,7
 tmp dw 0
 tmp2 dw 0
 tmp3 dw 0
 
 .code    
 swap proc 
   mov di,tmp2
   mov al,[bx+si]
   mov ah,[bx+di]
   mov [bx+di],al
   mov [bx+si],ah    
   
   ret
    
    
 swap endp
 
 main proc
  
  mov ax,@data
  mov ds,ax
  
  lea bx,Arr
  mov ax,0  
  mov cx,0
  mov dx,0 
  
  label1:     
    mov dx,tmp
    mov di,dx
    mov si,di
    add si,1 
    mov tmp2,dx  
    
    label2:
    mov ch,[bx+si]  
    mov cl,[bx+di]
    cmp ch,cl
    jl sort
    inc si
    cmp si,6
    jl label2
    jmp end
    
    sort:
     mov tmp2,si
     mov di,si
     inc si
     cmp si,6
     jl label2
      
    end:
    mov tmp3,si
    mov si,dx
    call swap 
    mov si,tmp3               
    add tmp,1
    cmp tmp,5
    jl label1
    
    mov ax,0
    mov di,0
    ending:
    mov al,[bx+di]
    push ax
    add di,1
    cmp di,6
    jl ending
    
    endend:
                  
  
 main endp
 end main