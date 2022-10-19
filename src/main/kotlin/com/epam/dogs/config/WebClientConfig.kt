package com.epam.dogs.config

import org.springframework.boot.context.properties.ConfigurationProperties
import org.springframework.boot.context.properties.ConstructorBinding
import org.springframework.boot.context.properties.EnableConfigurationProperties
import org.springframework.context.annotation.Bean
import org.springframework.context.annotation.Configuration
import org.springframework.http.codec.ClientCodecConfigurer
import org.springframework.web.reactive.function.client.ExchangeStrategies
import org.springframework.web.reactive.function.client.WebClient

@Configuration
@EnableConfigurationProperties(DogBreedApiProperties::class)
class WebClientConfig {

    @Bean
    fun defaultWebClient(): WebClient {
        val size = 16 * 1024 * 1024
        val strategies = ExchangeStrategies.builder()
            .codecs { codecs: ClientCodecConfigurer ->
                codecs.defaultCodecs().maxInMemorySize(size)
            }.build()
        return WebClient.builder().exchangeStrategies(strategies).build()
    }
}

@ConfigurationProperties(prefix = "app.api.dog-breed")
@ConstructorBinding
data class DogBreedApiProperties(
    val host: String,
    val images: ImagePaths
)

data class ImagePaths(
    val byMasterBreedPath: String,
    val byMasterAndSubBreedPath: String
)
