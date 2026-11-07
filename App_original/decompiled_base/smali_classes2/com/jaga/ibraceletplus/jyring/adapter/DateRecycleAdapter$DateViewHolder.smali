.class Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter$DateViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DateRecycleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DateViewHolder"
.end annotation


# instance fields
.field private textView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter;


# direct methods
.method private constructor <init>(Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter$DateViewHolder;->this$0:Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter;

    .line 75
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a0489

    .line 77
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter$DateViewHolder;->textView:Landroid/widget/TextView;

    return-void
.end method

.method synthetic constructor <init>(Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter;Landroid/view/View;Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter$1;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter$DateViewHolder;-><init>(Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter$DateViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/adapter/DateRecycleAdapter$DateViewHolder;->textView:Landroid/widget/TextView;

    return-object p0
.end method
