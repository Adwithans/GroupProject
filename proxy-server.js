const express = require('express');

// Use dynamic import() for ES module
import('node-fetch').then(({ default: fetch }) => {
    const app = express();

    app.get('/observations', async (req, res) => {
        try {
            const response = await fetch('https://r3.smarthealthit.org/Observation?patient=2e27c71e-30c8-4ceb-8c1c-5641e066c0a4');
            const data = await response.json();
            res.json(data);
        } catch (error) {
            res.status(500).json({ error: error.message });
        }
    });

    app.listen(8080, () => {
        console.log('Proxy server running on port 8080');
    });
}).catch(err => {
    console.error('Error importing node-fetch:', err);
});