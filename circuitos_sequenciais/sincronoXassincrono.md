## Preset Síncrono:
```vhdl
process (clock, preset)
begin
   if (rising_edge(clock)) then
      if (preset = '1') then
         q <= '1';
      else
         q <= d;
      end if;
   end if;
end process;
```

## Preset Assíncrono:

```vhdl
process (preset, d)
begin
   if (preset = '1') then
      q <= '1';
   else
      q <= d;
   end if;
end process;
```
