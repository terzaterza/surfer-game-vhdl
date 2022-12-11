package tern_pkg is
    function tern(b: boolean; x, y: integer) return integer;    
end package tern_pkg;

package body tern_pkg is
    function tern(b: boolean; x, y: integer) return integer is begin
        if (b) then
            return x;
        else
            return y;
        end if;
    end function tern;
end package body;