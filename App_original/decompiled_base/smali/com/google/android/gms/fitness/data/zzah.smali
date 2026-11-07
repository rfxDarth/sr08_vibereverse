.class public final Lcom/google/android/gms/fitness/data/zzah;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fitness@@20.0.0"


# static fields
.field private static final zzoi:D

.field private static final zzoj:D

.field private static final zzok:D

.field private static final zzol:D

.field public static final zzom:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzop:Lcom/google/android/gms/fitness/data/zzah;


# instance fields
.field private final zzon:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/fitness/data/zzaj;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzoo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/fitness/data/zzaj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 39
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    long-to-double v3, v3

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    div-double/2addr v5, v3

    sput-wide v5, Lcom/google/android/gms/fitness/data/zzah;->zzoi:D

    .line 40
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    long-to-double v3, v3

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v5, v3

    sput-wide v5, Lcom/google/android/gms/fitness/data/zzah;->zzoj:D

    .line 41
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    long-to-double v3, v3

    const-wide v5, 0x409f400000000000L    # 2000.0

    div-double/2addr v5, v3

    sput-wide v5, Lcom/google/android/gms/fitness/data/zzah;->zzok:D

    .line 42
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v0

    sput-wide v2, Lcom/google/android/gms/fitness/data/zzah;->zzol:D

    .line 43
    new-instance v0, Ljava/util/HashSet;

    const-string v6, "resistance"

    const-string v7, "resistance_type"

    const-string v1, "altitude"

    const-string v2, "duration"

    const-string v3, "food_item"

    const-string v4, "meal_type"

    const-string v5, "repetitions"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 45
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/zzah;->zzom:Ljava/util/Set;

    .line 46
    new-instance v0, Lcom/google/android/gms/fitness/data/zzah;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/zzah;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/zzah;->zzop:Lcom/google/android/gms/fitness/data/zzah;

    return-void
.end method

.method private constructor <init>()V
    .locals 14

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    new-instance v1, Lcom/google/android/gms/fitness/data/zzaj;

    const-wide v4, 0x4056800000000000L    # 90.0

    const/4 v6, 0x0

    const-wide v2, -0x3fa9800000000000L    # -90.0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/fitness/data/zzaj;-><init>(DDLcom/google/android/gms/fitness/data/zzak;)V

    const-string v2, "latitude"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v3, Lcom/google/android/gms/fitness/data/zzaj;

    const-wide v6, 0x4066800000000000L    # 180.0

    const/4 v8, 0x0

    const-wide v4, -0x3f99800000000000L    # -180.0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/fitness/data/zzaj;-><init>(DDLcom/google/android/gms/fitness/data/zzak;)V

    const-string v1, "longitude"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v4, Lcom/google/android/gms/fitness/data/zzaj;

    const-wide v7, 0x40c3880000000000L    # 10000.0

    const/4 v9, 0x0

    const-wide/16 v5, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/fitness/data/zzaj;-><init>(DDLcom/google/android/gms/fitness/data/zzak;)V

    const-string v1, "accuracy"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v5, Lcom/google/android/gms/fitness/data/zzaj;

    const-wide v8, 0x408f400000000000L    # 1000.0

    const/4 v10, 0x0

    const-wide/16 v6, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/fitness/data/zzaj;-><init>(DDLcom/google/android/gms/fitness/data/zzak;)V

    const-string v1, "bpm"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v6, Lcom/google/android/gms/fitness/data/zzaj;

    const-wide v9, 0x40f86a0000000000L    # 100000.0

    const/4 v11, 0x0

    const-wide v7, -0x3f07960000000000L    # -100000.0

    invoke-direct/range {v6 .. v11}, Lcom/google/android/gms/fitness/data/zzaj;-><init>(DDLcom/google/android/gms/fitness/data/zzak;)V

    const-string v1, "altitude"

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v7, Lcom/google/android/gms/fitness/data/zzaj;

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    const/4 v12, 0x0

    const-wide/16 v8, 0x0

    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/fitness/data/zzaj;-><init>(DDLcom/google/android/gms/fitness/data/zzak;)V

    const-string v1, "percentage"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v8, Lcom/google/android/gms/fitness/data/zzaj;

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    const/4 v13, 0x0

    const-wide/16 v9, 0x0

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/fitness/data/zzaj;-><init>(DDLcom/google/android/gms/fitness/data/zzak;)V

    const-string v1, "confidence"

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v2, Lcom/google/android/gms/fitness/data/zzaj;

    const-wide/high16 v5, 0x43e0000000000000L    # 9.223372036854776E18

    const/4 v7, 0x0

    const-wide/16 v3, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/fitness/data/zzaj;-><init>(DDLcom/google/android/gms/fitness/data/zzak;)V

    const-string v1, "duration"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v3, Lcom/google/android/gms/fitness/data/zzaj;

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    const/4 v8, 0x0

    const-wide/16 v4, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/fitness/data/zzaj;-><init>(DDLcom/google/android/gms/fitness/data/zzak;)V

    const-string v1, "height"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v4, Lcom/google/android/gms/fitness/data/zzaj;

    const-wide v7, 0x408f400000000000L    # 1000.0

    const/4 v9, 0x0

    const-wide/16 v5, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/fitness/data/zzaj;-><init>(DDLcom/google/android/gms/fitness/data/zzak;)V

    const-string v1, "weight"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance v5, Lcom/google/android/gms/fitness/data/zzaj;

    const-wide v8, 0x40c57c0000000000L    # 11000.0

    const/4 v10, 0x0

    const-wide/16 v6, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/fitness/data/zzaj;-><init>(DDLcom/google/android/gms/fitness/data/zzak;)V

    const-string v1, "speed"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/zzah;->zzoo:Ljava/util/Map;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    new-instance v1, Lcom/google/android/gms/fitness/data/zzaj;

    sget-wide v4, Lcom/google/android/gms/fitness/data/zzah;->zzoi:D

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/fitness/data/zzaj;-><init>(DDLcom/google/android/gms/fitness/data/zzak;)V

    .line 17
    const-string v2, "steps"

    invoke-static {v2, v1}, Lcom/google/android/gms/fitness/data/zzah;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 18
    const-string v2, "com.google.step_count.delta"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    new-instance v3, Lcom/google/android/gms/fitness/data/zzaj;

    sget-wide v6, Lcom/google/android/gms/fitness/data/zzah;->zzoj:D

    const/4 v8, 0x0

    const-wide/16 v4, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/fitness/data/zzaj;-><init>(DDLcom/google/android/gms/fitness/data/zzak;)V

    .line 20
    const-string v1, "calories"

    invoke-static {v1, v3}, Lcom/google/android/gms/fitness/data/zzah;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    .line 21
    const-string v3, "com.google.calories.consumed"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    new-instance v4, Lcom/google/android/gms/fitness/data/zzaj;

    sget-wide v7, Lcom/google/android/gms/fitness/data/zzah;->zzok:D

    const/4 v9, 0x0

    const-wide/16 v5, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/fitness/data/zzaj;-><init>(DDLcom/google/android/gms/fitness/data/zzak;)V

    .line 23
    invoke-static {v1, v4}, Lcom/google/android/gms/fitness/data/zzah;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 24
    const-string v2, "com.google.calories.expended"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    new-instance v3, Lcom/google/android/gms/fitness/data/zzaj;

    sget-wide v6, Lcom/google/android/gms/fitness/data/zzah;->zzol:D

    const/4 v8, 0x0

    const-wide/16 v4, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/fitness/data/zzaj;-><init>(DDLcom/google/android/gms/fitness/data/zzak;)V

    .line 26
    const-string v1, "distance"

    invoke-static {v1, v3}, Lcom/google/android/gms/fitness/data/zzah;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 27
    const-string v2, "com.google.distance.delta"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/zzah;->zzon:Ljava/util/Map;

    return-void
.end method

.method private static zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 31
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static zzt()Lcom/google/android/gms/fitness/data/zzah;
    .locals 1

    .line 38
    sget-object v0, Lcom/google/android/gms/fitness/data/zzah;->zzop:Lcom/google/android/gms/fitness/data/zzah;

    return-object v0
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/fitness/data/zzaj;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/zzah;->zzon:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 36
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/fitness/data/zzaj;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final zzi(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/zzaj;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/zzah;->zzoo:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/fitness/data/zzaj;

    return-object p1
.end method
