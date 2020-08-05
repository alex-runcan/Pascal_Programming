var k, i, j: Word;
    Kfact, Ifact : LongWord;
begin
    readln (k);
    if k = 0 then writeln('1')
    else
    begin
        for i := 0 to k do
        begin
            if (i = 0) or (i = k) then write('1 ')
            else
            begin
                Kfact := 1; Ifact := 1;
                for j:= 1 to k do
                begin
                    if j <= i then Ifact := Ifact * j ;
                    if j > (k - i) then Kfact := Kfact * j
                end;
                write (Kfact div Ifact,' ')
            end
        end
    end
end.