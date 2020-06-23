import React from 'react';
import styles from '../styles/reccomended.css';
import Item from './item.jsx'

export default function Featured({cats}) {
  return (
    <div className={styles.container}>
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