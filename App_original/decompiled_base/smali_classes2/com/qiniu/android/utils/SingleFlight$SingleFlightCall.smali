.class Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;
.super Ljava/lang/Object;
.source "SingleFlight.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qiniu/android/utils/SingleFlight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleFlightCall"
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
.field private exception:Ljava/lang/Exception;

.field private isComplete:Z

.field private tasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qiniu/android/utils/SingleFlight$SingleFlightTask<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 134
    iput-boolean v0, p0, Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;->isComplete:Z

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;->tasks:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/qiniu/android/utils/SingleFlight$1;)V
    .locals 0

    .line 133
    invoke-direct {p0}, Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;)Z
    .locals 0

    .line 133
    iget-boolean p0, p0, Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;->isComplete:Z

    return p0
.end method

.method static synthetic access$102(Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;Z)Z
    .locals 0

    .line 133
    iput-boolean p1, p0, Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;->isComplete:Z

    return p1
.end method

.method static synthetic access$400(Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;)Ljava/util/List;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;->tasks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;)Ljava/lang/Exception;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;->exception:Ljava/lang/Exception;

    return-object p0
.end method

.method static synthetic access$502(Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;Ljava/lang/Exception;)Ljava/lang/Exception;
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;->exception:Ljava/lang/Exception;

    return-object p1
.end method

.method static synthetic access$600(Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;)Ljava/lang/Object;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;->value:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$602(Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;->value:Ljava/lang/Object;

    return-object p1
.end method
