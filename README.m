<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Smart AI Hub</title>
  <style>
    body {
      font-family: 'Poppins', sans-serif;
      background: linear-gradient(to right, #1f1c2c, #928dab);
      color: white;
      margin: 0;
      padding: 0;
    }
    header {
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 20px 60px;
      background: rgba(255,255,255,0.05);
    }
    header h1 {
      font-size: 1.8em;
      color: #00c6ff;
    }
    nav a {
      margin: 0 15px;
      color: white;
      text-decoration: none;
      font-weight: 500;
      transition: 0.3s;
    }
    nav a:hover {
      color: #00c6ff;
    }
    .hero {
      text-align: center;
      padding: 80px 20px;
    }
    .hero h2 {
      font-size: 2.5em;
      margin-bottom: 10px;
    }
    .hero p {
      font-size: 1.2em;
      color: #dcdcdc;
    }
    .chatbox {
      background: rgba(255,255,255,0.1);
      border-radius: 15px;
      width: 60%;
      margin: 40px auto;
      padding: 20px;
    }
    textarea {
      width: 100%;
      height: 100px;
      border-radius: 10px;
      padding: 10px;
      font-size: 1em;
      border: none;
      outline: none;
    }
    button {
      margin-top: 15px;
      padding: 12px 25px;
      border: none;
      border-radius: 25px;
      background: #00c6ff;
      color: white;
      font-size: 1em;
      cursor: pointer;
      transition: 0.3s;
    }
    button:hover {
      background: #0072ff;
    }
    .features {
      display: flex;
      justify-content: center;
      flex-wrap: wrap;
      gap: 20px;
      margin: 60px 0;
    }
    .feature {
      background: rgba(255,255,255,0.1);
      border-radius: 15px;
      width: 300px;
      padding: 20px;
      text-align: center;
    }
    .feature h3 {
      color: #00c6ff;
    }
    footer {
      text-align: center;
      padding: 30px;
      background: rgba(255,255,255,0.05);
      font-size: 0.9em;
    }
  </style>
</head>
<body>
  <header>
    <h1>🤖 Smart AI Hub</h1>
    <nav>
      <a href="#">Home</a>
      <a href="#">Image Generator</a>
      <a href="#">Video Editor</a>
      <a href="#">Blog Assistant</a>
      <a href="#">Contact</a>
    </nav>
  </header>

  <section class="hero">
    <h2>AI Solutions for Every Need</h2>
    <p>Chat, Create, and Edit with the Power of AI</p>
  </section>

  <section class="chatbox">
    <h3>Hello! How can I assist you today?</h3>
    <textarea id="userInput" placeholder="Type your question here..."></textarea>
    <button onclick="sendMessage()">Ask AI</button>
    <div id="response"></div>
  </section>

  <section class="features">
    <div class="feature">
      <h3>AI Image Generator</h3>
      <p>Create stunning visuals instantly.</p>
      <button>Try Now</button>
    </div>
    <div class="feature">
      <h3>AI Video Editor</h3>
      <p>Edit your videos like a pro.</p>
      <button>Explore</button>
    </div>
    <div class="feature">
      <h3>AI Blog Assistant</h3>
      <p>Boost your writing productivity.</p>
      <button>Get Help</button>
    </div>
  </section>

  <footer>
    <p>© 2024 Smart AI Hub. All rights reserved.</p>
    <p>Privacy Policy | Terms of Service</p>
  </footer>

  <script>
    async function sendMessage() {
      const input = document.getElementById("userInput").value;
      const responseBox = document.getElementById("response");
      responseBox.innerText = "Thinking...";
      
      // Example API call (replace with real AI API)
      const response = await fetch("https://api.openai.com/v1/chat/completions", {
        method: "POST",
        headers: {
          "Authorization": "Bearer YOUR_API_KEY",
          "Content-Type": "application/json"
        },
        body: JSON.stringify({
          model: "gpt-4",
          messages: [{ role: "user", content: input }]
        })
      });
      const data = await response.json();
      responseBox.innerText = data.choices[0].message.content;
    }
  </script>
</body>
</html>
