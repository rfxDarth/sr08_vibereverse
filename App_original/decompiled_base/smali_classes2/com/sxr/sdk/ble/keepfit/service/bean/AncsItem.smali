.class public Lcom/sxr/sdk/ble/keepfit/service/bean/AncsItem;
.super Ljava/lang/Object;
.source "AncsItem.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/bean/AncsItem;->a:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/sxr/sdk/ble/keepfit/service/bean/AncsItem;->b:I

    .line 4
    iput p3, p0, Lcom/sxr/sdk/ble/keepfit/service/bean/AncsItem;->c:I

    .line 5
    iput-object p4, p0, Lcom/sxr/sdk/ble/keepfit/service/bean/AncsItem;->d:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/sxr/sdk/ble/keepfit/service/bean/AncsItem;->e:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/sxr/sdk/ble/keepfit/service/bean/AncsItem;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAncsUid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/bean/AncsItem;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/bean/AncsItem;->b:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/bean/AncsItem;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getSubCid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/bean/AncsItem;->c:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/bean/AncsItem;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/bean/AncsItem;->d:Ljava/lang/String;

    return-object v0
.end method

.method public setAncsUid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/bean/AncsItem;->a:Ljava/lang/String;

    return-void
.end method

.method public setCategoryId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/service/bean/AncsItem;->b:I

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/bean/AncsItem;->f:Ljava/lang/String;

    return-void
.end method

.method public setSubCid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/service/bean/AncsItem;->c:I

    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/bean/AncsItem;->e:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/bean/AncsItem;->d:Ljava/lang/String;

    return-void
.end method
