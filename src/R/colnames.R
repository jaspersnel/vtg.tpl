colnames <- function(client) {
    vtg::log$info("Running colnames main algorithm")
    pkg.name <- getPackageName()

    image.name <- Sys.getenv("IMAGE_NAME")

    vtg::log$info("Running image {client$image}")

    client$set.task.image(
        image.name,
        task.name="colnames"
    )

    if (client$use.master.container) {
        vtg::log$info("Running `colnames` in master container using image '{image.name}'")
        result <- client$call("colnames")
        return(result)
    }

    vtg::log$info("Running `colnames` locally")

    responses <- client$call("colnames")

    return(responses)
}


