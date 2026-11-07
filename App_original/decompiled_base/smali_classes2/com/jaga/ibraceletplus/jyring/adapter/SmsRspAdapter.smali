.class public Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter;
.super Landroid/widget/BaseAdapter;
.source "SmsRspAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter$DeleteItemListener;,
        Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter$ViewHolder;,
        Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter$AddAllCheckedListener;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private inflater:Landroid/view/LayoutInflater;

.field private listItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDeleteItemListener:Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter$DeleteItemListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter;->context:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter;->listItems:Ljava/util/List;

    .line 31
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter;)Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter$DeleteItemListener;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter;->mDeleteItemListener:Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter$DeleteItemListener;

    return-object p0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter;->listItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter;->listItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter;->listItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;

    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;->getSmsRspId()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter;->listItems:Ljava/util/List;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 60
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;

    if-eqz p2, :cond_0

    .line 64
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter$ViewHolder;

    goto :goto_0

    .line 66
    :cond_0
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter;->inflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d00b0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 67
    new-instance p3, Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter$ViewHolder;

    invoke-direct {p3, p2}, Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 69
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 71
    :goto_0
    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;->getSmsRspId()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter$ViewHolder;->setContactId(I)V

    .line 72
    iget-object v0, p3, Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter$ViewHolder;->content:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object p1, p3, Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter$ViewHolder;->ivDelete:Landroid/widget/ImageView;

    new-instance v0, Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter$1;

    invoke-direct {v0, p0, p3}, Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter$1;-><init>(Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter;Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter$ViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public insert(Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;I)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter;->listItems:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 120
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public remove(I)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter;->listItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 105
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public removeBySmsRspId(I)V
    .locals 2

    const/4 v0, 0x0

    .line 109
    :goto_0
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter;->listItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 110
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;

    .line 111
    invoke-virtual {v1}, Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;->getSmsRspId()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter;->listItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 113
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter;->notifyDataSetChanged()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setDeleteItemListener(Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter$DeleteItemListener;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter;->mDeleteItemListener:Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter$DeleteItemListener;

    return-void
.end method

.method public updateAdapter(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;",
            ">;)V"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter;->listItems:Ljava/util/List;

    .line 40
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter;->notifyDataSetChanged()V

    return-void
.end method
