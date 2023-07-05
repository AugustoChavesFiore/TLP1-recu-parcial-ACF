const formReserva = document.querySelector('#formNuevaReserva');
const reservaId = formReserva.dataset.id;

// Aleternativa utilizando la captura del pathname
// const reservaId = window.location.pathname.split('/').pop();



document.addEventListener('DOMContentLoaded', async () => {
    const nombre = document.querySelector('#nombre');
const apellido = document.querySelector('#apellido');
const fecha_reserva = document.querySelector('#fecha_reserva');
const fecha_salida = document.querySelector('#fecha_salida');
const asiento = document.querySelector('#asiento');
const vuelo = document.querySelector('#vuelo');
const telefono = document.querySelector('#telefono');
const email = document.querySelector('#email');

    // Traemos la reserva que se va a editar
    const response = await fetch(`http://localhost:4000/api/${reservaId}`);
    const data = await response.json();
    console.log(data);
    // Mostrar en el formulario los datos de la reserva que se quiere actualizar
    nombre.value = data.nombre;
    apellido.value = data.apellido;
    fecha_reserva.value = data.fecha_reserva;
    fecha_reserva.value = dayjs(data.fecha_reserva).format('DD-MM-YYYY HH:mm');
    fecha_salida.value = dayjs(data.fecha_salida).locale("es").format('DD-MM-YYYY HH:mm');
    asiento.value = data.asiento;
    vuelo.value = data.vuelo;
    telefono.value = data.telefono;
    email.value = data.email;
});


formReserva.addEventListener('submit', async (e) => {
    const nombre = document.querySelector('#nombre');
    const apellido = document.querySelector('#apellido');
    const fecha_reserva = document.querySelector('#fecha_reserva');
    const fecha_salida = document.querySelector('#fecha_salida');
    const asiento = document.querySelector('#asiento');
    const vuelo = document.querySelector('#vuelo');
    const telefono = document.querySelector('#telefono');
    const email = document.querySelector('#email');

    e.preventDefault();

    reservaActualizada = {
        nombre: nombre.value,
        apellido: apellido.value,
        fecha_reserva: fecha_reserva.value,
        fecha_salida: fecha_salida.value,
        asiento: asiento.value,
        vuelo: vuelo.value,
        telefono: telefono.value,
        email: email.value,
    }


    // Se envían los nuevos datos al servidor express
    const response = await fetch(`http://localhost:4000/api/${reservaId}`, {
        method: 'PUT',
        body: JSON.stringify(reservaActualizada),
        headers: {
            'Content-Type': 'application/json'
        }
    })

    const respToJson = await response.json();

    if (response.status !== 200) {
        return Swal.fire({
            title: 'Error',
            text: respToJson.message,
            icon: 'error',
            confirmButtonText: 'Aceptar'
        });
    }


    // Mostrar mensajes al usuario
    Swal.fire({
        title: 'Reserva actualizada',
        text: respToJson.message,
        icon: 'success',
        confirmButtonText: 'Aceptar'
    })

    

    setTimeout(() => {
        // Redireccionar al usuario
        window.location.href = "/"
    }, 2000);




})