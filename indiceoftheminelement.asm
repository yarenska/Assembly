.data
Arr db 43,32,4,6,97,44,67,1,13,5,0
max db 0
min db 0   
temp dw 0

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
     cmp al,dl
     jle load1
     cmp al,dh
     jge load2
     inc di  
     inc cx
     cmp cx,11
     jl label
     jmp end
     
     load1:
       mov dl,al 
       mov temp,di
       inc di
       inc cx
       cmp cx,11
       jl label 
       jmp end   
   
     load2:
       mov dh,al
       inc di
       inc cx
       cmp cx,11
       jl label
       jmp end
       
         
      end: 
       mov dx,temp
       
main endp
end main



