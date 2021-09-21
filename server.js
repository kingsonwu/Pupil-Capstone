require('dotenv').config();

const express = require("express");
const cors = require("cors");
const { Sequelize } = require("sequelize");
const { Mentor } = require("./models");
const session = require("express-session");
const path = require('path');


const server = express();

// ----------------------------------------------------------------------------
//                                Middleware
// ----------------------------------------------------------------------------
server.use(cors());
// server.use(express.static("public"));
server.use(express.static(path.resolve(__dirname + '/react-ui/build')));

server.use(express.json());
server.use(express.urlencoded({ extended: true }));

const sess = {
  secret: "keyboard mouse",
  cookie: { maxAge: 600000 },
  id: null,
};
server.use(session(sess));

const PORT = 8080;

server.get("/heartbeat", (req, res) => {
  res.send("Hello!! I am heartbeat Kingsley channel!");
});

// Posting data from the form to the database.
server.post("/api/mentors", async (req, res) => {
  console.log("got it done")
  const { firstName, lastName, email, type, skills, about } = req.body;
  const newMentor = await Mentor.create({
    firstName,
    lastName,
    email,
    type,
    skills,
    about,
  });
  res.json({
    id: newMentor.id,
  });
});

// This GET request gets all mentors from the database.
server.get("/api/mentors", async (req, res) => {
  const mentors = await Mentor.findAll();
  res.json(mentors);
});


server.get("/api/skilltypes/:type", async (req, res) => {
  const mentorType = req.params.type
  const getMentorType = await Mentor.findAll({
    where: {
      type: mentorType
    }
  });
  res.json(getMentorType);
});

server.get("/api/profiles/:id", async (req, res) => {
  const mentorId = req.params.id
  const getMentorId = await Mentor.findAll({
    where: {
      id: mentorId
    }
  });
  res.json(getMentorId);
});



server.listen(PORT, () => {
  console.log(`Server listening on ${PORT}`);
});