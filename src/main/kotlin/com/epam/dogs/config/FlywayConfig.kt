package com.epam.dogs.config

import org.flywaydb.core.Flyway
import org.springframework.boot.autoconfigure.flyway.FlywayProperties
import org.springframework.boot.context.properties.EnableConfigurationProperties
import org.springframework.context.annotation.Bean
import org.springframework.context.annotation.Configuration

/* Manual creation of Flyway bean is required when using R2DBC driver */
@Configuration
@EnableConfigurationProperties(FlywayProperties::class)
class FlywayConfig(
    private val flywayProperties: FlywayProperties
) {

    @Bean(initMethod = "migrate")
    fun flyway() =
        Flyway(
            Flyway.configure()
                .baselineOnMigrate(flywayProperties.isBaselineOnMigrate)
                .baselineVersion(flywayProperties.baselineVersion)
                .dataSource(
                    flywayProperties.url,
                    flywayProperties.user,
                    flywayProperties.password
                )
        )

}
