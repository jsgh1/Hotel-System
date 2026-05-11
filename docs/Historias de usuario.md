# Historias de usuario - Entrega de base de datos

Este backlog organiza la entrega tecnica de la base del sistema hotelero. La meta es dejar una base PostgreSQL ejecutable, documentada y trazable por Liquibase, con dominios separados y convenciones en ingles.

## Lectura del backlog

| Campo | Uso |
| --- | --- |
| ID | Consecutivo para seguimiento y tablero. |
| Necesidad | Lo que debe resolverse en la entrega. |
| Entregable | Archivo, carpeta o evidencia esperada. |
| Aceptacion | Condicion minima para cerrar la historia. |

## Gobierno del trabajo y decisiones

| ID | Necesidad | Entregable | Aceptacion |
| -- | --------- | ---------- | ---------- |
| HU-00 | Como equipo, necesitamos una estructura vacia y organizada antes de subir scripts y migraciones. | `.github/`, `docs/`, `infra/db/` y subcarpetas base con `.gitkeep`. | Todos los integrantes identifican donde subir sus archivos sin mezclar responsabilidades. |
| HU-01 | Como equipo, necesitamos acordar un flujo de ramas que evite mezclar cambios. | Reglas de `dev`, `qa` y `main`; convencion de ramas `feature/hu-XX`. | Cada cambio se sube por rama hija y con revision previa. |
| HU-02 | Como equipo, necesitamos una ruta de trabajo visible para saber que se hizo y que falta. | `docs/responsabilidades`, `Historias de usuario`, `Matriz_trazabilidad`, `que_subir_y_que_no_subir`. | El avance queda explicado, asignado y rastreable. |
| HU-03 | Como analistas, necesitamos cerrar los dominios funcionales antes de definir schemas y tablas. | `analisis_dominios.md`. | Quedan definidos 8 dominios oficiales, sin mezclar responsabilidades. |
| HU-04 | Como equipo tecnico, necesitamos justificar decisiones de arquitectura de datos. | Carpeta `ADR/` con 6 decisiones clave. | Cada ADR explica contexto, decision, consecuencias y criterio de uso. |
| HU-05 | Como equipo, necesitamos automatizar validaciones basicas para que cada subida revise estructura, migraciones y una prueba minima. | `.github/workflows/db-ci.yml`, `infra/db/checks/001_smoke_test.sql` y `infra/db/scripts/load-database.ps1`. | El workflow valida la estructura, ejecuta Liquibase, prueba rollback y corre el smoke test. |

## Ambiente ejecutable

| ID | Necesidad | Entregable | Aceptacion |
| -- | --------- | ---------- | ---------- |
| HU-06 | Como desarrolladores, necesitamos levantar PostgreSQL sin configuraciones manuales pesadas. | `infra/db/docker/docker-compose.yml`. | La base publica el puerto definido y puede arrancar en local. |
| HU-07 | Como equipo, necesitamos aplicar migraciones de forma ordenada y repetible. | `infra/db/liquibase.properties`, `infra/db/changelog/changelog-master.yaml` y `infra/db/changelog/changelog-master.sql`. | Liquibase ejecuta el flujo completo en el orden correcto. |
| HU-08 | Como equipo, necesitamos una base DDL inicial con extensiones, schemas, tipos y auditoria. | `infra/db/01_ddl/00_extensions`, `01_schemas`, `02_types`. | La base usa UUID, separa schemas y deja auditoria consistente. |

## Modelo fisico por dominios

| ID | Necesidad | Entregable | Aceptacion |
| -- | --------- | ---------- | ---------- |
| HU-09 | Como equipo operativo, necesitamos persistir configuration y security. | `infra/db/01_ddl/03_tables/configuration/` y `infra/db/01_ddl/03_tables/security/`. | Las tablas comparten convenciones, llaves y audit trail. |
| HU-10 | Como equipo de operaciones, necesitamos registrar distribution y service delivery. | `infra/db/01_ddl/03_tables/distribution/` y `infra/db/01_ddl/03_tables/service_delivery/`. | La estructura soporta disponibilidad, reservas, check in y check out. |
| HU-11 | Como administracion, necesitamos registrar inventory y billing. | `infra/db/01_ddl/03_tables/inventory/` y `infra/db/01_ddl/03_tables/billing/`. | El ciclo de productos, servicios, prefactura, factura y pagos queda cubierto. |
| HU-12 | Como operacion, necesitamos mantener notification y maintenance separados. | `infra/db/01_ddl/03_tables/notification/` y `infra/db/01_ddl/03_tables/maintenance/`. | Los dominios quedan aislados y listos para crecer sin mezclar reglas. |
| HU-13 | Como equipo de consulta, necesitamos objetos para lectura y analitica. | `infra/db/01_ddl/04_views/`, `05_materialized_views/` y `06_functions/`. | Los objetos avanzados viven en archivos propios y se cargan por changelog. |
| HU-14 | Como equipo tecnico, necesitamos automatizar reglas de negocio cercanas a la base. | `infra/db/01_ddl/07_procedures/`, `08_triggers/` y `09_indexes/`. | Las operaciones sensibles y los accesos frecuentes quedan optimizados. |

## Datos, seguridad y control transaccional

| ID | Necesidad | Entregable | Aceptacion |
| -- | --------- | ---------- | ---------- |
| HU-15 | Como QA, necesitamos datos base para configuration y security. | `infra/db/02_dml/00_inserts/001_configuration.sql` y `002_security.sql`. | Existen registros semilla suficientes para probar accesos y catalogos. |
| HU-16 | Como QA, necesitamos datos operativos de distribution y service delivery. | `infra/db/02_dml/00_inserts/003_distribution.sql` y `004_service_delivery.sql`. | Se puede validar disponibilidad, reserva y estadia. |
| HU-17 | Como QA, necesitamos datos de inventory y billing. | `infra/db/02_dml/00_inserts/005_inventory.sql` y `006_billing.sql`. | Se pueden revisar ventas, prefactura, factura y pagos. |
| HU-18 | Como QA, necesitamos datos para notification y maintenance. | `infra/db/02_dml/00_inserts/007_notification.sql` y `008_maintenance.sql`. | Se pueden probar alertas, promociones y actividades de mantenimiento. |
| HU-19 | Como instructor, necesito autenticarme con el usuario funcional `ariel5253` para validar DDL y DML. | `infra/db/03_dcl/00_roles/001_access_role.sql` y `infra/db/03_dcl/01_grants/001_grants.sql`. | La conexion acepta `ariel5253 / ariel5253`, el rol asociado es no superusuario y solo obtiene permisos limitados para la validacion. |
| HU-20 | Como equipo, necesitamos grants claros para lectura, carga y validacion. | `infra/db/03_dcl/01_grants/001_grants.sql`. | Los permisos quedan limitados al alcance de evaluacion. |
| HU-21 | Como equipo, necesitamos policies coherentes para no bloquear la revision. | `infra/db/03_dcl/02_policies/001_policies.sql`. | Las tablas con seguridad a nivel de fila admiten el rol de evaluacion. |
| HU-22 | Como equipo, necesitamos bloques transaccionales y puntos de recuperacion. | `infra/db/04_tcl/` y `infra/db/05_rollbacks/`. | Se documentan operaciones sensibles y su reversa. |

## Cierre y evidencia

| ID | Necesidad | Entregable | Aceptacion |
| -- | --------- | ---------- | ---------- |
| HU-23 | Como equipo, necesitamos demostrar que todo ejecuta y que la documentacion coincide con la entrega. | `infra/db/checks/001_smoke_test.sql`, `infra/db/scripts/load-database.ps1`, `guia_ejecucion_y_validacion.md` y `orden_carga.md`. | El smoke test, la carga y la documentacion dejan evidencia coherente. |

## Asignacion sugerida por integrante

| Integrante | HUs |
| --- | --- |
| Juan | HU-00, HU-01, HU-02, HU-03, HU-04, HU-05, HU-23 |
| Oscar | HU-06, HU-07, HU-08, HU-09, HU-10, HU-11 |
| Stiven | HU-12, HU-13, HU-14, HU-15, HU-16, HU-17 |
| Jose | HU-18, HU-19, HU-20, HU-21, HU-22 |
