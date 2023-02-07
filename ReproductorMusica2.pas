program ReproductorMusica;

uses
  MMSystem;

var
  archivo: string;
  estado: Boolean;
  opcion: Char;

begin
  write('Ingrese el nombre del archivo de audio: ');
  readln(archivo);
  
  if FileExists(archivo) then
  begin
    estado := True;
    sndPlaySound(PChar(archivo), SND_ASYNC or SND_NODEFAULT);
    writeln('Reproduciendo...');
    repeat
      if KeyPressed then
      begin
        opcion := ReadKey;
        if opcion = 'p' then
        begin
          if estado then
          begin
            sndPlaySound(nil, SND_ASYNC or SND_NODEFAULT);
            writeln('Pausado...');
            estado := False;
          end
          else
          begin
            sndPlaySound(PChar(archivo), SND_ASYNC or SND_NODEFAULT);
            writeln('Reanudando...');
            estado := True;
          end;
        end;
      end;
    until not estado;
    writeln('Reproducción terminada');
  end
  else
    writeln('No se pudo encontrar el archivo');
end.