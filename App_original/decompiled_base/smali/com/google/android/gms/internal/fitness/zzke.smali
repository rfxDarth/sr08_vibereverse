.class final Lcom/google/android/gms/internal/fitness/zzke;
.super Lcom/google/android/gms/internal/fitness/zzjz;
.source "com.google.android.gms:play-services-fitness@@20.0.0"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/fitness/zzjz;-><init>()V

    return-void
.end method

.method private static zza([BIJI)I
    .locals 2

    if-eqz p4, :cond_2

    const/4 v0, 0x1

    if-eq p4, v0, :cond_1

    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    .line 88
    invoke-static {p0, p2, p3}, Lcom/google/android/gms/internal/fitness/zzjy;->zza([BJ)B

    move-result p4

    const-wide/16 v0, 0x1

    add-long/2addr p2, v0

    invoke-static {p0, p2, p3}, Lcom/google/android/gms/internal/fitness/zzjy;->zza([BJ)B

    move-result p0

    .line 89
    invoke-static {p1, p4, p0}, Lcom/google/android/gms/internal/fitness/zzka;->zze(III)I

    move-result p0

    return p0

    .line 90
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 86
    :cond_1
    invoke-static {p0, p2, p3}, Lcom/google/android/gms/internal/fitness/zzjy;->zza([BJ)B

    move-result p0

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/fitness/zzka;->zzr(II)I

    move-result p0

    return p0

    .line 85
    :cond_2
    invoke-static {p1}, Lcom/google/android/gms/internal/fitness/zzka;->zzao(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method final zza(Ljava/lang/CharSequence;[BII)I
    .locals 23

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    int-to-long v4, v2

    int-to-long v6, v3

    add-long/2addr v6, v4

    .line 48
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    .line 49
    const-string v9, " at index "

    const-string v10, "Failed writing "

    if-gt v8, v3, :cond_c

    array-length v11, v1

    sub-int/2addr v11, v3

    if-lt v11, v2, :cond_c

    const/4 v2, 0x0

    :goto_0
    const-wide/16 v11, 0x1

    const/16 v3, 0x80

    if-ge v2, v8, :cond_0

    .line 53
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ge v13, v3, :cond_0

    add-long/2addr v11, v4

    int-to-byte v3, v13

    .line 54
    invoke-static {v1, v4, v5, v3}, Lcom/google/android/gms/internal/fitness/zzjy;->zza([BJB)V

    add-int/lit8 v2, v2, 0x1

    move-wide v4, v11

    goto :goto_0

    :cond_0
    if-ne v2, v8, :cond_1

    long-to-int v0, v4

    return v0

    :cond_1
    :goto_1
    if-ge v2, v8, :cond_b

    .line 59
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ge v13, v3, :cond_2

    cmp-long v14, v4, v6

    if-gez v14, :cond_2

    add-long v14, v4, v11

    int-to-byte v13, v13

    .line 61
    invoke-static {v1, v4, v5, v13}, Lcom/google/android/gms/internal/fitness/zzjy;->zza([BJB)V

    move-wide/from16 v19, v6

    move-wide/from16 p3, v11

    move-wide v4, v14

    goto/16 :goto_2

    :cond_2
    const/16 v14, 0x800

    const-wide/16 v15, 0x2

    if-ge v13, v14, :cond_3

    sub-long v17, v6, v15

    cmp-long v14, v4, v17

    if-gtz v14, :cond_3

    move-wide/from16 p3, v11

    add-long v11, v4, p3

    ushr-int/lit8 v14, v13, 0x6

    or-int/lit16 v14, v14, 0x3c0

    int-to-byte v14, v14

    .line 63
    invoke-static {v1, v4, v5, v14}, Lcom/google/android/gms/internal/fitness/zzjy;->zza([BJB)V

    add-long/2addr v4, v15

    and-int/lit8 v13, v13, 0x3f

    or-int/2addr v13, v3

    int-to-byte v13, v13

    .line 64
    invoke-static {v1, v11, v12, v13}, Lcom/google/android/gms/internal/fitness/zzjy;->zza([BJB)V

    move-wide/from16 v19, v6

    goto/16 :goto_2

    :cond_3
    move-wide/from16 p3, v11

    const v11, 0xdfff

    const v12, 0xd800

    const-wide/16 v17, 0x3

    if-lt v13, v12, :cond_4

    if-ge v11, v13, :cond_5

    :cond_4
    sub-long v19, v6, v17

    cmp-long v14, v4, v19

    if-gtz v14, :cond_5

    add-long v11, v4, p3

    ushr-int/lit8 v14, v13, 0xc

    or-int/lit16 v14, v14, 0x1e0

    int-to-byte v14, v14

    .line 66
    invoke-static {v1, v4, v5, v14}, Lcom/google/android/gms/internal/fitness/zzjy;->zza([BJB)V

    move-wide/from16 v19, v6

    add-long v6, v4, v15

    ushr-int/lit8 v14, v13, 0x6

    and-int/lit8 v14, v14, 0x3f

    or-int/2addr v14, v3

    int-to-byte v14, v14

    .line 67
    invoke-static {v1, v11, v12, v14}, Lcom/google/android/gms/internal/fitness/zzjy;->zza([BJB)V

    add-long v4, v4, v17

    and-int/lit8 v11, v13, 0x3f

    or-int/2addr v11, v3

    int-to-byte v11, v11

    .line 68
    invoke-static {v1, v6, v7, v11}, Lcom/google/android/gms/internal/fitness/zzjy;->zza([BJB)V

    goto :goto_2

    :cond_5
    move-wide/from16 v19, v6

    const-wide/16 v6, 0x4

    sub-long v21, v19, v6

    cmp-long v14, v4, v21

    if-gtz v14, :cond_8

    add-int/lit8 v11, v2, 0x1

    if-eq v11, v8, :cond_7

    .line 70
    invoke-interface {v0, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v13, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 72
    invoke-static {v13, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    add-long v12, v4, p3

    ushr-int/lit8 v14, v2, 0x12

    or-int/lit16 v14, v14, 0xf0

    int-to-byte v14, v14

    .line 73
    invoke-static {v1, v4, v5, v14}, Lcom/google/android/gms/internal/fitness/zzjy;->zza([BJB)V

    move-wide/from16 v21, v6

    add-long v6, v4, v15

    ushr-int/lit8 v14, v2, 0xc

    and-int/lit8 v14, v14, 0x3f

    or-int/2addr v14, v3

    int-to-byte v14, v14

    .line 74
    invoke-static {v1, v12, v13, v14}, Lcom/google/android/gms/internal/fitness/zzjy;->zza([BJB)V

    add-long v12, v4, v17

    ushr-int/lit8 v14, v2, 0x6

    and-int/lit8 v14, v14, 0x3f

    or-int/2addr v14, v3

    int-to-byte v14, v14

    .line 75
    invoke-static {v1, v6, v7, v14}, Lcom/google/android/gms/internal/fitness/zzjy;->zza([BJB)V

    add-long v4, v4, v21

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .line 76
    invoke-static {v1, v12, v13, v2}, Lcom/google/android/gms/internal/fitness/zzjy;->zza([BJB)V

    move v2, v11

    :goto_2
    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v11, p3

    move-wide/from16 v6, v19

    goto/16 :goto_1

    :cond_6
    move v2, v11

    .line 71
    :cond_7
    new-instance v0, Lcom/google/android/gms/internal/fitness/zzkb;

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v0, v2, v8}, Lcom/google/android/gms/internal/fitness/zzkb;-><init>(II)V

    throw v0

    :cond_8
    if-gt v12, v13, :cond_a

    if-gt v13, v11, :cond_a

    add-int/lit8 v1, v2, 0x1

    if-eq v1, v8, :cond_9

    .line 79
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v0

    if-nez v0, :cond_a

    .line 80
    :cond_9
    new-instance v0, Lcom/google/android/gms/internal/fitness/zzkb;

    invoke-direct {v0, v2, v8}, Lcom/google/android/gms/internal/fitness/zzkb;-><init>(II)V

    throw v0

    .line 81
    :cond_a
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    long-to-int v0, v4

    return v0

    .line 50
    :cond_c
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    add-int/lit8 v8, v8, -0x1

    .line 51
    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x25

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method final zzb(I[BII)I
    .locals 17

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    or-int v3, v1, v2

    .line 2
    array-length v4, v0

    sub-int/2addr v4, v2

    or-int/2addr v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-ltz v3, :cond_13

    int-to-long v7, v1

    int-to-long v1, v2

    sub-long/2addr v1, v7

    long-to-int v2, v1

    const/16 v1, 0x10

    const-wide/16 v9, 0x1

    if-ge v2, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    move-wide v11, v7

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    add-long v13, v11, v9

    .line 12
    invoke-static {v0, v11, v12}, Lcom/google/android/gms/internal/fitness/zzjy;->zza([BJ)B

    move-result v3

    if-gez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    move-wide v11, v13

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_1
    sub-int/2addr v2, v1

    int-to-long v11, v1

    add-long/2addr v7, v11

    :goto_2
    const/4 v1, 0x0

    :goto_3
    if-lez v2, :cond_4

    add-long v11, v7, v9

    .line 20
    invoke-static {v0, v7, v8}, Lcom/google/android/gms/internal/fitness/zzjy;->zza([BJ)B

    move-result v1

    if-ltz v1, :cond_3

    add-int/lit8 v2, v2, -0x1

    move-wide v7, v11

    goto :goto_3

    :cond_3
    move-wide v7, v11

    :cond_4
    if-nez v2, :cond_5

    return v6

    :cond_5
    add-int/lit8 v3, v2, -0x1

    const/16 v11, -0x20

    const/4 v12, -0x1

    const/16 v13, -0x41

    if-ge v1, v11, :cond_9

    if-nez v3, :cond_6

    return v1

    :cond_6
    add-int/lit8 v2, v2, -0x2

    const/16 v3, -0x3e

    if-lt v1, v3, :cond_8

    add-long v14, v7, v9

    .line 28
    invoke-static {v0, v7, v8}, Lcom/google/android/gms/internal/fitness/zzjy;->zza([BJ)B

    move-result v1

    if-le v1, v13, :cond_7

    goto :goto_4

    :cond_7
    move-wide/from16 p3, v9

    move-wide v7, v14

    const/16 p1, 0x2

    goto :goto_6

    :cond_8
    :goto_4
    return v12

    :cond_9
    const/16 v14, -0x10

    const-wide/16 v15, 0x2

    if-ge v1, v14, :cond_f

    if-ge v3, v4, :cond_a

    .line 32
    invoke-static {v0, v1, v7, v8, v3}, Lcom/google/android/gms/internal/fitness/zzke;->zza([BIJI)I

    move-result v0

    return v0

    :cond_a
    add-int/lit8 v2, v2, -0x3

    move-wide/from16 p3, v9

    add-long v9, v7, p3

    .line 34
    invoke-static {v0, v7, v8}, Lcom/google/android/gms/internal/fitness/zzjy;->zza([BJ)B

    move-result v3

    if-gt v3, v13, :cond_e

    const/16 v14, -0x60

    if-ne v1, v11, :cond_b

    if-lt v3, v14, :cond_e

    :cond_b
    const/16 v11, -0x13

    if-ne v1, v11, :cond_c

    if-ge v3, v14, :cond_e

    :cond_c
    add-long/2addr v7, v15

    .line 35
    invoke-static {v0, v9, v10}, Lcom/google/android/gms/internal/fitness/zzjy;->zza([BJ)B

    move-result v1

    if-le v1, v13, :cond_d

    goto :goto_5

    :cond_d
    move-wide/from16 v9, p3

    goto :goto_2

    :cond_e
    :goto_5
    return v12

    :cond_f
    move-wide/from16 p3, v9

    if-ge v3, v5, :cond_10

    .line 39
    invoke-static {v0, v1, v7, v8, v3}, Lcom/google/android/gms/internal/fitness/zzke;->zza([BIJI)I

    move-result v0

    return v0

    :cond_10
    add-int/lit8 v2, v2, -0x4

    add-long v9, v7, p3

    .line 41
    invoke-static {v0, v7, v8}, Lcom/google/android/gms/internal/fitness/zzjy;->zza([BJ)B

    move-result v3

    if-gt v3, v13, :cond_12

    shl-int/lit8 v1, v1, 0x1c

    add-int/lit8 v3, v3, 0x70

    add-int/2addr v1, v3

    shr-int/lit8 v1, v1, 0x1e

    if-nez v1, :cond_12

    const/16 p1, 0x2

    add-long v4, v7, v15

    .line 42
    invoke-static {v0, v9, v10}, Lcom/google/android/gms/internal/fitness/zzjy;->zza([BJ)B

    move-result v1

    if-gt v1, v13, :cond_12

    const-wide/16 v9, 0x3

    add-long/2addr v7, v9

    .line 43
    invoke-static {v0, v4, v5}, Lcom/google/android/gms/internal/fitness/zzjy;->zza([BJ)B

    move-result v1

    if-le v1, v13, :cond_11

    goto :goto_7

    :cond_11
    :goto_6
    move-wide/from16 v9, p3

    const/4 v4, 0x2

    const/4 v5, 0x3

    goto/16 :goto_2

    :cond_12
    :goto_7
    return v12

    :cond_13
    const/16 p1, 0x2

    .line 3
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    array-length v0, v0

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v6

    const/4 v0, 0x1

    aput-object v1, v3, v0

    aput-object v2, v3, p1

    const-string v0, "Array length=%d, index=%d, limit=%d"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
