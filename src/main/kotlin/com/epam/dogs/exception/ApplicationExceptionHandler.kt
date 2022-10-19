package com.epam.dogs.exception

import com.epam.dogs.model.ExceptionResponse
import org.springframework.http.HttpStatus.INTERNAL_SERVER_ERROR
import org.springframework.http.ResponseEntity
import org.springframework.web.bind.annotation.ExceptionHandler
import org.springframework.web.bind.annotation.RestControllerAdvice
import org.springframework.web.server.ResponseStatusException

@RestControllerAdvice
class ApplicationExceptionHandler {

    @ExceptionHandler(ResponseStatusException::class)
    suspend fun handleResponseStatusException(exception: ResponseStatusException): ResponseEntity<ExceptionResponse> {
        return ResponseEntity.status(exception.status)
            .body(exception.toExceptionResponse())
    }

    @ExceptionHandler(Exception::class)
    suspend fun handleException(exception: Exception): ResponseEntity<ExceptionResponse> {
        return ResponseEntity.status(INTERNAL_SERVER_ERROR)
            .body(
                ExceptionResponse(
                    INTERNAL_SERVER_ERROR.value(),
                    exception.message ?: exception::class.simpleName ?: ""
                )
            )
    }
}
