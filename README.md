# Repaso 2º ESO

Web para que Daniela y Alba repasen, cada una con su perfil, y para que Papá vea cómo van.

## Archivos

| Archivo | Qué es |
|---|---|
| `index.html` | La web |
| `contenido.json` | Asignaturas, temas, ejercicios, tarjetas y texto para escuchar |
| `config.js` | Sincronización (opcional, pero necesaria para ver el progreso desde el móvil de Papá) |
| `supabase.sql` | Crea la tabla del progreso en Supabase |

## 1. Publicarla en GitHub Pages (gratis)

1. En https://github.com pulsa **+** y luego **New repository**. Nombre: `repaso-eso`, marca **Public** y pulsa **Create repository**.
2. Pulsa **uploading an existing file**, arrastra los cuatro archivos (y este README) y pulsa **Commit changes**.
3. Ve a **Settings** y luego a **Pages**. En *Source* elige **Deploy from a branch**, rama **main**, carpeta **/ (root)**, y pulsa **Save**.
4. En un par de minutos la web estará en `https://edealbert.github.io/repaso-eso/`.

En el móvil de cada una: abrid la dirección y usad **Añadir a pantalla de inicio**.

## 2. Activar la sincronización (para que Papá vea el progreso desde su móvil)

Sin esto, cada dispositivo guarda solo lo suyo y el panel de Papá solo ve lo que se ha hecho en ese mismo dispositivo.

Puedes usar el **mismo proyecto de Supabase** que la web de la oposición: esta web usa su propia tabla.

1. En Supabase abre **SQL Editor**, luego **New query**, pega el contenido de `supabase.sql` y pulsa **Run**.
2. En **Project Settings** y luego **API**, copia la **Project URL** y la clave **anon public** (o *publishable*).
3. En GitHub abre `config.js`, pulsa el lápiz, pega los dos valores entre las comillas y pulsa **Commit changes**.

## Cómo funciona el acceso

- Al entrar se elige el perfil: **Daniela**, **Alba** o **Papá**.
- La primera vez, cada una crea su **PIN de 4 cifras**. Después se pide siempre al entrar.
- Si alguna olvida su PIN, Papá puede borrarlo desde su panel y la próxima vez creará uno nuevo. El progreso no se pierde.
- Es un acceso sencillo para que cada una use su perfil, no una seguridad fuerte.

## Qué tiene

- **Practicar**: tests, verdadero o falso, completar y problemas, corregidos al momento con la explicación. Primero salen los fallados y los no hechos.
- **Repasar fallos**: todas las preguntas falladas; desaparecen al acertarlas.
- **Tarjetas**: pregunta y respuesta para memorizar; las que se saben salen menos.
- **Escuchar**: lee el tema en voz alta (en valenciano si el móvil tiene esa voz).
- **Panel de Papá**: última vez que entró, días seguidos, días activos de la semana, preguntas hechas, % de aciertos, tiempo, actividad de los últimos 7 días, temas flojos, preguntas falladas y últimas sesiones.

## Añadir asignaturas o temas

Se cambia `contenido.json`: Claude lo genera a partir del material y tú lo subes a GitHub (**Add file**, **Upload files**, **Commit changes**). El progreso no se pierde, porque cada ejercicio tiene un identificador fijo.
