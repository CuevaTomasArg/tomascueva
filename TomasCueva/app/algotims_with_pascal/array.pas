program arrays_algorithms;
type
    arr = array[1..100] of integer;




procedure addElement(var vector:arr; var logical_dimension:integer; number,physical_dimension:integer);
    var
        added:boolean;
    begin
        if logical_dimension < physical_dimension then
        begin
            logical_dimension:=logical_dimension+1;
            vector[logical_dimension]:=number;
            writeln('Element added');
        end
        else
            writeln('No more space');
        end;
        
    end;

procedure insertInSpecificPosition(var vector:arr; var logical_dimension:integer; number,physical_dimension,position:integer);
    var
        i:integer;
        added:boolean;
    begin
        if (logical_dimension < physical_dimension) and (position <= logical_dimension) then
            begin
                logical_dimension:=logical_dimension+1;
                for i:=logical_dimension downto number+1 do
                    vector[i]:=vector[i-1];
                vector[number]:=number;
                writeln('Element added');
            end
        else
            writeln('No more space');
        
    end;

procedure deleteelement(var vector:arr; var logical_dimension:integer; number,physical_dimension:integer);
    var
        i:integer;
        found:boolean;
    begin
        found:=false;
        for i:=1 to logical_dimension do
            if vector[i]=number then
                begin
                    found:=true;
                    for i:=i to logical_dimension-1 do
                        vector[i]:=vector[i+1];
                    logical_dimension:=logical_dimension-1;
                    writeln('Element deleted');
                end;
        if not found then
            writeln('Element not found');
    end;

var
    logical_dimension,number,physical_dimension:integer;
    vector:arr;
begin
    writeln('the program dont work');	
end.