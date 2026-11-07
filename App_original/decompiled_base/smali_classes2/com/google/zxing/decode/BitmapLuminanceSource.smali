.class public Lcom/google/zxing/decode/BitmapLuminanceSource;
.super Lcom/google/zxing/LuminanceSource;
.source "BitmapLuminanceSource.java"


# instance fields
.field private bitmapPixels:[B


# direct methods
.method protected constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 9

    .line 12
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/LuminanceSource;-><init>(II)V

    .line 15
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int v0, v0, v1

    new-array v2, v0, [I

    .line 16
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int v1, v1, v3

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/google/zxing/decode/BitmapLuminanceSource;->bitmapPixels:[B

    .line 17
    invoke-virtual {p0}, Lcom/google/zxing/decode/BitmapLuminanceSource;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/zxing/decode/BitmapLuminanceSource;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/google/zxing/decode/BitmapLuminanceSource;->getHeight()I

    move-result v8

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_0

    .line 21
    iget-object v1, p0, Lcom/google/zxing/decode/BitmapLuminanceSource;->bitmapPixels:[B

    aget v3, v2, p1

    int-to-byte v3, v3

    aput-byte v3, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getMatrix()[B
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/google/zxing/decode/BitmapLuminanceSource;->bitmapPixels:[B

    return-object v0
.end method

.method public getRow(I[B)[B
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/google/zxing/decode/BitmapLuminanceSource;->bitmapPixels:[B

    invoke-virtual {p0}, Lcom/google/zxing/decode/BitmapLuminanceSource;->getWidth()I

    move-result v1

    mul-int p1, p1, v1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/zxing/decode/BitmapLuminanceSource;->getWidth()I

    move-result v2

    invoke-static {v0, p1, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2
.end method
