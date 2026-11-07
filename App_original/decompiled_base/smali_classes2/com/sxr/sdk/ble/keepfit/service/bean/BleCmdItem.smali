.class public Lcom/sxr/sdk/ble/keepfit/service/bean/BleCmdItem;
.super Ljava/lang/Object;
.source "BleCmdItem.java"


# instance fields
.field private a:I

.field private b:[B


# direct methods
.method public constructor <init>(I[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/service/bean/BleCmdItem;->a:I

    .line 3
    iput-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/bean/BleCmdItem;->b:[B

    return-void
.end method


# virtual methods
.method public getCmd()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/bean/BleCmdItem;->b:[B

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/bean/BleCmdItem;->a:I

    return v0
.end method

.method public setCmd([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/bean/BleCmdItem;->b:[B

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/service/bean/BleCmdItem;->a:I

    return-void
.end method
