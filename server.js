const express = require("express");
const cors = require("cors");
const { Sequelize } = require("sequelize");
const { Mentor } = require("./models");
const session = require("express-session");
const path = require('path');


const app = express();

// ----------------------------------------------------------------------------
//                                Middleware
// ----------------------------------------------------------------------------
app.use(cors());
// // app.use(express.static("public"));
// app.use(express.static(path.resolve(__dirname + '/react-ui/build')));

app.use(express.json());

if (process.env.NODE_ENV === "production")
{
  //serve static content
  // npm run build

  app.use(express.static(path.join(__dirname,"react-ui/build")));
}
// app.use(express.urlencoded({ extended: true }));

// const sess = {
//   secret: "keyboard mouse",
//   cookie: { maxAge: 600000 },
//   id: null,
// };
// app.use(session(sess));
 
const PORT = process.env.PORT || 5000;

app.get("/heartbeat", (req, res) => {
  res.send("Hello!! I am heartbeat Kingsley channel!");
});

// Posting data from the form to the database.
app.post("/api/mentors", async (req, res) => {
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
app.get("/api/mentors", async (req, res) => {
  const mentors = await Mentor.findAll();
  res.json(mentors);
});


app.get("/api/skilltypes/:type", async (req, res) => {
  const mentorType = req.params.type
  const getMentorType = await Mentor.findAll({
    where: {
      type: mentorType
    }
  });
  res.json(getMentorType);
});

app.get("/api/profiles/:id", async (req, res) => {
  const mentorId = req.params.id
  const getMentorId = await Mentor.findAll({
    where: {
      id: mentorId
    }
  });
  res.json(getMentorId);
});

app.get("*", (req,res)=> {
  res.sendFile(path.join(__dirname,"react-ui/build/index.html"))
})

app.listen(PORT, () => {
  console.log(`Server listening on ${PORT}`);
});