import React from 'react';
import styles from '../styles/reccomended.css';
import Item from './item.jsx'

export default function Reccomended({cats, currentCat, similar, currentTab, handleTabChange, handleNewCat}) {

  let current = currentTab === 'more' ? cats : similar;

  return (
    <div className={styles.container}>
      <div className={styles.subHeader}>
        <ul className={styles.headerList}>
          <li
          className={currentTab === 'more' ? styles.headerItemSelected : styles.headerItem}
          name='more'
          onClick={(e) => handleTabChange(e)}
          >
            <a name='more' className={styles.headerItem} href="#">More to Consider</a>
          </li>
          <li
          className={currentTab === 'similar' ? styles.headerItemSelected : styles.headerItem}
          name='similar'
          onClick={(e) => handleTabChange(e)}
          >
            <a name='similar' className={styles.headerItem} href="#">Similar Items</a>
          </li>
        </ul>
      </div>
      <div className={styles.itemBox}>
        <ul className={styles.itemRow}>
          {
          current.map((cat, index) => {
            return <Item handleNewCat={handleNewCat} key={index} cat={cat}/>
          })}
        </ul>
      </div>
    </div>
  )
}