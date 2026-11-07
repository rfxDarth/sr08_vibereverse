.class Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;
.super Ljava/lang/Object;
.source "ConnectChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qiniu/android/http/connectCheck/ConnectChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckStatus"
.end annotation


# instance fields
.field private completeCount:I

.field private isCompleted:Z

.field private totalCount:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 179
    iput v0, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;->totalCount:I

    .line 180
    iput v0, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;->completeCount:I

    .line 181
    iput-boolean v0, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;->isCompleted:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/qiniu/android/http/connectCheck/ConnectChecker$1;)V
    .locals 0

    .line 178
    invoke-direct {p0}, Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;)I
    .locals 0

    .line 178
    iget p0, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;->totalCount:I

    return p0
.end method

.method static synthetic access$402(Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;I)I
    .locals 0

    .line 178
    iput p1, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;->totalCount:I

    return p1
.end method

.method static synthetic access$500(Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;)I
    .locals 0

    .line 178
    iget p0, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;->completeCount:I

    return p0
.end method

.method static synthetic access$502(Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;I)I
    .locals 0

    .line 178
    iput p1, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;->completeCount:I

    return p1
.end method

.method static synthetic access$512(Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;I)I
    .locals 1

    .line 178
    iget v0, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;->completeCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;->completeCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;)Z
    .locals 0

    .line 178
    iget-boolean p0, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;->isCompleted:Z

    return p0
.end method

.method static synthetic access$602(Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;Z)Z
    .locals 0

    .line 178
    iput-boolean p1, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;->isCompleted:Z

    return p1
.end method
