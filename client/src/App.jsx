import { Welcome, Footer, NavBar, Services, Transactions } from './components';

// import { useState } from 'react';

const App = () => {
  // const [count, setCount] = useState(0);

  return (
    <div className='min-h-screen'>
      <div className='gradient-bg-welcome'>
        <NavBar />
        <Welcome />
      </div>

      <Services />
      <Transactions />
      <Footer />
      
    </div>
  );
};

export default App;
