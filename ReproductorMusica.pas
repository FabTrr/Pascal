program ReproductorMusica;

uses
  MMSystem;

var
  archivo: string;

begin
  write('Ingrese el nombre del archivo de audio: ');
  readln(archivo);
  
  if FileExists(archivo) then
  begin
    sndPlaySound(PChar(archivo), SND_ASYNC or SND_NODEFAULT);
    writeln('Reproduciendo...');
    repeat until not sndPlaySound(nil, 0);
    writeln('Reproducción terminada');
  end
  else
    writeln('No se pudo encontrar el archivo');
end.