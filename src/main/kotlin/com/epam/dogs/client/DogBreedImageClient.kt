package com.epam.dogs.client

import com.epam.dogs.config.DogBreedApiProperties
import com.epam.dogs.extensions.baseUrl
import java.net.URI
import org.springframework.stereotype.Component
import org.springframework.web.reactive.function.client.WebClient
import org.springframework.web.reactive.function.client.awaitBody
import org.springframework.web.util.UriBuilder

@Component
class DogBreedImageClient(
    private val webClient: WebClient,
    private val apiProperties: DogBreedApiProperties,
) {

    suspend fun fetchDogBreedImage(masterBreed: String, subBreed: String? = null): ByteArray {
        val imageResponse = fetchDogBreedImageUrl(masterBreed, subBreed)
        return webClient.get()
            .uri(URI(imageResponse.message))
            .retrieve()
            .awaitBody()
    }

    private suspend fun fetchDogBreedImageUrl(masterBreed: String, subBreed: String? = null): DogBreedImageResponse {
        val imageUrl = "${apiProperties.host}/$masterBreed${subBreed?.let { "/$it" } ?: ""}/images/random"
        return webClient
            .get()
            .uri(URI(imageUrl))
            .retrieve()
            .awaitBody<DogBreedImageResponse>()
    }
}

data class DogBreedImageResponse(
    val status: String,
    val message: String,
)
