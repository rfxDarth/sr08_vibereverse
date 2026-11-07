.class public Lcom/jaga/ibraceletplus/jyring/util/EcgUtil;
.super Ljava/lang/Object;
.source "EcgUtil.java"


# static fields
.field private static iaEcgHeart:[I

.field public static iaHeart:[I

.field public static iaHeartHint:[I

.field public static iaHrv:[I

.field public static iaHrvHint:[I

.field private static iaSuggestF:[I

.field private static iaSuggestL:[I

.field private static iaSuggestP:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x6

    .line 27
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/jaga/ibraceletplus/jyring/util/EcgUtil;->iaEcgHeart:[I

    const v1, 0x7f130264

    const v2, 0x7f130265

    const v3, 0x7f130263

    .line 43
    filled-new-array {v3, v1, v2}, [I

    move-result-object v1

    sput-object v1, Lcom/jaga/ibraceletplus/jyring/util/EcgUtil;->iaSuggestP:[I

    const v1, 0x7f13025e

    const v2, 0x7f13025f

    const v3, 0x7f13025d

    .line 44
    filled-new-array {v3, v1, v2}, [I

    move-result-object v1

    sput-object v1, Lcom/jaga/ibraceletplus/jyring/util/EcgUtil;->iaSuggestF:[I

    const v1, 0x7f130261

    const v2, 0x7f130262

    const v3, 0x7f130260

    .line 45
    filled-new-array {v3, v1, v2}, [I

    move-result-object v1

    sput-object v1, Lcom/jaga/ibraceletplus/jyring/util/EcgUtil;->iaSuggestL:[I

    .line 59
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/jaga/ibraceletplus/jyring/util/EcgUtil;->iaHrv:[I

    .line 61
    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lcom/jaga/ibraceletplus/jyring/util/EcgUtil;->iaHrvHint:[I

    .line 64
    new-array v1, v0, [I

    fill-array-data v1, :array_3

    sput-object v1, Lcom/jaga/ibraceletplus/jyring/util/EcgUtil;->iaHeart:[I

    .line 66
    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/jaga/ibraceletplus/jyring/util/EcgUtil;->iaHeartHint:[I

    return-void

    :array_0
    .array-data 4
        0x7f130238
        0x7f13023a
        0x7f13023c
        0x7f13023e
        0x7f130240
        0x7f130242
    .end array-data

    :array_1
    .array-data 4
        0x7f130249
        0x7f13024b
        0x7f13024d
        0x7f13024f
        0x7f130251
        0x7f130253
    .end array-data

    :array_2
    .array-data 4
        0x7f13024a
        0x7f13024c
        0x7f13024e
        0x7f130250
        0x7f130252
        0x7f130254
    .end array-data

    :array_3
    .array-data 4
        0x7f130238
        0x7f13023a
        0x7f13023c
        0x7f13023e
        0x7f130240
        0x7f130242
    .end array-data

    :array_4
    .array-data 4
        0x7f130239
        0x7f13023b
        0x7f13023d
        0x7f13023f
        0x7f130241
        0x7f130243
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEcgScore(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 30
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->ECG_SPLIT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 32
    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 33
    aget-object v2, p1, v1

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/jaga/ibraceletplus/jyring/util/EcgUtil;->iaEcgHeart:[I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f130244

    .line 38
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method public static getSuggest(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 48
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/jaga/ibraceletplus/jyring/util/EcgUtil;->iaSuggestP:[I

    sub-int/2addr v1, v0

    aget v1, v4, v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    .line 51
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 52
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/jaga/ibraceletplus/jyring/util/EcgUtil;->iaSuggestF:[I

    sub-int/2addr v4, v0

    aget v2, v2, v4

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 53
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/jaga/ibraceletplus/jyring/util/EcgUtil;->iaSuggestL:[I

    sub-int/2addr p1, v0

    aget p1, v1, p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 56
    :cond_0
    const-string p0, ""

    return-object p0
.end method
