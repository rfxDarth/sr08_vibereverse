.class Lcom/qiniu/android/dns/dns/DnsResponse$RecordResource;
.super Ljava/lang/Object;
.source "DnsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qiniu/android/dns/dns/DnsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecordResource"
.end annotation


# instance fields
.field private final count:I

.field private final from:I

.field private length:I

.field private final name:Ljava/lang/String;

.field private final records:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qiniu/android/dns/Record;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iput-object p1, p0, Lcom/qiniu/android/dns/dns/DnsResponse$RecordResource;->name:Ljava/lang/String;

    .line 296
    iput p2, p0, Lcom/qiniu/android/dns/dns/DnsResponse$RecordResource;->count:I

    .line 297
    iput p3, p0, Lcom/qiniu/android/dns/dns/DnsResponse$RecordResource;->from:I

    const/4 p1, 0x0

    .line 298
    iput p1, p0, Lcom/qiniu/android/dns/dns/DnsResponse$RecordResource;->length:I

    .line 299
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/qiniu/android/dns/dns/DnsResponse$RecordResource;->records:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILcom/qiniu/android/dns/dns/DnsResponse$1;)V
    .locals 0

    .line 287
    invoke-direct {p0, p1, p2, p3}, Lcom/qiniu/android/dns/dns/DnsResponse$RecordResource;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$100(Lcom/qiniu/android/dns/dns/DnsResponse$RecordResource;)Ljava/util/List;
    .locals 0

    .line 287
    iget-object p0, p0, Lcom/qiniu/android/dns/dns/DnsResponse$RecordResource;->records:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/qiniu/android/dns/dns/DnsResponse$RecordResource;)I
    .locals 0

    .line 287
    iget p0, p0, Lcom/qiniu/android/dns/dns/DnsResponse$RecordResource;->length:I

    return p0
.end method

.method static synthetic access$202(Lcom/qiniu/android/dns/dns/DnsResponse$RecordResource;I)I
    .locals 0

    .line 287
    iput p1, p0, Lcom/qiniu/android/dns/dns/DnsResponse$RecordResource;->length:I

    return p1
.end method

.method static synthetic access$400(Lcom/qiniu/android/dns/dns/DnsResponse$RecordResource;)I
    .locals 0

    .line 287
    iget p0, p0, Lcom/qiniu/android/dns/dns/DnsResponse$RecordResource;->from:I

    return p0
.end method

.method static synthetic access$500(Lcom/qiniu/android/dns/dns/DnsResponse$RecordResource;)I
    .locals 0

    .line 287
    iget p0, p0, Lcom/qiniu/android/dns/dns/DnsResponse$RecordResource;->count:I

    return p0
.end method

.method static synthetic access$600(Lcom/qiniu/android/dns/dns/DnsResponse$RecordResource;)Ljava/lang/String;
    .locals 0

    .line 287
    iget-object p0, p0, Lcom/qiniu/android/dns/dns/DnsResponse$RecordResource;->name:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/qiniu/android/dns/dns/DnsResponse$RecordResource;Lcom/qiniu/android/dns/Record;)V
    .locals 0

    .line 287
    invoke-direct {p0, p1}, Lcom/qiniu/android/dns/dns/DnsResponse$RecordResource;->addRecord(Lcom/qiniu/android/dns/Record;)V

    return-void
.end method

.method private addRecord(Lcom/qiniu/android/dns/Record;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 304
    iget-object v0, p0, Lcom/qiniu/android/dns/dns/DnsResponse$RecordResource;->records:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
