.class public final enum Lcom/google/android/gms/internal/fitness/zzkq$zzd$zza;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-fitness@@20.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/fitness/zzhb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/fitness/zzkq$zzd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/fitness/zzkq$zzd$zza;",
        ">;",
        "Lcom/google/android/gms/internal/fitness/zzhb;"
    }
.end annotation


# static fields
.field private static final enum zzako:Lcom/google/android/gms/internal/fitness/zzkq$zzd$zza;

.field private static final enum zzakp:Lcom/google/android/gms/internal/fitness/zzkq$zzd$zza;

.field private static final enum zzakq:Lcom/google/android/gms/internal/fitness/zzkq$zzd$zza;

.field private static final enum zzakr:Lcom/google/android/gms/internal/fitness/zzkq$zzd$zza;

.field private static final enum zzaks:Lcom/google/android/gms/internal/fitness/zzkq$zzd$zza;

.field private static final enum zzakt:Lcom/google/android/gms/internal/fitness/zzkq$zzd$zza;

.field private static final enum zzaku:Lcom/google/android/gms/internal/fitness/zzkq$zzd$zza;

.field private static final synthetic zzakv:[Lcom/google/android/gms/internal/fitness/zzkq$zzd$zza;

.field private static final zzjx:Lcom/google/android/gms/internal/fitness/zzhe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/fitness/zzhe<",
            "Lcom/google/android/gms/internal/fitness/zzkq$zzd$zza;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/fitness/zzkq$zzd$zza;

    const-string v1, "INTEGER"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/fitness/zzkq$zzd$zza;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/fitness/zzkq$zzd$zza;->zzako:Lcom/google/android/gms/internal/fitness/zzkq$zzd$zza;

    .line 18
    new-instance v1, Lcom/google/android/gms/internal/fitness/zzkq$zzd$zza;

    const-string v4, "FLOAT_POINT"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/google/android/gms/internal/fitness/zzkq$zzd$zza;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/fitness/zzkq$zzd$zza;->zzakp:Lcom/google/android/gms/internal/fitness/zzkq$zzd$zza;

    .line 19
    new-instance v4, Lcom/google/android/gms/internal/fitness/zzkq$zzd$zza;

    const-string v6, "STRING"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/google/android/gms/internal/fitness/zzkq$zzd$zza;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/gms/internal/fitness/zzkq$zzd$zza;->zzakq:Lcom/google/android/gms/internal/fitness/zzkq$zzd$zza;

    .line 20
    new-instance v6, Lcom/google/android/gms/internal/fitness/zzkq$zzd$zza;

    const-string v8, "MAP"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lcom/google/android/gms/internal/fitness/zzkq$zzd$zza;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/gms/internal/fitness/zzkq$zzd$zza;->zzakr:Lcom/google/android/gms/internal/fitness/zzkq$zzd$zza;

    .line 21
    new-instance v8, Lcom/google/android/gms/internal/fitness/zzkq$zzd$zza;

    const-string v10, "INTEGER_LIST"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lcom/google/android/gms/internal/fitness/zzkq$zzd$zza;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/android/gms/internal/fitness/zzkq$zzd$zza;->zzaks:Lcom/google/android/gms/internal/fitness/zzkq$zzd$zza;

    .line 22
    new-instance v10, Lcom/google/android/gms/internal/fitness/zzkq$zzd$zza;

    const-string v12, "FLOAT_LIST"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v11, v13}, Lcom/google/android/gms/internal/fitness/zzkq$zzd$zza;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/google/android/gms/internal/fitness/zzkq$zzd$zza;->zzakt:Lcom/google/android/gms/internal/fitness/zzkq$zzd$zza;

    .line 23
    new-instance v12, Lcom/google/android/gms/internal/fitness/zzkq$zzd$zza;

    const-string v14, "BLOB"

    const/4 v15, 0x7

    invoke-direct {v12, v14, v13, v15}, Lcom/google/android/gms/internal/fitness/zzkq$zzd$zza;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/google/android/gms/internal/fitness/zzkq$zzd$zza;->zzaku:Lcom/google/android/gms/internal/fitness/zzkq$zzd$zza;

    .line 24
    new-array v14, v15, [Lcom/google/android/gms/internal/fitness/zzkq$zzd$zza;

    aput-object v0, v14, v2

    aput-object v1, v14, v3

    aput-object v4, v14, v5

    aput-object v6, v14, v7

    aput-object v8, v14, v9

    aput-object v10, v14, v11

    aput-object v12, v14, v13

    .line 25
    sput-object v14, Lcom/google/android/gms/internal/fitness/zzkq$zzd$zza;->zzakv:[Lcom/google/android/gms/internal/fitness/zzkq$zzd$zza;

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/fitness/zzkx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fitness/zzkx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fitness/zzkq$zzd$zza;->zzjx:Lcom/google/android/gms/internal/fitness/zzhe;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput p3, p0, Lcom/google/android/gms/internal/fitness/zzkq$zzd$zza;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/fitness/zzkq$zzd$zza;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/fitness/zzkq$zzd$zza;->zzakv:[Lcom/google/android/gms/internal/fitness/zzkq$zzd$zza;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/fitness/zzkq$zzd$zza;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/fitness/zzkq$zzd$zza;

    return-object v0
.end method

.method public static zzec()Lcom/google/android/gms/internal/fitness/zzhd;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/fitness/zzkw;->zzakd:Lcom/google/android/gms/internal/fitness/zzhd;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget v1, p0, Lcom/google/android/gms/internal/fitness/zzkq$zzd$zza;->value:I

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fitness/zzkq$zzd$zza;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzc()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/fitness/zzkq$zzd$zza;->value:I

    return v0
.end method
