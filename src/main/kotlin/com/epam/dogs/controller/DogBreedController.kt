package com.epam.dogs.controller

import com.epam.dogs.service.DogBreedService
import org.springframework.core.io.buffer.DataBuffer
import org.springframework.http.HttpStatus.OK
import org.springframework.http.MediaType.IMAGE_JPEG
import org.springframework.http.ResponseEntity
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.PathVariable
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController

@RestController
@RequestMapping("/v1/dogs/breeds")
class DogBreedController(
    private val dogBreedService: DogBreedService,
) {

    @GetMapping("/{breed}/image")
    suspend fun getDogBreedImage(
        @PathVariable breed: String,
    ): ResponseEntity<DataBuffer> {
        val imageBuffer = dogBreedService.getImageByBreed(breed)

        return ResponseEntity
            .status(OK)
            .contentType(IMAGE_JPEG)
            .body(imageBuffer)
    }

    @GetMapping("/{masterBreed}/{subBreed}/image")
    suspend fun getDogBreedImage(
        @PathVariable("masterBreed") masterBreed: String,
        @PathVariable("subBreed") subBreed: String
    ): ResponseEntity<DataBuffer> {
        val imageBuffer = dogBreedService.getImageByBreed(masterBreed, subBreed)

        return ResponseEntity
            .status(OK)
            .contentType(IMAGE_JPEG)
            .body(imageBuffer)
    }

    @GetMapping
    fun getAllBreeds() = dogBreedService.getAllBreeds()
}
