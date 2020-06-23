import React from 'react';
import ReactDOM from 'react-dom';
import Axios from 'axios';

import Reccomended from './components/reccomended.jsx';
import Featured from './components/featured.jsx';
import styles from './styles/index.css';

class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      cat: {},
      cats: [],
      featured: []
    }

    this.makeRandomCatsProp = this.makeRandomCatsProp.bind(this);
  }

  componentDidMount() {
    this.getCat('Xito');
    this.getCats();
  }

  getCat(catName) {
    Axios
      .get('/reccomended', {
        params: {
          catName
        }
      })
      .then(results => {
        this.setState ({
          cat: results.data
        });
      })
      .catch(err => {
        console.log(err);
      })
  }

  getCats() {
    Axios
      .get('/reccomended/all')
      .then(results => {
        let featured = results.data.filter((cat, index) => {
          return cat.cat_id < 13 && (index % 3 === 0);
        });
        this.setState({
          cats: results.data,
          featured
        });
      })
      .catch(err => {
        console.log(err);
      })
  }

  makeRandomCatsProp(elgibleCats) {
    if(elgibleCats.length === 0) {
      return new Array(6).fill({});
    }

    let slicedCats = [];
    let alreadyPushed = {};
    while (slicedCats.length < 6) {
      let randomIndex = Math.floor(Math.random() * Math.floor(elgibleCats.length));
      if(alreadyPushed[randomIndex]) {
        continue;
      }

      slicedCats.push(elgibleCats[randomIndex]);
      alreadyPushed[randomIndex] = true;
    }

    return slicedCats;
  }

  render() {
    return (
      <div>
        <h1 className={styles.heading}>Reccomended</h1>
        <Reccomended cats={this.makeRandomCatsProp(this.state.cats)}/>
        <hr className={styles.hr} />
        <h1 className={styles.heading}>Featured</h1>
        <Featured cats={this.makeRandomCatsProp(this.state.featured)}/>
      </div>
    )
  }
}

ReactDOM.render(<App />, document.getElementById('root'));