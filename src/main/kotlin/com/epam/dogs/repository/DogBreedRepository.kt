package com.epam.dogs.repository

import org.springframework.data.repository.kotlin.CoroutineCrudRepository

interface DogBreedRepository: CoroutineCrudRepository<DogBreedEntity, Long> {
    suspend fun findByMasterBreedAndSubBreedIsNull(masterBreed: String): DogBreedEntity?
    suspend fun findByMasterBreedAndSubBreed(masterBreed: String, additionalBreed: String?): DogBreedEntity?
}
