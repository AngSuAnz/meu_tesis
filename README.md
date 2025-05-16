
# 📚 README - Proyecto Distill Site con `renv`

## 🎯 Descripción
Este proyecto utiliza **`distill`** para generar un sitio web de informes en R, y gestiona su entorno de paquetes utilizando **`renv`** para garantizar la **reproducibilidad**.

---

## ⚙️ Cómo configurar el entorno (primera vez)

1. **Cloná o descargá** este proyecto en tu computadora.

2. **Instalá `renv`** si todavía no lo tenés:

```r
install.packages("renv")
```

3. **Restaurá los paquetes necesarios** ejecutando en la consola R:

```r
renv::restore()
```

Este comando lee el archivo `renv.lock` y reinstala exactamente las versiones de los paquetes usadas en el proyecto.

✅ ¡Listo! Tu entorno ahora es idéntico al de desarrollo.

---

## 🛠 Si querés actualizar o agregar nuevos paquetes

1. Instalá paquetes nuevos normalmente con:

```r
install.packages("nombre_paquete")
```

2. Después, actualizá el lockfile de `renv` para registrar el cambio:

```r
renv::snapshot()
```

Esto guarda las versiones actualizadas en `renv.lock`.

---

## 🧹 ¿Problemas comunes?

- **¿Paquetes no encontrados?**  
  ➔ Corré `renv::restore()` de nuevo.
  
- **¿Error raro con `sf` o `lwgeom`?**  
  ➔ Asegurate que tu sistema tiene instaladas las librerías de sistema necesarias (GDAL, GEOS, PROJ). En Windows, R las maneja automáticamente; en Linux/Mac puede necesitar instalación manual.

---

## 🧠 Estructura típica del proyecto

```
/_site/               # Output generado del sitio Distill (no editar a mano)
/renv/                # Librerías del entorno aislado
renv.lock             # Archivo de control de versiones de paquetes
r_env_setup.R         # Script para instalar el entorno inicial (opcional)
index.Rmd             # Documento principal del sitio
articulos/            # Subcarpeta con Rmd de artículos individuales
README.md             # Este archivo
```

---

## 🚀 Build del sitio

Después de trabajar en tus `.Rmd`, podés regenerar el sitio completo con:

```r
rmarkdown::render_site()
```

o directamente presionando **"Build Website"** en RStudio.

---

## 📦 Recomendaciones adicionales

- **No borrar `renv.lock`**, salvo que quieras resetear todo el entorno.
- **No versionar la carpeta `/renv/library/`** en Git (está pensado así).
- **Sí versionar `renv.lock`** en Git para reproducibilidad total.

---

# 🎉 ¡Listo!

Ahora tenés un proyecto 100% reproducible y profesional usando `renv` + `distill` en R 🚀
