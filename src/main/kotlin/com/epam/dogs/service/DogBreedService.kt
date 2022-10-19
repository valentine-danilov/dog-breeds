package com.epam.dogs.service

import com.epam.dogs.exception.DogBreedImageNotFoundException
import com.epam.dogs.exception.DogBreedNotFoundException
import com.epam.dogs.client.DogBreedImageClient
import com.epam.dogs.repository.DogBreedEntity
import com.epam.dogs.repository.DogBreedRepository
import kotlinx.coroutines.flow.map
import org.springframework.core.io.buffer.DataBuffer
import org.springframework.core.io.buffer.DefaultDataBufferFactory
import org.springframework.stereotype.Service

@Service
class DogBreedService(
    private val repository: DogBreedRepository,
    private val dogBreedImageClient: DogBreedImageClient,
) {

    fun getAllBreeds() = repository.findAll().map(::toDogBreed)

    suspend fun getImageByBreed(
        masterBreed: String,
        subBreed: String? = null
    ): DataBuffer {
        val breedEntity = if (subBreed == null) {
            repository.findByMasterBreedAndSubBreedIsNull(masterBreed)
        } else {
            repository.findByMasterBreedAndSubBreed(masterBreed, subBreed)
        } ?: throw DogBreedNotFoundException(
            "Dog with breed [$masterBreed${if (subBreed != null) " $subBreed" else ""}] not found."
        )

        return breedEntity.withImage().image?.wrapped()
            ?: throw DogBreedImageNotFoundException("Image for dog breed[$masterBreed, $subBreed] not found.")
    }

    private suspend fun DogBreedEntity.withImage() =
        if (image == null) {
            val fetchedImage = dogBreedImageClient.fetchDogBreedImage(masterBreed, subBreed)
            copy(image = fetchedImage).also { repository.save(it) }
        } else {
            this
        }

    private fun ByteArray.wrapped() = DefaultDataBufferFactory().wrap(this)
}
