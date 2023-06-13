program linked_list;

{Create a linked list of integers.}
type
    list = ^node;
    node = record
        data: integer;
        next: list;
    end;

procedure addForward(var head: list; data: integer);
    var 
        new_node: list;
    begin
        new(new_node);
        new_node^.data := data;
        new_node^.next := head;
        head := new_node;
    end;

procedure addBack(var head, tail: list; data: integer);
    var
        new_node: list;
    begin
        new(new_node);
        new_node^.data := data;
        new_node^.next := nil;
        if head = nil then
            head := new_node
        else
            tail^.next := new_node;
        tail := new_node;
    end;
procedure insertOrder(var head: list; data: integer);
    var
        new_node, current, previous: list;
    begin
        new(new_node);
        new_node^.data := data;
        new_node^.next := nil;
        if head = nil then
            head := new_node
        else begin
            current := head;
            previous := nil;
            while (current <> nil) and (current^.data < new_node^.data) do begin
                previous := current;
                current := current^.next;
            end;
            if current = previous then begin
                new_node^.next := head;
                head := new_node;
            end
            else begin
                previous^.next := new_node;
                new_node^.next := current;
            end;
        end;
    end;

procedure deleteElement(var head: list; data: integer);
    var
        current, previous: list;
        delete:boolean;
    begin
        current := head;
        previous := current;
        delete := false;
        while (current <> nil) and (not delete) do begin
            if current^.data = data then
                delete := true
            else begin
                previous := current;
                current := current^.next;
            end;
        end;
        if delete then begin
            if current = head then
                head := head^.next
            else
                previous^.next := current^.next;
            dispose(current);
        end;
    end;


begin
    
end;

var
    head, tail: list;
    i: integer;
begin
end.