package com.epam.dogs.service

import com.epam.dogs.model.DogBreed
import com.epam.dogs.repository.DogBreedEntity

fun toDogBreed(entity: DogBreedEntity) = DogBreed(entity.id, entity.masterBreed, entity.subBreed)
