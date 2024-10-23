while 1
   prompt = 'letter';
  x = input(prompt, 's');
   if(strcmp(x, 'w'))
       brick.MoveMotor('AD',50);
       pause(1);
       brick.StopMotor('AD');
   end
   if(strcmp(x, 'a'))
       brick.MoveMotor('D',50);
       brick.MoveMotor('A',-50);
       pause(1);
       brick.StopMotor('AD');
   end
   if(strcmp(x, 's'))
       brick.MoveMotor('AD',-50);
       pause(1);
       brick.StopMotor('AD');
   end
   if(strcmp(x, 'd'))
       brick.MoveMotor('A',50);
       brick.MoveMotor('D',-50);d
       pause(1);
       brick.StopMotor('AD');
   end
   if(strcmp(x, 'q'))
      break;
   end
 
end
