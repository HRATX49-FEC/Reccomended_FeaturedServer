import React from 'react';
import ReactDOM from 'react-dom';
import Axios from 'axios';

import Reccomended from './components/reccomended.jsx';
import Featured from './components/featured.jsx';
import styles from './styles/index.css';

class RecFea extends React.Component {
  constructor(props) {
    super(props);
    this.catName = props.cat || 'Luna';
    this.state = {
      cat: {},
      cats: [],
      featured: [],
      reccomendedTab: 'more'
    }

    this.makeRandomCatsProp = this.makeRandomCatsProp.bind(this);
    this.handleTabChange = this.handleTabChange.bind(this);
  }

  componentDidMount() {
    this.getCat(this.catName);
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
        featured = this.makeRandomCatsProp(featured);
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

  handleTabChange(e) {
    this.setState({
      reccomendedTab: e.target.name
    });
  }

  render() {
    return (
      <div>
        <h1 className={styles.heading}>Recommended</h1>
        <Reccomended
        cats={this.makeRandomCatsProp(this.state.cats)}
        similar={this.makeRandomCatsProp(this.state.cats.filter(cat => {
          return cat.category_id === this.state.cat.category_id;
        }))}
        currentTab={this.state.reccomendedTab}
        handleTabChange={this.handleTabChange}
        />
        <hr className={styles.hr} />
        <h1 className={styles.heading}>Featured Products</h1>
        <Featured cats={this.state.featured}/>
        <hr className={styles.hr} />
      </div>
    )
  }
}

ReactDOM.render(<RecFea cat={window.catName}/>, document.getElementById('recommended'));