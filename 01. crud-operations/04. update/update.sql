UPDATE employees
SET 
    first_name = 'Nuevo_nombre',
    last_name = 'Nuevo_apellido',
    age = 29,
    hire_date = '2017-10-12',
    is_active = false,
    employee_description = 'nueva_descripcion',
    points = 3.0 
WHERE employee_id = 1;