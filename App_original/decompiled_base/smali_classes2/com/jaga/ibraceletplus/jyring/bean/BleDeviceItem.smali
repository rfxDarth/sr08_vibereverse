.class public Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;
.super Ljava/lang/Object;
.source "BleDeviceItem.java"


# instance fields
.field private bindFlag:Ljava/lang/String;

.field private bindState:Ljava/lang/String;

.field private bindedDate:Ljava/lang/String;

.field private bleDeviceAddress:Ljava/lang/String;

.field private bleDeviceName:Ljava/lang/String;

.field private cid:Ljava/lang/String;

.field private did:Ljava/lang/String;

.field private nickname:Ljava/lang/String;

.field private rssi:I

.field private type:Ljava/lang/String;

.field private ver:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->bleDeviceName:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->bleDeviceAddress:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->nickname:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->bindedDate:Ljava/lang/String;

    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->rssi:I

    .line 9
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->type:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->ver:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->cid:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->did:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->bindFlag:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->bindState:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->bleDeviceName:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->bleDeviceAddress:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->nickname:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->bindedDate:Ljava/lang/String;

    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->rssi:I

    .line 9
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->type:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->ver:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->cid:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->did:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->bindFlag:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->bindState:Ljava/lang/String;

    .line 61
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->setBleDeviceName(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0, p2}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->setBleDeviceAddress(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0, p3}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->setNickname(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0, p4}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->setBindedDate(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0, p5}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->setRssi(I)V

    .line 66
    invoke-virtual {p0, p6}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->setType(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getBindFlag()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->bindFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getBindState()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->bindState:Ljava/lang/String;

    return-object v0
.end method

.method public getBindedDate()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->bindedDate:Ljava/lang/String;

    return-object v0
.end method

.method public getBleDeviceAddress()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->bleDeviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getBleDeviceName()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->bleDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->cid:Ljava/lang/String;

    return-object v0
.end method

.method public getDid()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->did:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getRssi()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->rssi:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getVer()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->ver:Ljava/lang/String;

    return-object v0
.end method

.method public setBindFlag(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->bindFlag:Ljava/lang/String;

    return-void
.end method

.method public setBindState(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->bindState:Ljava/lang/String;

    return-void
.end method

.method public setBindedDate(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->bindedDate:Ljava/lang/String;

    return-void
.end method

.method public setBleDeviceAddress(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->bleDeviceAddress:Ljava/lang/String;

    return-void
.end method

.method public setBleDeviceName(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->bleDeviceName:Ljava/lang/String;

    return-void
.end method

.method public setCid(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->cid:Ljava/lang/String;

    return-void
.end method

.method public setDid(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->did:Ljava/lang/String;

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setRssi(I)V
    .locals 0

    .line 90
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->rssi:I

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->type:Ljava/lang/String;

    return-void
.end method

.method public setVer(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->ver:Ljava/lang/String;

    return-void
.end method
