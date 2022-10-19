package com.epam.dogs

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication
import org.springframework.data.r2dbc.repository.config.EnableR2dbcRepositories

@SpringBootApplication
@EnableR2dbcRepositories
class DogBreedsApplication

fun main() {
    runApplication<DogBreedsApplication>()
}
