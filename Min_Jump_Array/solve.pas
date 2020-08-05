var NrOfElements, i, CurrentMax, Current, Jumps: Word;
    InputArray: array [0..50000] of Word;
    cond: boolean;
begin
    write ('How many items on the array? '); readln (NrOfElements);
    for i := 0 to NrOfElements - 1 do
        read (InputArray[i]);
    writeln;
    Current := 0;
    Jumps := 0;
    cond := false;
    while (Current < NrOfElements - 1) and (cond = false) do
    begin
    if (InputArray[Current] = 0) then cond := true;
        CurrentMax := Current + 1; 
        for i:= Current + 1 to Current + InputArray[Current] do
            if InputArray[CurrentMax] <= InputArray[i] then CurrentMax := i;
        Current := CurrentMax;
        inc (Jumps)
    end;
    if cond = true then writeln (-1)
    else writeln (Jumps);
    readln
end.