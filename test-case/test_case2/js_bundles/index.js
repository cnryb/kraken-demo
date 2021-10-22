
// const btn = document.createElement('button');
// btn.appendChild(document.createTextNode('点击这里'))
// btn.onclick = async () => {
//     const response = await fetch('https://jsonplaceholder.typicode.com/posts/', {
//         method: 'POST',
//         body: JSON.stringify({ "name": "kraken" }),
//         headers: {
//             'Content-Type': 'application/json',
//         },
//     })
//     const value = await response.json()
//     console.log(value)
// }

// document.body.appendChild(btn);


(async function () {
    const response = await fetch('https://jsonplaceholder.typicode.com/posts/', {
        method: 'POST',
        body: JSON.stringify({ "name": "kraken" }),
        headers: {
            'Content-Type': 'application/json',
        },
    })
    const value = await response.json()
    console.log(value)
})();