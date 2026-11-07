.class public final Lcom/qiniu/android/storage/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiniu/android/storage/Configuration$Builder;
    }
.end annotation


# static fields
.field public static final BLOCK_SIZE:I = 0x400000

.field public static RESUME_UPLOAD_VERSION_NONE:I = -0x1

.field public static RESUME_UPLOAD_VERSION_V1:I = 0x0

.field public static RESUME_UPLOAD_VERSION_V2:I = 0x1


# instance fields
.field public final accelerateUploading:Z

.field public final allowBackupHost:Z

.field public final chunkSize:I

.field public final concurrentTaskCount:I

.field public final connectTimeout:I

.field public final keyGen:Lcom/qiniu/android/storage/KeyGenerator;

.field public final proxy:Lcom/qiniu/android/http/ProxyConfiguration;

.field public final putThreshold:I

.field public final recorder:Lcom/qiniu/android/storage/Recorder;

.field public final requestClient:Lcom/qiniu/android/http/request/IRequestClient;

.field public final responseTimeout:I

.field public final resumeUploadVersion:I

.field public final retryInterval:I

.field public final retryMax:I

.field public final urlConverter:Lcom/qiniu/android/http/UrlConverter;

.field public final useConcurrentResumeUpload:Z

.field public final useHttps:Z

.field public final writeTimeout:I

.field public final zone:Lcom/qiniu/android/common/Zone;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/qiniu/android/storage/Configuration$Builder;)V
    .locals 2

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->access$000(Lcom/qiniu/android/storage/Configuration$Builder;)Lcom/qiniu/android/http/request/IRequestClient;

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/android/storage/Configuration;->requestClient:Lcom/qiniu/android/http/request/IRequestClient;

    .line 136
    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->access$100(Lcom/qiniu/android/storage/Configuration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qiniu/android/storage/Configuration;->useConcurrentResumeUpload:Z

    .line 137
    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->access$200(Lcom/qiniu/android/storage/Configuration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/qiniu/android/storage/Configuration;->resumeUploadVersion:I

    .line 138
    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->access$300(Lcom/qiniu/android/storage/Configuration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/qiniu/android/storage/Configuration;->concurrentTaskCount:I

    .line 140
    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->access$200(Lcom/qiniu/android/storage/Configuration$Builder;)I

    move-result v0

    sget v1, Lcom/qiniu/android/storage/Configuration;->RESUME_UPLOAD_VERSION_V1:I

    if-ne v0, v1, :cond_0

    .line 141
    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->access$400(Lcom/qiniu/android/storage/Configuration$Builder;)I

    move-result v0

    const/16 v1, 0x400

    if-ge v0, v1, :cond_1

    .line 142
    invoke-static {p1, v1}, Lcom/qiniu/android/storage/Configuration$Builder;->access$402(Lcom/qiniu/android/storage/Configuration$Builder;I)I

    goto :goto_0

    .line 144
    :cond_0
    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->access$200(Lcom/qiniu/android/storage/Configuration$Builder;)I

    move-result v0

    sget v1, Lcom/qiniu/android/storage/Configuration;->RESUME_UPLOAD_VERSION_V2:I

    if-ne v0, v1, :cond_1

    .line 145
    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->access$400(Lcom/qiniu/android/storage/Configuration$Builder;)I

    move-result v0

    const/high16 v1, 0x100000

    if-ge v0, v1, :cond_1

    .line 146
    invoke-static {p1, v1}, Lcom/qiniu/android/storage/Configuration$Builder;->access$402(Lcom/qiniu/android/storage/Configuration$Builder;I)I

    .line 149
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->access$400(Lcom/qiniu/android/storage/Configuration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/qiniu/android/storage/Configuration;->chunkSize:I

    .line 151
    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->access$500(Lcom/qiniu/android/storage/Configuration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/qiniu/android/storage/Configuration;->putThreshold:I

    .line 153
    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->access$600(Lcom/qiniu/android/storage/Configuration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/qiniu/android/storage/Configuration;->connectTimeout:I

    .line 154
    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->access$700(Lcom/qiniu/android/storage/Configuration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/qiniu/android/storage/Configuration;->writeTimeout:I

    .line 155
    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->access$800(Lcom/qiniu/android/storage/Configuration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/qiniu/android/storage/Configuration;->responseTimeout:I

    .line 157
    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->access$900(Lcom/qiniu/android/storage/Configuration$Builder;)Lcom/qiniu/android/storage/Recorder;

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/android/storage/Configuration;->recorder:Lcom/qiniu/android/storage/Recorder;

    .line 158
    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->access$1000(Lcom/qiniu/android/storage/Configuration$Builder;)Lcom/qiniu/android/storage/KeyGenerator;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qiniu/android/storage/Configuration;->getKeyGen(Lcom/qiniu/android/storage/KeyGenerator;)Lcom/qiniu/android/storage/KeyGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/android/storage/Configuration;->keyGen:Lcom/qiniu/android/storage/KeyGenerator;

    .line 160
    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->access$1100(Lcom/qiniu/android/storage/Configuration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/qiniu/android/storage/Configuration;->retryMax:I

    .line 161
    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->access$1200(Lcom/qiniu/android/storage/Configuration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/qiniu/android/storage/Configuration;->retryInterval:I

    .line 163
    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->access$1300(Lcom/qiniu/android/storage/Configuration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qiniu/android/storage/Configuration;->allowBackupHost:Z

    .line 164
    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->access$1400(Lcom/qiniu/android/storage/Configuration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qiniu/android/storage/Configuration;->accelerateUploading:Z

    .line 166
    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->access$1500(Lcom/qiniu/android/storage/Configuration$Builder;)Lcom/qiniu/android/http/ProxyConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/android/storage/Configuration;->proxy:Lcom/qiniu/android/http/ProxyConfiguration;

    .line 168
    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->access$1600(Lcom/qiniu/android/storage/Configuration$Builder;)Lcom/qiniu/android/http/UrlConverter;

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/android/storage/Configuration;->urlConverter:Lcom/qiniu/android/http/UrlConverter;

    .line 170
    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->access$1700(Lcom/qiniu/android/storage/Configuration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qiniu/android/storage/Configuration;->useHttps:Z

    .line 172
    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->access$1800(Lcom/qiniu/android/storage/Configuration$Builder;)Lcom/qiniu/android/common/Zone;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->access$1800(Lcom/qiniu/android/storage/Configuration$Builder;)Lcom/qiniu/android/common/Zone;

    move-result-object p1

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/qiniu/android/common/AutoZone;

    invoke-direct {p1}, Lcom/qiniu/android/common/AutoZone;-><init>()V

    :goto_1
    iput-object p1, p0, Lcom/qiniu/android/storage/Configuration;->zone:Lcom/qiniu/android/common/Zone;

    return-void
.end method

.method synthetic constructor <init>(Lcom/qiniu/android/storage/Configuration$Builder;Lcom/qiniu/android/storage/Configuration$1;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/qiniu/android/storage/Configuration;-><init>(Lcom/qiniu/android/storage/Configuration$Builder;)V

    return-void
.end method

.method private getKeyGen(Lcom/qiniu/android/storage/KeyGenerator;)Lcom/qiniu/android/storage/KeyGenerator;
    .locals 0

    if-nez p1, :cond_0

    .line 177
    new-instance p1, Lcom/qiniu/android/storage/Configuration$1;

    invoke-direct {p1, p0}, Lcom/qiniu/android/storage/Configuration$1;-><init>(Lcom/qiniu/android/storage/Configuration;)V

    :cond_0
    return-object p1
.end method
