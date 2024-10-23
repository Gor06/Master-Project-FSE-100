while 1
   prompt = 'letter';
  x = input(prompt, 's');
   if(strcmp(x, 'w'))
       brick.MoveMotor('AD',50);
       pause(1);
       brick.StopMotor('AD');
   end
   if(strcmp(x, 'a'))
       brick.MoveMotor('D',25);
       brick.MoveMotor('A',-25);
       pause(1);
       brick.StopMotor('AD');
   end
   if(strcmp(x, 's'))
       brick.MoveMotor('AD',-50);
       pause(1);
       brick.StopMotor('AD');
   end
   if(strcmp(x, 'd'))
       brick.MoveMotor('A',100);
       brick.MoveMotor('D',-100);
       pause(1);
       brick.StopMotor('AD');
   end
   if(strcmp(x, 'co'))
       brick.MoveMotor('C',50);
       pause(3.5);
       brick.StopMotor('C');
   end
   if(strcmp(x, 'cc'))
       brick.MoveMotor('C', -50);
       pause(3.5);
       brick.StopMotor('C');
   end
   if(strcmp(x, 'q'))
      break;
   end
 
end

