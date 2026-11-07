.class public Lcom/jaga/ibraceletplus/jyring/ota/File;
.super Ljava/lang/Object;
.source "File.java"


# instance fields
.field private blocks:[[[B

.field private bytes:[B

.field private bytesAvailable:I

.field private chunksPerBlockCount:I

.field private crc:B

.field private fileBlockSize:I

.field private fileChunkSize:I

.field private inputStream:Ljava/io/InputStream;

.field private numberOfBlocks:I

.field private totalChunkCount:I

.field private type:I


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/File;->fileBlockSize:I

    const/16 v0, 0x14

    .line 25
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/File;->fileChunkSize:I

    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/File;->numberOfBlocks:I

    .line 33
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/File;->inputStream:Ljava/io/InputStream;

    .line 34
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/File;->bytesAvailable:I

    return-void
.end method

.method private calculateCrc()B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 162
    :goto_0
    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/ota/File;->bytesAvailable:I

    if-ge v1, v3, :cond_0

    .line 163
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/ota/File;->bytes:[B

    aget-byte v3, v3, v1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    .line 164
    invoke-virtual {v3}, Ljava/lang/Byte;->intValue()I

    move-result v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    and-int/lit16 v1, v2, 0xff

    .line 167
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v0

    const-string v0, "Fimware CRC: %#04x"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "crc"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static createFileDirectories(Landroid/content/Context;)Z
    .locals 1

    .line 202
    const-string v0, "jyoupro"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    .line 204
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static getByFileName(Ljava/lang/String;)Lcom/jaga/ibraceletplus/jyring/ota/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 178
    new-instance p0, Lcom/jaga/ibraceletplus/jyring/ota/File;

    invoke-direct {p0, v0}, Lcom/jaga/ibraceletplus/jyring/ota/File;-><init>(Ljava/io/InputStream;)V

    return-object p0
.end method

.method private initBlocks()V
    .locals 2

    .line 126
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/File;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/ota/File;->initBlocksSuota()V

    :cond_0
    return-void
.end method

.method private initBlocksSpota()V
    .locals 7

    const/4 v0, 0x1

    .line 108
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/File;->numberOfBlocks:I

    .line 109
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/File;->bytes:[B

    array-length v2, v1

    iput v2, p0, Lcom/jaga/ibraceletplus/jyring/ota/File;->fileBlockSize:I

    .line 110
    array-length v2, v1

    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/ota/File;->fileChunkSize:I

    div-int/2addr v2, v3

    array-length v1, v1

    rem-int/2addr v1, v3

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v2, v1

    iput v2, p0, Lcom/jaga/ibraceletplus/jyring/ota/File;->totalChunkCount:I

    const/4 v1, 0x2

    .line 111
    new-array v1, v1, [I

    aput v2, v1, v0

    aput v0, v1, v3

    const-class v0, [B

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[B

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/File;->blocks:[[[B

    .line 113
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/File;->fileChunkSize:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 114
    :goto_1
    iget v4, p0, Lcom/jaga/ibraceletplus/jyring/ota/File;->totalChunkCount:I

    if-ge v1, v4, :cond_2

    .line 115
    iget v4, p0, Lcom/jaga/ibraceletplus/jyring/ota/File;->fileChunkSize:I

    add-int/2addr v4, v2

    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/ota/File;->bytes:[B

    array-length v6, v5

    if-le v4, v6, :cond_1

    .line 116
    array-length v0, v5

    sub-int/2addr v0, v2

    :cond_1
    add-int v4, v2, v0

    .line 118
    invoke-static {v5, v2, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .line 119
    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/ota/File;->blocks:[[[B

    aget-object v5, v5, v3

    aput-object v4, v5, v1

    .line 120
    iget v4, p0, Lcom/jaga/ibraceletplus/jyring/ota/File;->fileChunkSize:I

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private initBlocksSuota()V
    .locals 9

    const/4 v0, 0x0

    .line 74
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/File;->totalChunkCount:I

    .line 75
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/File;->numberOfBlocks:I

    new-array v1, v1, [[[B

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/File;->blocks:[[[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 78
    :goto_0
    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/ota/File;->numberOfBlocks:I

    if-ge v1, v3, :cond_4

    .line 79
    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/ota/File;->fileBlockSize:I

    .line 80
    iget v4, p0, Lcom/jaga/ibraceletplus/jyring/ota/File;->chunksPerBlockCount:I

    add-int v5, v2, v3

    .line 82
    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/ota/File;->bytes:[B

    array-length v7, v6

    const/4 v8, 0x1

    if-le v5, v7, :cond_1

    .line 83
    array-length v4, v6

    rem-int v3, v4, v3

    .line 84
    iget v4, p0, Lcom/jaga/ibraceletplus/jyring/ota/File;->fileChunkSize:I

    div-int v5, v3, v4

    rem-int v4, v3, v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    add-int/2addr v4, v5

    .line 87
    :cond_1
    iget-object v5, p0, Lcom/jaga/ibraceletplus/jyring/ota/File;->blocks:[[[B

    new-array v4, v4, [[B

    aput-object v4, v5, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2
    if-ge v4, v3, :cond_3

    .line 90
    iget v6, p0, Lcom/jaga/ibraceletplus/jyring/ota/File;->fileChunkSize:I

    add-int v7, v4, v6

    if-le v7, v3, :cond_2

    .line 93
    rem-int v6, v3, v6

    .line 97
    :cond_2
    iget-object v7, p0, Lcom/jaga/ibraceletplus/jyring/ota/File;->bytes:[B

    add-int/2addr v6, v2

    invoke-static {v7, v2, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 98
    iget-object v7, p0, Lcom/jaga/ibraceletplus/jyring/ota/File;->blocks:[[[B

    aget-object v7, v7, v1

    aput-object v2, v7, v5

    add-int/2addr v5, v8

    .line 101
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/ota/File;->totalChunkCount:I

    add-int/2addr v2, v8

    iput v2, p0, Lcom/jaga/ibraceletplus/jyring/ota/File;->totalChunkCount:I

    .line 88
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/ota/File;->fileChunkSize:I

    add-int/2addr v4, v2

    move v2, v6

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static list(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 182
    new-instance v0, Ljava/io/File;

    const-string v1, "jyoupro"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 186
    :cond_0
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/ota/File$1;

    invoke-direct {v0}, Lcom/jaga/ibraceletplus/jyring/ota/File$1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Files"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 194
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 195
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FileName: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, p0, v2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/File;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 141
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 143
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public getBlock(I)[[B
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/File;->blocks:[[[B

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getChunksPerBlockCount()I
    .locals 1

    .line 153
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/File;->chunksPerBlockCount:I

    return v0
.end method

.method public getCrc()B
    .locals 1

    .line 172
    iget-byte v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/File;->crc:B

    return v0
.end method

.method public getFileBlockSize()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/File;->fileBlockSize:I

    return v0
.end method

.method public getNumberOfBlocks()I
    .locals 1

    .line 149
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/File;->numberOfBlocks:I

    return v0
.end method

.method public getNumberOfBytes()I
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/File;->bytes:[B

    array-length v0, v0

    return v0
.end method

.method public getTotalChunkCount()I
    .locals 1

    .line 157
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/File;->totalChunkCount:I

    return v0
.end method

.method public setFileBlockSize(II)V
    .locals 4

    .line 61
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/File;->fileBlockSize:I

    .line 62
    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/ota/File;->fileChunkSize:I

    .line 63
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/File;->bytes:[B

    array-length v1, v0

    if-le p1, v1, :cond_0

    .line 64
    array-length p1, v0

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/File;->fileBlockSize:I

    if-le p2, p1, :cond_0

    .line 66
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/File;->fileChunkSize:I

    .line 68
    :cond_0
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/File;->fileBlockSize:I

    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/ota/File;->fileChunkSize:I

    div-int v1, p1, p2

    rem-int p2, p1, p2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    add-int/2addr v1, p2

    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/File;->chunksPerBlockCount:I

    .line 69
    array-length p2, v0

    div-int/2addr p2, p1

    array-length v0, v0

    rem-int/2addr v0, p1

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    add-int/2addr p2, v2

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/ota/File;->numberOfBlocks:I

    .line 70
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/ota/File;->initBlocks()V

    return-void
.end method

.method public setType(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/File;->type:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 42
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/File;->bytesAvailable:I

    add-int/2addr p1, v0

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/File;->bytes:[B

    .line 43
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/File;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    .line 44
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/ota/File;->calculateCrc()B

    move-result p1

    iput-byte p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/File;->crc:B

    .line 45
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/File;->bytes:[B

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/File;->bytesAvailable:I

    aput-byte p1, v0, v1

    return-void

    .line 47
    :cond_0
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/File;->bytesAvailable:I

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/File;->bytes:[B

    .line 48
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/File;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    return-void
.end method
