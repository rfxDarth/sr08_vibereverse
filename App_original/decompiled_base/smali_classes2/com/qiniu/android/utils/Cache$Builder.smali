.class public Lcom/qiniu/android/utils/Cache$Builder;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qiniu/android/utils/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private flushCount:I

.field private final objectClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 222
    iput v0, p0, Lcom/qiniu/android/utils/Cache$Builder;->flushCount:I

    .line 225
    const-string/jumbo v0, "v1.0.0"

    iput-object v0, p0, Lcom/qiniu/android/utils/Cache$Builder;->version:Ljava/lang/String;

    .line 236
    iput-object p1, p0, Lcom/qiniu/android/utils/Cache$Builder;->objectClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public builder()Lcom/qiniu/android/utils/Cache;
    .locals 5

    .line 267
    new-instance v0, Lcom/qiniu/android/utils/Cache;

    iget-object v1, p0, Lcom/qiniu/android/utils/Cache$Builder;->objectClass:Ljava/lang/Class;

    iget v2, p0, Lcom/qiniu/android/utils/Cache$Builder;->flushCount:I

    iget-object v3, p0, Lcom/qiniu/android/utils/Cache$Builder;->version:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/qiniu/android/utils/Cache;-><init>(Ljava/lang/Class;ILjava/lang/String;Lcom/qiniu/android/utils/Cache$1;)V

    return-object v0
.end method

.method public setFlushCount(I)Lcom/qiniu/android/utils/Cache$Builder;
    .locals 0

    .line 246
    iput p1, p0, Lcom/qiniu/android/utils/Cache$Builder;->flushCount:I

    return-object p0
.end method

.method public setVersion(Ljava/lang/String;)Lcom/qiniu/android/utils/Cache$Builder;
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/qiniu/android/utils/Cache$Builder;->version:Ljava/lang/String;

    return-object p0
.end method
