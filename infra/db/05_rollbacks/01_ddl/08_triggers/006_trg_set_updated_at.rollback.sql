DROP TRIGGER IF EXISTS trg_set_updated_at ON billing.purchase_detail;
DROP TRIGGER IF EXISTS trg_set_updated_at ON billing.partial_payment;
DROP TRIGGER IF EXISTS trg_set_updated_at ON billing.invoice;
DROP TRIGGER IF EXISTS trg_set_updated_at ON billing.pre_invoice;

DROP TRIGGER IF EXISTS trg_set_updated_at ON inventory.inventory_availability;
DROP TRIGGER IF EXISTS trg_set_updated_at ON inventory.product_tracking;
DROP TRIGGER IF EXISTS trg_set_updated_at ON inventory.service_sale;
DROP TRIGGER IF EXISTS trg_set_updated_at ON inventory.product_sale;
DROP TRIGGER IF EXISTS trg_set_updated_at ON inventory.service;
DROP TRIGGER IF EXISTS trg_set_updated_at ON inventory.product;
DROP TRIGGER IF EXISTS trg_set_updated_at ON inventory.supplier;

DROP TRIGGER IF EXISTS trg_set_updated_at ON service_delivery.check_out;
DROP TRIGGER IF EXISTS trg_set_updated_at ON service_delivery.check_in;
DROP TRIGGER IF EXISTS trg_set_updated_at ON service_delivery.stay;
DROP TRIGGER IF EXISTS trg_set_updated_at ON service_delivery.room_cancellation;
DROP TRIGGER IF EXISTS trg_set_updated_at ON service_delivery.room_reservation;

DROP TRIGGER IF EXISTS trg_set_updated_at ON distribution.room_catalog;
DROP TRIGGER IF EXISTS trg_set_updated_at ON distribution.room_availability;
DROP TRIGGER IF EXISTS trg_set_updated_at ON distribution.room;
DROP TRIGGER IF EXISTS trg_set_updated_at ON distribution.room_status;
DROP TRIGGER IF EXISTS trg_set_updated_at ON distribution.room_type;
DROP TRIGGER IF EXISTS trg_set_updated_at ON distribution.branch;

DROP TRIGGER IF EXISTS trg_set_updated_at ON security.module_screen;
DROP TRIGGER IF EXISTS trg_set_updated_at ON security.role_permission;
DROP TRIGGER IF EXISTS trg_set_updated_at ON security.app_user_role;
DROP TRIGGER IF EXISTS trg_set_updated_at ON security.app_user;
DROP TRIGGER IF EXISTS trg_set_updated_at ON security.screen;
DROP TRIGGER IF EXISTS trg_set_updated_at ON security.module;
DROP TRIGGER IF EXISTS trg_set_updated_at ON security.permission;
DROP TRIGGER IF EXISTS trg_set_updated_at ON security.role;

DROP TRIGGER IF EXISTS trg_set_updated_at ON configuration.price;
DROP TRIGGER IF EXISTS trg_set_updated_at ON configuration.employee;
DROP TRIGGER IF EXISTS trg_set_updated_at ON configuration.legal_information;
DROP TRIGGER IF EXISTS trg_set_updated_at ON configuration.payment_method;
DROP TRIGGER IF EXISTS trg_set_updated_at ON configuration.day_type;
DROP TRIGGER IF EXISTS trg_set_updated_at ON configuration.company;
DROP TRIGGER IF EXISTS trg_set_updated_at ON configuration.person;
DROP TRIGGER IF EXISTS trg_set_updated_at ON configuration.customer;
