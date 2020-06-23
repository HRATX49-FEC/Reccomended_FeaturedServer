import React from 'react';
import styles from '../styles/reccomended.css';
import Item from './item.jsx'

export default function Reccomended({cats}) {
  return (
    <div className={styles.container}>
      <div className={styles.subHeader}>
        <ul className={styles.headerList}>
          <li className={styles.headerItemSelected}><a href="#">More to Consider</a></li>
          <li className={styles.headerItem}><a href="#">Similar Items</a></li>
        </ul>
      </div>
      <div className={styles.itemBox}>
        <ul className={styles.itemRow}>
          {cats.map((cat, index) => {
            return <Item key={index} cat={cat}/>
          })}
        </ul>
      </div>
    </div>
  )
}