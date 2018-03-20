.code
  main proc
    
     mov ch,0
     mov cl,0
     mov ax,835
     mov bl,10
     
     div bl
     add cl,ah
     mov ah,0
     div bl
     add cl,al
     add cl,ah



 main endp
end main