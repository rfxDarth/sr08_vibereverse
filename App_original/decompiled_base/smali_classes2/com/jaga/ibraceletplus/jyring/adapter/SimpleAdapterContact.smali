.class public Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterContact;
.super Landroid/widget/ArrayAdapter;
.source "SimpleAdapterContact.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfoItem;",
        ">;"
    }
.end annotation


# instance fields
.field private bInit:Z

.field private iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfoItem;",
            ">;"
        }
    .end annotation
.end field

.field private mResource:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfoItem;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterContact;->bInit:Z

    .line 30
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterContact;->mInflater:Landroid/view/LayoutInflater;

    .line 31
    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterContact;->mResource:I

    .line 32
    iput-object p3, p0, Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterContact;->mItems:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemId(I)J
    .locals 2

    .line 50
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterContact;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfoItem;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 56
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterContact;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterContact;->mResource:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 59
    :cond_0
    iget-object p3, p0, Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterContact;->mItems:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfoItem;

    .line 60
    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfoItem;->getContactId()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const p3, 0x7f0a0453

    .line 62
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 63
    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfoItem;->getContactId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0a053c

    .line 65
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 66
    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfoItem;->getContactName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfoItem;->getPhoneNum()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v0

    const/4 v0, 0x1

    aput-object p1, v2, v0

    const-string p1, "%s:%s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isbInit()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterContact;->bInit:Z

    return v0
.end method

.method public setbInit(Z)V
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/adapter/SimpleAdapterContact;->bInit:Z

    return-void
.end method
