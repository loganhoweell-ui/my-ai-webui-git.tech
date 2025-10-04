const express = require('express');
const app = express();

// Use the port assigned by Render, fallback to 4000 locally
const port = process.env.PORT || 4000;

app.use(express.static(__dirname)); // serve all files in the folder

app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}`);
});
