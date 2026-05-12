-- Master rollback order for PostgreSQL.
-- Run with psql after applying the main changelog.

\ir ../05_rollbacks/01_ddl/09_indexes/001_domain_indexes.rollback.sql

\ir ../05_rollbacks/01_ddl/05_materialized_views/002_mv_branch_occupancy.rollback.sql
\ir ../05_rollbacks/01_ddl/05_materialized_views/001_mv_monthly_revenue.rollback.sql

\ir ../05_rollbacks/01_ddl/04_views/005_v_current_maintenance_dashboard.rollback.sql
\ir ../05_rollbacks/01_ddl/04_views/004_v_user_roles.rollback.sql
\ir ../05_rollbacks/01_ddl/04_views/003_v_stay_billing.rollback.sql
\ir ../05_rollbacks/01_ddl/04_views/002_v_reservation_details.rollback.sql
\ir ../05_rollbacks/01_ddl/04_views/001_v_room_availability.rollback.sql

\ir ../05_rollbacks/01_ddl/08_triggers/006_trg_set_updated_at.rollback.sql
\ir ../05_rollbacks/01_ddl/08_triggers/005_trg_invoice_total.rollback.sql
\ir ../05_rollbacks/01_ddl/08_triggers/004_trg_pre_invoice_total.rollback.sql
\ir ../05_rollbacks/01_ddl/08_triggers/003_trg_product_sale_stock.rollback.sql
\ir ../05_rollbacks/01_ddl/08_triggers/002_trg_reservation_no_overlap.rollback.sql
\ir ../05_rollbacks/01_ddl/08_triggers/001_trg_room_capacity.rollback.sql

\ir ../05_rollbacks/01_ddl/07_procedures/005_sp_close_maintenance.rollback.sql
\ir ../05_rollbacks/01_ddl/07_procedures/004_sp_issue_invoice.rollback.sql
\ir ../05_rollbacks/01_ddl/07_procedures/003_sp_register_product_entry.rollback.sql
\ir ../05_rollbacks/01_ddl/07_procedures/002_sp_soft_delete.rollback.sql
\ir ../05_rollbacks/01_ddl/07_procedures/001_sp_create_reservation.rollback.sql

\ir ../05_rollbacks/01_ddl/06_functions/005_fn_available_stock.rollback.sql
\ir ../05_rollbacks/01_ddl/06_functions/004_fn_calculate_reservation_price.rollback.sql
\ir ../05_rollbacks/01_ddl/06_functions/003_fn_calculate_total.rollback.sql
\ir ../05_rollbacks/01_ddl/06_functions/002_fn_calculate_nights.rollback.sql
\ir ../05_rollbacks/01_ddl/06_functions/001_fn_set_updated_at.rollback.sql

-- Tables rollback order should match dependency reverse order.
\ir ../05_rollbacks/01_ddl/03_tables/billing/004_purchase_detail.rollback.sql
\ir ../05_rollbacks/01_ddl/03_tables/billing/003_partial_payment.rollback.sql
\ir ../05_rollbacks/01_ddl/03_tables/billing/002_invoice.rollback.sql
\ir ../05_rollbacks/01_ddl/03_tables/billing/001_pre_invoice.rollback.sql

\ir ../05_rollbacks/01_ddl/03_tables/inventory/007_inventory_availability.rollback.sql
\ir ../05_rollbacks/01_ddl/03_tables/inventory/006_product_tracking.rollback.sql
\ir ../05_rollbacks/01_ddl/03_tables/inventory/005_service_sale.rollback.sql
\ir ../05_rollbacks/01_ddl/03_tables/inventory/004_product_sale.rollback.sql
\ir ../05_rollbacks/01_ddl/03_tables/inventory/003_service.rollback.sql
\ir ../05_rollbacks/01_ddl/03_tables/inventory/002_product.rollback.sql
\ir ../05_rollbacks/01_ddl/03_tables/inventory/001_supplier.rollback.sql

\ir ../05_rollbacks/01_ddl/03_tables/service_delivery/005_check_out.rollback.sql
\ir ../05_rollbacks/01_ddl/03_tables/service_delivery/004_check_in.rollback.sql
\ir ../05_rollbacks/01_ddl/03_tables/service_delivery/003_stay.rollback.sql
\ir ../05_rollbacks/01_ddl/03_tables/service_delivery/002_room_cancellation.rollback.sql
\ir ../05_rollbacks/01_ddl/03_tables/service_delivery/001_room_reservation.rollback.sql

\ir ../05_rollbacks/01_ddl/03_tables/distribution/007_fk_price_room_type.rollback.sql
\ir ../05_rollbacks/01_ddl/03_tables/distribution/006_room_catalog.rollback.sql
\ir ../05_rollbacks/01_ddl/03_tables/distribution/005_room_availability.rollback.sql
\ir ../05_rollbacks/01_ddl/03_tables/distribution/004_room.rollback.sql
\ir ../05_rollbacks/01_ddl/03_tables/distribution/003_room_status.rollback.sql
\ir ../05_rollbacks/01_ddl/03_tables/distribution/002_room_type.rollback.sql
\ir ../05_rollbacks/01_ddl/03_tables/distribution/001_branch.rollback.sql

\ir ../05_rollbacks/01_ddl/03_tables/security/008_module_screen.rollback.sql
\ir ../05_rollbacks/01_ddl/03_tables/security/007_role_permission.rollback.sql
\ir ../05_rollbacks/01_ddl/03_tables/security/006_app_user_role.rollback.sql
\ir ../05_rollbacks/01_ddl/03_tables/security/005_app_user.rollback.sql
\ir ../05_rollbacks/01_ddl/03_tables/security/004_screen.rollback.sql
\ir ../05_rollbacks/01_ddl/03_tables/security/003_module.rollback.sql
\ir ../05_rollbacks/01_ddl/03_tables/security/002_permission.rollback.sql
\ir ../05_rollbacks/01_ddl/03_tables/security/001_role.rollback.sql

\ir ../05_rollbacks/01_ddl/03_tables/configuration/008_price.rollback.sql
\ir ../05_rollbacks/01_ddl/03_tables/configuration/007_employee.rollback.sql
\ir ../05_rollbacks/01_ddl/03_tables/configuration/006_legal_information.rollback.sql
\ir ../05_rollbacks/01_ddl/03_tables/configuration/005_payment_method.rollback.sql
\ir ../05_rollbacks/01_ddl/03_tables/configuration/004_day_type.rollback.sql
\ir ../05_rollbacks/01_ddl/03_tables/configuration/003_company.rollback.sql
\ir ../05_rollbacks/01_ddl/03_tables/configuration/002_person.rollback.sql
\ir ../05_rollbacks/01_ddl/03_tables/configuration/001_customer.rollback.sql

\ir ../05_rollbacks/01_ddl/02_types/001_domain_types.rollback.sql
\ir ../05_rollbacks/01_ddl/01_schemas/001_schemas.rollback.sql
