.class Lcom/qiniu/android/utils/SingleFlight$SingleFlightTask;
.super Ljava/lang/Object;
.source "SingleFlight.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qiniu/android/utils/SingleFlight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleFlightTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private completeHandler:Lcom/qiniu/android/utils/SingleFlight$CompleteHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/qiniu/android/utils/SingleFlight$CompleteHandler<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qiniu/android/utils/SingleFlight$1;)V
    .locals 0

    .line 129
    invoke-direct {p0}, Lcom/qiniu/android/utils/SingleFlight$SingleFlightTask;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lcom/qiniu/android/utils/SingleFlight$SingleFlightTask;)Lcom/qiniu/android/utils/SingleFlight$CompleteHandler;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/qiniu/android/utils/SingleFlight$SingleFlightTask;->completeHandler:Lcom/qiniu/android/utils/SingleFlight$CompleteHandler;

    return-object p0
.end method

.method static synthetic access$302(Lcom/qiniu/android/utils/SingleFlight$SingleFlightTask;Lcom/qiniu/android/utils/SingleFlight$CompleteHandler;)Lcom/qiniu/android/utils/SingleFlight$CompleteHandler;
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/qiniu/android/utils/SingleFlight$SingleFlightTask;->completeHandler:Lcom/qiniu/android/utils/SingleFlight$CompleteHandler;

    return-object p1
.end method
