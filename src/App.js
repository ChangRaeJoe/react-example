import logo from "./logo.svg";
import "./App.css";

function addURL() {
  return true;
}
// 컨테이너 id
function print() {
  console.log("log for client");
}
function reqestConvert() {
  // http://localhost:8080/fromyaml
  return false;
}

function App() {
  return (
    <div className="App">
      {print()}

      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>
          Edit <code>src/App.js</code> and save to reload.
        </p>
        <a
          className="App-link"
          href="https://reactjs.org"
          target="_blank"
          rel="noopener noreferrer"
        >
          Learn React
        </a>
      </header>
    </div>
  );
}

export default App;
