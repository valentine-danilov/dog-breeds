package com.epam.dogs.repository

import org.springframework.data.annotation.Id
import org.springframework.data.relational.core.mapping.Column
import org.springframework.data.relational.core.mapping.Table

@Table(name = "breed")
data class DogBreedEntity(
    @Id val id: Long,
    @Column("master_breed") val masterBreed: String,
    @Column("sub_breed") val subBreed: String?,
    val image: ByteArray?
) {

    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (javaClass != other?.javaClass) return false

        other as DogBreedEntity

        if (id != other.id) return false
        if (masterBreed != other.masterBreed) return false
        if (subBreed != other.subBreed) return false
        if (!image.contentEquals(other.image)) return false

        return true
    }

    override fun hashCode(): Int {
        var result = id.hashCode()
        result = 31 * result + masterBreed.hashCode()
        result = 31 * result + (subBreed?.hashCode() ?: 0)
        result = 31 * result + image.contentHashCode()
        return result
    }
}
