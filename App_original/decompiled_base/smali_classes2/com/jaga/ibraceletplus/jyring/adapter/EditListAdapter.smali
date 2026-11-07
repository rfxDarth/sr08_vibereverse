.class public Lcom/jaga/ibraceletplus/jyring/adapter/EditListAdapter;
.super Landroid/widget/BaseAdapter;
.source "EditListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jaga/ibraceletplus/jyring/adapter/EditListAdapter$ViewHolder;,
        Lcom/jaga/ibraceletplus/jyring/adapter/EditListAdapter$AddAllCheckedListener;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private inflater:Landroid/view/LayoutInflater;

.field private listItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jaga/ibraceletplus/jyring/bean/ListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/jaga/ibraceletplus/jyring/bean/ListItem;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/adapter/EditListAdapter;->context:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/adapter/EditListAdapter;->listItems:Ljava/util/List;

    .line 29
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/adapter/EditListAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/adapter/EditListAdapter;->listItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/adapter/EditListAdapter;->listItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jaga/ibraceletplus/jyring/bean/ListItem;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/adapter/EditListAdapter;->listItems:Ljava/util/List;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 54
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/adapter/EditListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jaga/ibraceletplus/jyring/bean/ListItem;

    if-eqz p2, :cond_0

    .line 58
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/jaga/ibraceletplus/jyring/adapter/EditListAdapter$ViewHolder;

    goto :goto_0

    .line 61
    :cond_0
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/adapter/EditListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d00aa

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 62
    new-instance p3, Lcom/jaga/ibraceletplus/jyring/adapter/EditListAdapter$ViewHolder;

    invoke-direct {p3, p2}, Lcom/jaga/ibraceletplus/jyring/adapter/EditListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 64
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 66
    :goto_0
    iget-object p3, p3, Lcom/jaga/ibraceletplus/jyring/adapter/EditListAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/ListItem;->getItemContent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public insert(Lcom/jaga/ibraceletplus/jyring/bean/ListItem;I)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/adapter/EditListAdapter;->listItems:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 88
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/adapter/EditListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public remove(I)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/adapter/EditListAdapter;->listItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 83
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/adapter/EditListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateAdapter(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jaga/ibraceletplus/jyring/bean/ListItem;",
            ">;)V"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/adapter/EditListAdapter;->listItems:Ljava/util/List;

    .line 34
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/adapter/EditListAdapter;->notifyDataSetChanged()V

    return-void
.end method
