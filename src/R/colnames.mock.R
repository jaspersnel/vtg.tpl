hello.mock <- function() {
    datasets <- list()

    datasets[[1]] <- data.frame(colname1 = c(1,2,3))

    client <- vtg::MockClient(datasets)
    results <- colnames(client, name)
    return(results)
}

