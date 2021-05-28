import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class TerminosScreen extends StatefulWidget {
  TerminosScreen();
  @override
  createState() => _TerminosScreenState();
}

class _TerminosScreenState extends State<TerminosScreen> {
  _TerminosScreenState();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Terms of conditions'),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            HtmlWidget(
              // the first parameter (`html`) is required
              '''
<style>
		.centrado{text-align:center;border:1px dotted #000; padding:8px;}
		div{width:50%;border:1px dotted #f00;padding:8px;margin:auto;
    text-align:center;border:1px dotted #000; padding:8px;}
		center{margin:16px 0;}
	</style>
  
<div>
  <P STYLE="margin-bottom: 0.11in">1. Estos Términos y Condiciones de
Uso regulan las reglas a que se sujeta la utilización de la APP
Ivehicle (en adelante, la APP),</P><P STYLE="margin-bottom: 0.11in">  que puede descargarse desde el
dominio www.playstore.com La descarga o utilización de la APP
atribuye la condición de Usuario </P><P STYLE="margin-bottom: 0.11in"> a quien lo haga e implica la
aceptación de todas las condiciones incluidas en este documento y en
la Política de Privacidad y</P><P STYLE="margin-bottom: 0.11in">  el Aviso Legal de dicha página Web. 
 El
Usuario debería leer estas condiciones cada vez que utilice la APP,
ya que podrían ser </P><P STYLE="margin-bottom: 0.11in">  modificadas en lo sucesivo</P>
<P STYLE="margin-bottom: 0.11in"><BR><BR>
</P>
<P STYLE="margin-bottom: 0.11in">2. Únicamente los Usuarios
expresamente autorizados por Ivehicle podrán acceder a la</P>
<P STYLE="margin-bottom: 0.11in">descarga y uso de la APP. Los
Usuarios que no dispongan de autorización, no podrán acceder a
dicho</P>
<P STYLE="margin-bottom: 0.11in">contenido.</P>
<P STYLE="margin-bottom: 0.11in"><BR><BR>
</P>
<P STYLE="margin-bottom: 0.11in"><BR><BR>
</P>
<P STYLE="margin-bottom: 0.11in">3. Cargos: eres responsable del pago
de todos los costes o gastos en los que incurras como resultado de</P>
<P STYLE="margin-bottom: 0.11in">descargar y usar la Aplicación de
Ivehicle, incluido cualquier cargo de red de operador o</P>
<P STYLE="margin-bottom: 0.11in">itinerancia. Consulta con tu
proveedor de servicios los detalles al respecto.</P>
<P STYLE="margin-bottom: 0.11in"><BR><BR>
</P>
<P STYLE="margin-bottom: 0.11in">4. Estadísticas anónimas: Ivehicle
se reserva el derecho a realizar un seguimiento de tu</P>
<P STYLE="margin-bottom: 0.11in">actividad en la Aplicación de y a
informar de ello a nuestros proveedores de servicios estadísticos de</P>
<P STYLE="margin-bottom: 0.11in">terceros. Todo ello de forma
anónima.</P>
<P STYLE="margin-bottom: 0.11in"><BR><BR>
</P>
<P STYLE="margin-bottom: 0.11in">5. Protección de tu información
personal: queremos ayudarte a llevar a cabo todos los pasos
necesarios</P>
<P STYLE="margin-bottom: 0.11in">para proteger tu privacidad e
información. Consulta la Política de privacidad de Ivehicle y los</P>
<P STYLE="margin-bottom: 0.11in">avisos sobre privacidad de la
Aplicación para conocer qué tipo de información recopilamos y las</P>
<P STYLE="margin-bottom: 0.11in">medidas que tomamos para proteger tu
información personal.</P>
<P STYLE="margin-bottom: 0.11in"><BR><BR>
</P>
<P STYLE="margin-bottom: 0.11in">6. Queda prohibido alterar o
modificar ninguna parte de la APP a de los contenidas de la misma,
eludir,</P>
<P STYLE="margin-bottom: 0.11in">desactivar o manipular de cualquier
otra forma (o tratar de eludir, desactivar o manipular) las</P>
<P STYLE="margin-bottom: 0.11in">funciones de seguridad u otras
funciones del programa y utilizar la APP o sus contenidos para un fin</P>
<P STYLE="margin-bottom: 0.11in">comercial o publicitario. Queda
prohibido el uso de la APP con la finalidad de lesionar bienes,</P>
<P STYLE="margin-bottom: 0.11in">derechos o intereses de Ivehicle o
de terceros. Queda igualmente prohibido realizar</P>
<P STYLE="margin-bottom: 0.11in">cualquier otro uso que altere, dañe
o inutilice las redes, servidores, equipos, productos y programas</P>
<P STYLE="margin-bottom: 0.11in">informáticos de Ivehicle o de
terceros.</P>
<P STYLE="margin-bottom: 0.11in"><BR><BR>
</P>
<P STYLE="margin-bottom: 0.11in">7. La APP y sus contenidos (textos,
fotografías, gráficos, imágenes, tecnología, software, links,</P>
<P STYLE="margin-bottom: 0.11in">contenidos, diseño gráfico, código
fuente, etc.), así como las marcas y demás signos distintivos son</P>
<P STYLE="margin-bottom: 0.11in">propiedad de Ivehicle o de terceros,
no adquiriendo el Usuario ningún derecho sobre ellos</P>
<P STYLE="margin-bottom: 0.11in">por el mero uso de la APP. El
Usuario, deberá abstenerse de:</P>
<P STYLE="margin-bottom: 0.11in">a) Reproducir, copiar, distribuir,
poner a disposición de terceros, comunicar públicamente,</P>
<P STYLE="margin-bottom: 0.11in">transformar o modificar la APP o sus
contenidos, salvo en los casos contemplados en la ley o</P>
<P STYLE="margin-bottom: 0.11in">expresamente autorizados por
Ivehicle o por el titular de dichos derechos.</P>
<P STYLE="margin-bottom: 0.11in">b) Reproducir o copiar para uso
privado la APP o sus contenidos, así como comunicarlos</P>
<P STYLE="margin-bottom: 0.11in">públicamente o ponerlos a
disposición de terceros cuando ello conlleve su reproducción.</P>
<P STYLE="margin-bottom: 0.11in">c) Extraer o reutilizar todo o parte
sustancial de los contenidos integrantes de la APP.</P>
<P STYLE="margin-bottom: 0.11in"><BR><BR>
</P>
<P STYLE="margin-bottom: 0.11in">8. Con sujeción a las condiciones
establecidas en el apartado anterior, Ivehicle concede al</P>
<P STYLE="margin-bottom: 0.11in">Usuario una licencia de uso de la
APP, no exclusiva, gratuita, para uso personal, circunscrita al</P>
<P STYLE="margin-bottom: 0.11in">territorio nacional y con carácter
indefinido. Dicha licencia se concede también en los mismos</P>
<P STYLE="margin-bottom: 0.11in">términos con respecto a las
actualizaciones y mejoras que se realizasen en la aplicación. Dichas</P>
<P STYLE="margin-bottom: 0.11in">licencias de uso podrán ser
revocadas por Ivehicle unilateralmente en cualquier momento,</P>
<P STYLE="margin-bottom: 0.11in">mediante la mera notificación al
Usuario.</P>
<P STYLE="margin-bottom: 0.11in"><BR><BR>
</P>
<P STYLE="margin-bottom: 0.11in">9. Corresponde al Usuario, en todo
caso, disponer de herramientas adecuadas para la detección y</P>
<P STYLE="margin-bottom: 0.11in">desinfección de programas
maliciosos o cualquier otro elemento informático dañino.</P>
<P STYLE="margin-bottom: 0.11in">Ivehicle no se responsabiliza de los
daños producidos a equipos informáticos durante el uso</P>
<P STYLE="margin-bottom: 0.11in">de la APP. Igualmente, Ivehicle no
será responsable de los daños producidos a los Usuarios</P>
<P STYLE="margin-bottom: 0.11in">cuando dichos daños tengan su
origen en fallos o desconexiones en las redes de telecomunicaciones</P>
<P STYLE="margin-bottom: 0.11in">que interrumpan el servicio.</P>
<P STYLE="margin-bottom: 0.11in"><BR><BR>
</P>
<P STYLE="margin-bottom: 0.11in">10. IMPORTANTE: Podemos, sin que
esto suponga ninguna obligación contigo, modificar estas</P>
<P STYLE="margin-bottom: 0.11in">Condiciones de uso sin avisar en
cualquier momento. Si continúas utilizando la aplicación una vez</P>
<P STYLE="margin-bottom: 0.11in">realizada cualquier modificación en
estas Condiciones de uso, esa utilización continuada constituirá la</P>
<P STYLE="margin-bottom: 0.11in">aceptación por tu parte de tales
modificaciones. Si no aceptas estas condiciones de uso ni aceptas</P>
<P STYLE="margin-bottom: 0.11in">quedar sujeto a ellas, no debes
utilizar la aplicación ni descargar o utilizar cualquier software</P>
<P STYLE="margin-bottom: 0.11in">relacionado. El uso que hagas de la
aplicación queda bajo tu única responsabilidad. No tenemos</P>
<P STYLE="margin-bottom: 0.11in">responsabilidad alguna por la
eliminación o la incapacidad de almacenar o trasmitir cualquier</P>
<P STYLE="margin-bottom: 0.11in">contenido u otra información
mantenida o trasmitida por la aplicación. No somos responsables de
la</P>
<P STYLE="margin-bottom: 0.11in">precisión o la fiabilidad de
cualquier información o consejo trasmitidos a través de la
aplicación.</P>
<P STYLE="margin-bottom: 0.11in">Podemos, en cualquier momento,
limitar o interrumpir tu uso a nuestra única discreción. Hasta el</P>
<P STYLE="margin-bottom: 0.11in">máximo que permite la ley, en
ningún caso seremos responsables por cualquier pérdida o daño</P>
<P STYLE="margin-bottom: 0.11in">relacionados.</P>
<P STYLE="margin-bottom: 0.11in"><BR><BR>
</P>
<P STYLE="margin-bottom: 0.11in">11. El Usuario se compromete a hacer
un uso correcto de la APP, de conformidad con la Ley, con los</P>
<P STYLE="margin-bottom: 0.11in">presentes Términos y Condiciones de
Uso y con las demás reglamentos e instrucciones que, en su</P>
<P STYLE="margin-bottom: 0.11in">caso, pudieran ser de aplicación El
Usuario responderá frente a Ivehicle y frente a terceros</P>
<P STYLE="margin-bottom: 0.11in">de cualesquiera daños o perjuicios
que pudieran causarse por incumplimiento de estas obligaciones.</P>
<P STYLE="margin-bottom: 0.11in"><BR><BR>
</P>
<P STYLE="margin-bottom: 0.11in">12. Estos Términos y Condiciones de
Uso se rigen íntegramente por la legislación española. Para la</P>
<P STYLE="margin-bottom: 0.11in">resolución de cualquier conflicto
relativo a su interpretación o aplicación, el Usuario se somete</P>
<P STYLE="margin-bottom: 0.11in">expresamente a la jurisdicción de
los tribunales de Ajuntament de Catalunya (España).</P>
</div>
  ''',

              // all other parameters are optional, a few notable params:

              // specify custom styling for an element
              // see supported inline styling below
              customStylesBuilder: (element) {
                if (element.classes.contains('foo')) {
                  return {'color': 'red'};
                }

                return null;
              },

              // render a custom widget

              // set the default styling for text
              textStyle: TextStyle(fontSize: 14),

              // turn on `webView` if you need IFRAME support
              webView: true,
            ),
          ],
        ));
  }
}
