.class public Lcom/sxr/sdk/ble/keepfit/service/ota/e;
.super Ljava/lang/Object;
.source "File.java"


# instance fields
.field private a:Ljava/io/InputStream;

.field private b:B

.field private c:[B

.field private d:[[[B

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->e:I

    const/16 v0, 0x14

    .line 3
    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->f:I

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->h:I

    .line 11
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->a:Ljava/io/InputStream;

    .line 12
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result p1

    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->g:I

    return-void
.end method

.method private a()B
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 12
    :goto_0
    iget v3, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->g:I

    if-ge v1, v3, :cond_0

    .line 13
    iget-object v3, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->c:[B

    aget-byte v3, v3, v1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    .line 14
    invoke-virtual {v3}, Ljava/lang/Byte;->intValue()I

    move-result v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    and-int/lit16 v1, v2, 0xff

    .line 17
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

.method public static a(Ljava/lang/String;)Lcom/sxr/sdk/ble/keepfit/service/ota/e;
    .locals 1

    .line 18
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 19
    new-instance p0, Lcom/sxr/sdk/ble/keepfit/service/ota/e;

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/ota/e;-><init>(Ljava/io/InputStream;)V

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    .line 20
    const-string v0, "jyoupro"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    .line 22
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23
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

.method public static b(Landroid/content/Context;)Ljava/util/ArrayList;
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

    .line 17
    new-instance v0, Ljava/io/File;

    const-string v1, "jyoupro"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 21
    :cond_0
    new-instance v0, Lcom/sxr/sdk/ble/keepfit/service/ota/e$a;

    invoke-direct {v0}, Lcom/sxr/sdk/ble/keepfit/service/ota/e$a;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Files"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 29
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 30
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

    .line 31
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private i()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->k:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->k()V

    :cond_0
    return-void
.end method

.method private j()V
    .locals 7

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->h:I

    .line 2
    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->c:[B

    array-length v2, v1

    iput v2, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->e:I

    .line 3
    array-length v2, v1

    iget v3, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->f:I

    div-int/2addr v2, v3

    array-length v1, v1

    rem-int/2addr v1, v3

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v2, v1

    iput v2, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->j:I

    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [I

    aput v2, v1, v0

    aput v0, v1, v4

    const-class v0, [B

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[B

    iput-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->d:[[[B

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 7
    :goto_1
    iget v2, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->j:I

    if-ge v0, v2, :cond_2

    .line 8
    iget v2, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->f:I

    add-int/2addr v2, v1

    iget-object v5, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->c:[B

    array-length v6, v5

    if-le v2, v6, :cond_1

    .line 9
    array-length v2, v5

    sub-int/2addr v2, v1

    move v3, v2

    :cond_1
    add-int v2, v1, v3

    .line 11
    invoke-static {v5, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 12
    iget-object v5, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->d:[[[B

    aget-object v5, v5, v4

    aput-object v2, v5, v0

    .line 13
    iget v2, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->f:I

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private k()V
    .locals 9

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->j:I

    .line 2
    iget v1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->h:I

    new-array v1, v1, [[[B

    iput-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->d:[[[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 5
    :goto_0
    iget v3, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->h:I

    if-ge v1, v3, :cond_4

    .line 6
    iget v3, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->e:I

    .line 7
    iget v4, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->i:I

    add-int v5, v2, v3

    .line 9
    iget-object v6, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->c:[B

    array-length v7, v6

    const/4 v8, 0x1

    if-le v5, v7, :cond_1

    .line 10
    array-length v4, v6

    rem-int v3, v4, v3

    .line 11
    iget v4, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->f:I

    div-int v5, v3, v4

    rem-int v4, v3, v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    add-int/2addr v4, v5

    .line 14
    :cond_1
    iget-object v5, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->d:[[[B

    new-array v4, v4, [[B

    aput-object v4, v5, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2
    if-ge v4, v3, :cond_3

    .line 17
    iget v6, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->f:I

    add-int v7, v4, v6

    if-le v7, v3, :cond_2

    .line 20
    rem-int v6, v3, v6

    .line 24
    :cond_2
    iget-object v7, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->c:[B

    add-int/2addr v6, v2

    invoke-static {v7, v2, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 25
    iget-object v7, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->d:[[[B

    aget-object v7, v7, v1

    aput-object v2, v7, v5

    add-int/2addr v5, v8

    .line 28
    iget v2, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->j:I

    add-int/2addr v2, v8

    iput v2, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->j:I

    .line 29
    iget v2, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->f:I

    add-int/2addr v4, v2

    move v2, v6

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 4

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->e:I

    .line 2
    iput p2, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->f:I

    .line 3
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->c:[B

    array-length v1, v0

    if-le p1, v1, :cond_0

    .line 4
    array-length p1, v0

    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->e:I

    if-le p2, p1, :cond_0

    .line 6
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->f:I

    .line 8
    :cond_0
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->e:I

    iget p2, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->f:I

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

    iput v1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->i:I

    .line 9
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

    iput p2, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->h:I

    .line 10
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->i()V

    return-void
.end method

.method public a(I)[[B
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->d:[[[B

    aget-object p1, v0, p1

    return-object p1
.end method

.method public b()V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 14
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->k:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 5
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->g:I

    add-int/2addr p1, v0

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->c:[B

    .line 6
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    .line 7
    invoke-direct {p0}, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->a()B

    move-result p1

    iput-byte p1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->b:B

    .line 8
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->c:[B

    iget v1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->g:I

    aput-byte p1, v0, v1

    return-void

    .line 10
    :cond_0
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->g:I

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->c:[B

    .line 11
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    return-void
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->i:I

    return v0
.end method

.method public d()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->b:B

    return v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->e:I

    return v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->h:I

    return v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->c:[B

    array-length v0, v0

    return v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->j:I

    return v0
.end method
