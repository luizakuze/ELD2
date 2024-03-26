# Para Preset

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

---

# Para Contadores

## Contador Síncrono
- Utiliza reset síncrono
- Mudança imediata: ``9 > 0``

## Contador Assíncrono
- Ruim!
- Utiliza reset assíncrono
- Mudança não é imediata: ``9 > 10 > 0``. Tempo mínimo em '10'
