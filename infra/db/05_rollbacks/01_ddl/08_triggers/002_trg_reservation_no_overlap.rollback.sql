DROP TRIGGER IF EXISTS trg_reservation_no_overlap ON service_delivery.room_reservation;
DROP FUNCTION IF EXISTS service_delivery.fn_validate_room_reservation();
