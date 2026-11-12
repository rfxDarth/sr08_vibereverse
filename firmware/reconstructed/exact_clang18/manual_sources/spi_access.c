/* spi_access from the Renesas DA145xx SDK 6.0.18.1182.1,
 * sdk/platform/driver/spi/spi_58x.c, with spi_t from spi_58x.h (Copyright (C)
 * Dialog Semiconductor / Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt).
 */
#include "firmware/reconstructed/include/sr08_sdk_da14585.h"

/// SPI registers (@ 0x50001200)
typedef struct
{
    /// SPI control register 0 (@ 0x00000000)
    volatile uint16_t SPI_CTRL_REGF;

    /// SPI RX/TX register0 (@ 0x00000002)
    volatile uint16_t SPI_RX_TX_REG0F;

    /// SPI RX/TX register1 (@ 0x00000004)
    volatile uint16_t SPI_RX_TX_REG1F;

    /// SPI clear interrupt register (@ 0x00000006)
    volatile uint16_t SPI_CLEAR_INT_REGF;

    /// SPI control register 1 (@ 0x0000008)
    volatile uint16_t SPI_CTRL_REG1F;
} spi_t;

/// SPI Instantiation
static spi_t * const spi = (spi_t *) (SPI_CTRL_REG);

uint32_t spi_access(uint32_t dataToSend)
{
    uint32_t dataRead = 0;

    // Set FIFO Bidirectional mode
    SetBits16(&spi->SPI_CTRL_REG1F, SPI_FIFO_MODE, 2);

    // Check if bitmode is set in 9-bit or 32-bit
    if (GetBits16(&spi->SPI_CTRL_REGF, SPI_WORD) > 1)
    {
        // Write high part of dataToSend
        SetWord16(&spi->SPI_RX_TX_REG1F, (uint16_t)(dataToSend >> 16));
    }

    // Write (low part of) dataToSend
    SetWord16(&spi->SPI_RX_TX_REG0F, (uint16_t)dataToSend);

    // Polling to wait for spi transmission
    do
    {
    } while (GetBits16(&spi->SPI_CTRL_REGF, SPI_INT_BIT) == 0);

    // Clear pending flag
    SetWord16(&spi->SPI_CLEAR_INT_REGF, 0x01);

    // Read from Registers
    // Check if bitmode is set in 9-bit or 32-bit
    if (GetBits16(&spi->SPI_CTRL_REGF, SPI_WORD) > 1)
    {
        // Read high part of data from spi slave
        dataRead = GetWord16(&spi->SPI_RX_TX_REG1F) << 16;
    }

    // Read (low part of) data from spi slave
    dataRead += GetWord16(&spi->SPI_RX_TX_REG0F);
    // Return data read from spi slave
    return dataRead;
}
