import 'package:flutter/material.dart';

import 'af4_widgets.dart';

/// Subtema AF4: Intrusos, ataques y autenticación.
/// Contenido: documento "Intrusos, ataques y autenticación" (Persona 5).
class IntrusosAutenticacionScreen extends StatelessWidget {
  const IntrusosAutenticacionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Intrusos, ataques y autenticación'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Intrusos, ataques y autenticación',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            const Text(
              'Cuando una persona usa un Chromebook o una aplicación en Chrome OS, la información que guarda en el equipo y en su cuenta (archivos, correos, fotos y contraseñas) tiene valor para otras personas. Por eso es importante conocer quiénes pueden intentar entrar sin permiso, qué métodos utilizan y de qué forma el sistema comprueba que quien inicia sesión realmente es el dueño de la cuenta. Esta sección explica estos conceptos de manera sencilla y los relaciona con las herramientas que Chrome OS ofrece al usuario.',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
            const SizedBox(height: 20),
            const SeccionAF4(
              titulo: 'Tipos de intrusos',
              texto:
                  'Un intruso es una persona o programa que intenta acceder a un sistema, a una cuenta o a información sin tener autorización para hacerlo. No todos los intrusos buscan lo mismo ni tienen el mismo nivel de conocimiento, por lo que es útil distinguirlos:\n\n'
                  '• Hacker: persona con conocimientos avanzados en sistemas y redes. Cuando actúa con permiso para encontrar fallas y corregirlas se le llama hacker ético; cuando lo hace para obtener un beneficio indebido, se le considera un atacante.\n\n'
                  '• Cracker: persona que rompe las protecciones de un programa, una contraseña o un sistema con fines ilegales o de sabotaje.\n\n'
                  '• Aficionado o principiante: usuario con pocos conocimientos que utiliza herramientas ya creadas por otros, muchas veces por curiosidad o por presumir.\n\n'
                  '• Persona interna: alguien que ya tiene algún acceso legítimo (un compañero, un empleado o un familiar) y abusa de él o lo usa de forma indebida.\n\n'
                  '• Delincuente informático: persona u organización que busca un beneficio económico, como robar datos bancarios, cuentas o dinero.',
            ),
            const SeccionAF4(
              titulo: 'Tipos de ataques informáticos',
              texto:
                  'Para lograr su objetivo, los intrusos emplean distintos tipos de ataques. Los más comunes son los siguientes:\n\n'
                  '• Phishing: mensajes, correos o páginas falsas que imitan a una empresa o servicio conocido para que la persona escriba su usuario y contraseña.\n\n'
                  '• Ingeniería social: engaño que aprovecha la confianza o el descuido de las personas, por ejemplo, alguien que se hace pasar por soporte técnico para pedir una clave.\n\n'
                  '• Ataque de fuerza bruta o de diccionario: el atacante prueba muchas contraseñas, ya sea todas las combinaciones posibles o las más usadas, hasta encontrar la correcta.\n\n'
                  '• Robo de credenciales: obtención de usuarios y contraseñas mediante programas espía, sitios falsos o filtraciones de datos de otros servicios.\n\n'
                  '• Suplantación de identidad: el atacante se hace pasar por otra persona o por un sitio legítimo para ganar acceso o confianza.\n\n'
                  '• Ataque de intermediario: el atacante se coloca entre el usuario y el sitio al que se conecta, normalmente en redes Wi-Fi públicas inseguras, para observar o alterar la información que viaja.\n\n'
                  '• Denegación de servicio: saturación de un servicio o de una red con solicitudes para que deje de funcionar para los usuarios legítimos.',
            ),
            const SeccionAF4(
              titulo: 'Tipos de autenticación y control de acceso',
              texto:
                  'La autenticación es el proceso mediante el cual un sistema comprueba la identidad de una persona antes de permitirle el acceso. Existen tres tipos de factores que se pueden utilizar, y mientras más se combinen, más difícil resulta para un intruso pasar este control:\n\n'
                  '• Algo que el usuario sabe: contraseña, PIN o patrón.\n'
                  '• Algo que el usuario tiene: un teléfono que recibe un código o una notificación, o una llave de seguridad física.\n'
                  '• Algo que el usuario es: una característica propia, como la huella digital o el reconocimiento facial.\n\n'
                  'Una vez que la identidad fue comprobada, entra en funcionamiento el control de acceso, que consiste en definir qué recursos puede usar cada persona y qué puede hacer con ellos (por ejemplo, solo leer un archivo, modificarlo o administrarlo). Este control se apoya en cuentas de usuario, permisos y, en algunos sistemas, en roles que agrupan los permisos según la función de cada persona.',
            ),
            ExpansionTile(
              title: const Text('Autenticación y autorización', style: TextStyle(fontWeight: FontWeight.w600)),
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Es común confundir estos dos conceptos, pero cumplen funciones distintas. La autenticación comprueba la identidad, es decir, responde a la pregunta de quién es la persona. La autorización determina a qué recursos puede acceder y qué acciones puede realizar esa persona ya identificada. Un usuario puede estar correctamente autenticado y aun así no estar autorizado para realizar cierta acción.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 16, height: 1.5),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Table(
                    border: TableBorder.all(color: Colors.black54),
                    columnWidths: const {
                      0: FlexColumnWidth(1),
                      1: FlexColumnWidth(1.4),
                      2: FlexColumnWidth(1.4),
                    },
                    children: [
                      _filaTabla(['Aspecto', 'Autenticación', 'Autorización'], encabezado: true),
                      _filaTabla(['Pregunta que responde', '¿Quién eres?', '¿Qué puedes hacer?']),
                      _filaTabla(['Qué comprueba', 'La identidad de la persona que intenta entrar.', 'Los recursos y acciones permitidos a esa identidad.']),
                      _filaTabla(['Momento', 'Ocurre primero, al iniciar sesión.', 'Ocurre después de haber comprobado la identidad.']),
                      _filaTabla([
                        'Ejemplo en Chrome OS',
                        'Iniciar sesión con la cuenta de Google y su contraseña.',
                        'Que solo el dueño del dispositivo pueda cambiar ciertos ajustes o que una aplicación necesite permiso para usar la cámara.',
                      ]),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Tabla 1. Diferencias entre autenticación y autorización',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 13, fontStyle: FontStyle.italic),
                  ),
                ),
              ],
            ),
            const SeccionAF4(
              titulo: 'Seguridad a nivel de usuario',
              texto:
                  'La seguridad a nivel de usuario se refiere a las acciones y hábitos que cada persona puede aplicar para proteger su cuenta y su equipo. Aunque el sistema operativo cuenta con protecciones propias, una cuenta puede quedar expuesta si el usuario comparte su contraseña, abre enlaces sospechosos o deja el equipo desbloqueado. Por ello, la seguridad depende tanto de las funciones del sistema como del cuidado del usuario.',
            ),
            const SeccionAF4(
              titulo: 'Contraseñas, verificación en dos pasos y protección de cuentas',
              texto:
                  'Contraseñas. Una contraseña segura es larga, difícil de adivinar y diferente para cada servicio. Resulta más seguro usar una frase de varias palabras que una sola palabra con un número al final. Se debe evitar el uso de fechas de nacimiento, nombres propios o secuencias como “123456”, ya que son de las primeras que prueban los ataques de diccionario.\n\n'
                  'Verificación en dos pasos. Consiste en pedir un segundo factor además de la contraseña, por ejemplo, un código o una confirmación en el teléfono. De esta manera, aunque un intruso consiga la contraseña, no podrá entrar sin ese segundo elemento. En las cuentas de Google se puede activar desde los ajustes de seguridad de la cuenta.\n\n'
                  'Protección de la cuenta. Es recomendable revisar periódicamente los dispositivos que han iniciado sesión, el correo de recuperación y el número de teléfono asociados a la cuenta, así como cerrar sesión en equipos ajenos o compartidos.',
            ),
            const SeccionAF4(
              titulo: 'Chrome OS',
              texto:
                  'En Chrome OS la identidad del usuario está ligada a su cuenta de Google. Al iniciar sesión, el sistema autentica a la persona y carga su perfil, sus aplicaciones y sus archivos asociados. A continuación se describen los elementos de Chrome OS relacionados con este tema:\n\n'
                  '• Cuenta de Google: es el medio de autenticación principal. Si la cuenta tiene verificación en dos pasos, también se aplica al iniciar sesión en el Chromebook.\n\n'
                  '• Bloqueo de pantalla: permite pedir la contraseña, un PIN u otro método autorizado cuando el equipo se suspende o se deja sin atender. Se puede activar manualmente con el atajo de teclado Búsqueda (o Lanzador) + L.\n\n'
                  '• Sesiones de usuario: cada persona inicia su propia sesión con su cuenta, de modo que sus datos y configuraciones se mantienen separados de los de otros usuarios del mismo equipo. También existe el modo invitado, que no guarda información después de cerrar la sesión. Al terminar de usar el equipo se recomienda cerrar la sesión.\n\n'
                  '• Permisos: los sitios web y las aplicaciones deben solicitar autorización para usar funciones como la cámara, el micrófono, la ubicación o las notificaciones. El usuario puede revisarlos y modificarlos desde la configuración del sistema y del navegador.\n\n'
                  'Es importante aclarar que estas funciones reducen el riesgo de accesos no autorizados, pero no lo eliminan por completo. Si el propio usuario entrega su contraseña en una página falsa, ninguna protección del sistema podrá evitar que el atacante use esa información.',
            ),
            const SeccionAF4(
              titulo: 'Recomendaciones para proteger credenciales',
              texto:
                  '• Usar contraseñas largas y distintas para cada cuenta, y no compartirlas con nadie.\n'
                  '• Activar la verificación en dos pasos en la cuenta de Google y en los servicios importantes.\n'
                  '• Bloquear la pantalla siempre que se deje el Chromebook sin vigilancia.\n'
                  '• Desconfiar de correos, mensajes o ventanas que pidan datos de acceso, y escribir la dirección del sitio manualmente en lugar de abrir enlaces dudosos.\n'
                  '• Evitar iniciar sesión o capturar datos importantes en redes Wi-Fi públicas sin protección.\n'
                  '• Revisar los permisos que se otorgan a sitios, extensiones y aplicaciones, y retirar los que no sean necesarios.\n'
                  '• Cerrar la sesión en equipos compartidos o ajenos y revisar de vez en cuando los dispositivos con sesión abierta en la cuenta.\n'
                  '• Mantener actualizado el sistema y las aplicaciones.',
              justificar: false,
            ),
          ],
        ),
      ),
    );
  }

  static TableRow _filaTabla(List<String> celdas, {bool encabezado = false}) {
    return TableRow(
      decoration: encabezado ? const BoxDecoration(color: Color(0xFFE8F0FE)) : null,
      children: [
        for (final c in celdas)
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              c,
              style: TextStyle(
                fontSize: 14,
                fontWeight: encabezado ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ),
      ],
    );
  }
}
