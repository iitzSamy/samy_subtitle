window.addEventListener("message", (event) => {
    const data = event.data;
    if (!data || data.type !== "subtitle") return;

    $('#speaker')
        .text(`${data.name}: `)
        .css({
            color: data.name_color
        });

    $('#message').text(data.text);

    $('#subtitle').fadeIn(500, () => {
        setTimeout(() => $('#subtitle').fadeOut(500), data.time || 3000);
    });
});