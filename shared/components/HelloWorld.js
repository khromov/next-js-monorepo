import styles from './HelloWorld.module.css'
function HelloWorld() {
    return <h2 className={styles.hello}>Hello, I am a shared component!</h2>;
}

export default HelloWorld;