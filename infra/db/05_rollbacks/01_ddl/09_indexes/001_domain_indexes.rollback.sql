DROP INDEX IF EXISTS distribution.ux_mv_branch_occupancy;
DROP INDEX IF EXISTS billing.ux_mv_monthly_revenue;

DROP INDEX IF EXISTS maintenance.ix_maintenance_dashboard_branch_date_value;
DROP INDEX IF EXISTS maintenance.ux_maintenance_remodeling;
DROP INDEX IF EXISTS maintenance.ux_maintenance_usage;
DROP INDEX IF EXISTS maintenance.ix_maintenance_employee;
DROP INDEX IF EXISTS maintenance.ix_room_maintenance_date_value;

DROP INDEX IF EXISTS notification.ux_customer_loyalty;
DROP INDEX IF EXISTS notification.ux_terms_version;
DROP INDEX IF EXISTS notification.ix_alert_reservation;
DROP INDEX IF EXISTS notification.ix_alert_customer;
DROP INDEX IF EXISTS notification.ix_promotion_date_value;

DROP INDEX IF EXISTS billing.ix_purchase_detail_invoice;
DROP INDEX IF EXISTS billing.ix_payment_invoice;
DROP INDEX IF EXISTS billing.ix_payment_reservation;
DROP INDEX IF EXISTS billing.ux_invoice_stay;
DROP INDEX IF EXISTS billing.ux_invoice_number;
DROP INDEX IF EXISTS billing.ux_pre_invoice_stay;

DROP INDEX IF EXISTS inventory.ix_inventory_availability_service;
DROP INDEX IF EXISTS inventory.ix_inventory_availability_product;
DROP INDEX IF EXISTS inventory.ix_product_tracking_date_value;
DROP INDEX IF EXISTS inventory.ix_service_sale_stay;
DROP INDEX IF EXISTS inventory.ix_product_sale_stay;
DROP INDEX IF EXISTS inventory.ux_service_name;
DROP INDEX IF EXISTS inventory.ux_product_name;
DROP INDEX IF EXISTS inventory.ux_supplier_tax_id;

DROP INDEX IF EXISTS service_delivery.ux_check_out_stay;
DROP INDEX IF EXISTS service_delivery.ux_check_in_reservation;
DROP INDEX IF EXISTS service_delivery.ux_stay_reservation;
DROP INDEX IF EXISTS service_delivery.ux_cancellation_reservation;
DROP INDEX IF EXISTS service_delivery.ix_room_reservation_date_value;
DROP INDEX IF EXISTS service_delivery.ix_reservation_customer;

DROP INDEX IF EXISTS distribution.ix_room_availability_date_value;
DROP INDEX IF EXISTS distribution.ux_room_catalog;
DROP INDEX IF EXISTS distribution.ux_room_branch_number;
DROP INDEX IF EXISTS distribution.ux_room_status_name;
DROP INDEX IF EXISTS distribution.ux_room_type_name;
DROP INDEX IF EXISTS distribution.ux_branch_company_name;

DROP INDEX IF EXISTS security.ux_module_screen;
DROP INDEX IF EXISTS security.ux_role_permission;
DROP INDEX IF EXISTS security.ux_app_user_role;
DROP INDEX IF EXISTS security.ux_app_user_username;
DROP INDEX IF EXISTS security.ux_app_user_person;
DROP INDEX IF EXISTS security.ux_screen_module_path;
DROP INDEX IF EXISTS security.ux_module_base_path;
DROP INDEX IF EXISTS security.ux_module_name;
DROP INDEX IF EXISTS security.ux_permission_name_action;
DROP INDEX IF EXISTS security.ux_role_name;

DROP INDEX IF EXISTS configuration.ux_price_day_type_start_date;
DROP INDEX IF EXISTS configuration.ux_employee_work_email;
DROP INDEX IF EXISTS configuration.ux_employee_person;
DROP INDEX IF EXISTS configuration.ux_payment_method_name;
DROP INDEX IF EXISTS configuration.ux_day_type_name_date_value;
DROP INDEX IF EXISTS configuration.ux_company_tax_id;
DROP INDEX IF EXISTS configuration.ux_person_email;
DROP INDEX IF EXISTS configuration.ux_person_document;
DROP INDEX IF EXISTS configuration.ux_customer_email;
DROP INDEX IF EXISTS configuration.ux_customer_document;
