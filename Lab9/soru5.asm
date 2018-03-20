;second maximum element is placed
;in the register dl

.data
Arr db 43,32,4,6,97,44,67,1,79,5
secmax db 0

.code
main proc
   
   mov ax,@data
   mov ds,ax
   
   mov ax,0            
   mov dx,0            
   lea bx,Arr  
   
   mov dh,[bx]
   mov dl,[bx]  
   
   mov di,1
   mov cx,1
   
   label:
     mov al,[bx+di]
     cmp al,dh
     jle land1 
     jge land3
     inc di
     inc cx
     cmp cx,9
     jl label
     jmp end
     
     land1:
       cmp al,dl
       jge land2
       inc di
       inc cx
       cmp cx,9
       jl label
       jmp end
     
     land2:
       mov dl,al
       inc di
       inc cx
       cmp cx,9
       jl label
       jmp end 
        
     land3:
       mov dh,al
       inc di
       inc cx
       cmp cx,9
       jl label
       jmp end
         
     
     
      end: 
        mov secmax,dl
   
main endp
end main



