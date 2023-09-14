const express = require('express');
const app = express();

const PORT = 4500

const uuidv4 = () => {
    return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function (c) {
        var r = Math.random() * 16 | 0, v = c == 'x' ? r : (r & 0x3 | 0x8);
        return v.toString(16);
    });
}
console.log(uuidv4());

// app.get('/uuid', async (req, res) => {
//     const id = await uuidv4();
//     res.send({id: id});
// });

app.get('/uuid', async (req, res) => {
    const count = parseInt(req.query.count);
    let ids = [];
    for (let i = 0; i < count; i++) {
        ids.push(await uuidv4());
    }
    res.send({ids: ids});
});

app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
})