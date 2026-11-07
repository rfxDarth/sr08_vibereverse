.class Lcom/qiniu/android/dns/dns/DnsMessage;
.super Ljava/lang/Object;
.source "DnsMessage.java"


# static fields
.field static final OpCodeIQuery:I = 0x1

.field static final OpCodeQuery:I = 0x0

.field static final OpCodeStatus:I = 0x2

.field static final OpCodeUpdate:I = 0x5


# instance fields
.field protected messageId:S

.field protected opCode:I

.field protected ra:I

.field protected rd:I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-short v0, p0, Lcom/qiniu/android/dns/dns/DnsMessage;->messageId:S

    .line 10
    iput v0, p0, Lcom/qiniu/android/dns/dns/DnsMessage;->opCode:I

    const/4 v1, 0x1

    .line 11
    iput v1, p0, Lcom/qiniu/android/dns/dns/DnsMessage;->rd:I

    .line 12
    iput v0, p0, Lcom/qiniu/android/dns/dns/DnsMessage;->ra:I

    return-void
.end method


# virtual methods
.method getMessageId()I
    .locals 1

    .line 18
    iget-short v0, p0, Lcom/qiniu/android/dns/dns/DnsMessage;->messageId:S

    return v0
.end method

.method getOpCode()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/qiniu/android/dns/dns/DnsMessage;->opCode:I

    return v0
.end method

.method getRA()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/qiniu/android/dns/dns/DnsMessage;->ra:I

    return v0
.end method

.method getRD()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/qiniu/android/dns/dns/DnsMessage;->rd:I

    return v0
.end method
