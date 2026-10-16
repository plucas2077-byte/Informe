# The Brain 🏐

**Tu archivo de partidos de voleibol, ordenado por club, temporada y jugador.**
Sube los `.dvw` de DataVolley (o sus informes en PDF) y The Brain los convierte en fichas de club,
de equipo y de jugador, con la evolución de cada jugador temporada a temporada.

Funciona **100 % en tu ordenador y sin internet**: los datos nunca salen de tu equipo, no hay cuenta, ni servidor, ni nube.

![Inicio](capturas/inicio.png)

## Qué hace

- **Inicio**: un club, un equipo y una temporada de un vistazo, con victorias, sets, puntos, eficiencias, rendimiento partido a partido y máximos anotadores.
- **Equipos**: todos los clubes y equipos de la base de datos, con filtros por temporada y categoría.
- **Fichas** de club, equipo, jugador y partido, generadas automáticamente a partir de los archivos.
- **Curvas de desarrollo**: la evolución de las estadísticas de cada jugador por temporada y edad, y comparación entre jugadores.
- **Solo estadísticas**: la app no puntúa ni clasifica a los jugadores; enseña sus datos (eficiencia, eficacia, volumen) para que el entrenador saque sus conclusiones.
- **Importa PDF** del informe de DataVolley además de los `.dvw`.
- **Copias de seguridad** automáticas, exportar e importar todo en un único archivo y, si quieres, una carpeta «biblioteca» con tus partidos como archivos normales.
- **Modo avanzado** (opcional): red de rivales, árbol del club, buscador de acciones con exportación a CSV, detección de duplicados, comparador y notas estilo Obsidian.

| Equipos | Curvas | Jugador |
|---|---|---|
| ![Equipos](capturas/equipos.png) | ![Curvas](capturas/curvas.png) | ![Jugador](capturas/jugador.png) |

## Cómo usarlo

**Opción 1 — Abrir y listo**
1. Descarga el repositorio (botón verde **Code → Download ZIP**) y descomprímelo.
2. Abre `index.html` con **Google Chrome** o **Microsoft Edge**.
3. Pulsa **Subir .dvw o PDF**, o arrastra los archivos a la ventana. Si solo quieres probarla, pulsa **Ver con datos de ejemplo**.

**Opción 2 — Como aplicación de escritorio (Windows)**
Ejecuta `Instalar The Brain.bat`: crea un acceso directo «The Brain» en el escritorio y en el menú Inicio que abre la app en su propia ventana, con un perfil propio y los datos guardados en la carpeta `datos/`.

**Opción 3 — GitHub Pages**
En el repositorio: *Settings → Pages → Deploy from a branch → main / root*. La app quedará en `https://TU-USUARIO.github.io/the-brain/`.
Aunque se abra desde internet, los partidos se siguen guardando solo en el navegador de cada persona: nada se sube a GitHub.

## Privacidad

- Todo se procesa en el navegador. No hay peticiones a internet ni librerías externas: todo el código va dentro de `index.html`.
- Los datos se guardan en el almacenamiento del navegador (IndexedDB) y, si eliges una carpeta biblioteca, también como archivos en tu disco.
- La app **nunca** fusiona ni borra datos por su cuenta: solo sugiere y tú decides.

## Detalles

- Las temporadas acaban el **30 de julio**; desde el 31 de julio cuenta la siguiente.
- Navegadores recomendados: Chrome o Edge (la carpeta biblioteca usa la *File System Access API*).
- Un único archivo HTML, sin instalación ni dependencias.

## Licencia

Código bajo licencia [MIT](LICENSE). Incluye [pdf.js](https://github.com/mozilla/pdf.js) de Mozilla (Apache 2.0); ver [TERCEROS.md](TERCEROS.md).

DataVolley es una marca de Data Project. The Brain es un proyecto independiente que no está relacionado con Data Project.
