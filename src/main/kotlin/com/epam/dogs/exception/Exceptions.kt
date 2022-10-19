package com.epam.dogs.exception

import com.epam.dogs.model.ExceptionResponse
import org.springframework.http.HttpStatus.NOT_FOUND
import org.springframework.web.server.ResponseStatusException

fun ResponseStatusException.toExceptionResponse() = ExceptionResponse(
    statusCode = status.value(),
    error = message ?: this::class.simpleName ?: status.reasonPhrase
)

class DogBreedNotFoundException(override val message: String? = null) : ResponseStatusException(NOT_FOUND, message)
class DogBreedImageNotFoundException(override val message: String? = null) : ResponseStatusException(NOT_FOUND, message)
