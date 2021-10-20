
const btn = document.createElement('button');
btn.appendChild(document.createTextNode('点击这里'))
btn.onclick = async () => {
    const response = await fetch('https://fe.zhaopin.com/data-normalization/api/general', {
        method: 'POST',
        body: JSON.stringify([{ "dictName": "sex" }]),
        headers: {
            'Content-Type': 'application/json',
        },
    })
    console.log(response)
    const value = await response.json()
    console.log('---------')

    console.log(value)
}

document.body.appendChild(btn);

