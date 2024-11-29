const express = require("express");
const cors = require("cors");
const monitors = require("./database/monitors");

const app = express();
app.use(cors());
app.use(express.json());

app.get("/api/monitors", (req, res) => {
  res.json({ monitors });
});

app.get("/api/monitors/:id", (req, res) => {
  const monitor = monitors.find((m) => m.id === req.params.id);
  if (monitor) {
    res.json({ monitor });
  } else {
    res.status(404).json({ message: "Monitor not found" });
  }
});

const PORT = process.env.PORT || 3001;
app.listen(PORT, () => {
    console.log(`Server running on http://localhost:${PORT}`);
});
