.class final synthetic Lcom/google/android/gms/fitness/zzh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fitness@@20.0.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter;


# static fields
.field static final zzjz:Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/zzh;->zzjz:Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final convert(Lcom/google/android/gms/common/api/Result;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/android/gms/fitness/result/GoalsResult;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/result/GoalsResult;->getGoals()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
