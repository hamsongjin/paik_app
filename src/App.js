import {BrowserRouter as Router} from 'react-router-dom';
import AppWrapper from './components/AppWrapper/AppWrapper';
import './styles/common.css';
import './styles/reset.css';
import './App.css';

const App = () => {
  return (
    <div className="App">
      <Router>
          <AppWrapper />
      </Router>
    </div>
  );
}

export default App;
