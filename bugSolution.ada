procedure Example is
   My_Array : array (1..10) of Integer := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
   Temp_Array : array (1..10) of Integer;
begin
   for I in My_Array'Range loop
      if I = 5 then
         Temp_Array(I) := My_Array(I) * 2; 
      else
         Temp_Array(I) := My_Array(I);
      end if;
   end loop;
   My_Array := Temp_Array;   --Update the original array
exception
   when others =>
      Put_Line("An unexpected error occurred");
end Example;