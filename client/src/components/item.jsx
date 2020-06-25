import React from 'react';
import styles from '../styles/item.css';

export default function Item({cat, handleNewCat}) {
  return (
    <li className={`${styles.reccomendedItem} catLink`} onClick={(e) => {
      handleNewCat(e, cat.catName)
    }}>
      <div className={styles.productWrapper}>
        <a className={styles.product} href='#'>
          <div className={styles.imageWrapper}>
            <img className={styles.productImage} src={cat.url}></img>
          </div>
          <div>
            <p className={styles.price}>${cat.price}</p>
            <p className={styles.name}>{cat.catName}</p>
          </div>
        </a>
      </div>
    </li>
  );
}