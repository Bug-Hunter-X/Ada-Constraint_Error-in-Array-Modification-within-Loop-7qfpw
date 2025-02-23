procedure Example is
   My_Array : array (1..10) of Integer := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
begin
   for I in My_Array'Range loop
      if I = 5 then
         My_Array(I) := My_Array(I) * 2; --This will raise Constraint_Error
      end if;
   end loop;
exception
   when Constraint_Error =>
      Put_Line("Constraint Error Occurred");
end Example; 