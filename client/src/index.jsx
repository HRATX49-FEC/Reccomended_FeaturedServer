import React from 'react';
import ReactDOM from 'react-dom';
import Axios from 'axios';
import $ from 'jquery';

import Reccomended from './components/reccomended.jsx';
import Featured from './components/featured.jsx';
import styles from './styles/index.css';

class RecFea extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      cat: {},
      cats: [],
      featured: [],
      reccomendedTab: 'more'
    }

    this.makeRandomCatsProp = this.makeRandomCatsProp.bind(this);
    this.handleTabChange = this.handleTabChange.bind(this);
    this.handleNewCat = this.handleNewCat.bind(this);
  }

  componentDidMount() {
    this.getCat('Luna');
    this.getCats();
    $('body').on('submit', '.form', (e) => {
      let formatted = e.target[0].rawValue.replace(/(^\w|\s\w)(\S*)/g, (_,m1,m2) => m1.toUpperCase()+m2.toLowerCase());
      console.log(formatted);
      this.getCat(formatted);
      this.getCats();
    });
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
      if(alreadyPushed[elgibleCats[randomIndex].catName]) {
        continue;
      }

      slicedCats.push(elgibleCats[randomIndex]);
      alreadyPushed[elgibleCats[randomIndex].catName] = true;
    }

    return slicedCats;
  }

  handleTabChange(e) {
    this.setState({
      reccomendedTab: e.target.name
    });
  }

  handleNewCat(e, catName) {
    this.getCat(catName);
  }

  render() {
    return (
      <div>
        <h1 className={styles.heading}>Recommended</h1>
        <Reccomended
        currentCat={this.state.cat}
        cats={this.makeRandomCatsProp(this.state.cats)}
        similar={this.makeRandomCatsProp(this.state.cats.filter(cat => {
          return cat.category_id === this.state.cat.category_id;
        }))}
        currentTab={this.state.reccomendedTab}
        handleTabChange={this.handleTabChange}
        handleNewCat={this.handleNewCat}
        />
        <hr className={styles.hr} />
        <h1 className={styles.heading}>Featured Products</h1>
        <Featured currentCat={this.state.cat} cats={this.state.featured} handleNewCat={this.handleNewCat}/>
        <hr className={styles.hr} />
      </div>
    )
  }
}

ReactDOM.render(<RecFea cat={window.catName}/>, document.getElementById('recommended'));