.class Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$3;
.super Ljava/lang/Object;
.source "DetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->setRange(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;

.field final synthetic val$background:I

.field final synthetic val$index:I

.field final synthetic val$llRange:Landroid/widget/LinearLayout;

.field final synthetic val$llRangeIndicator:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;ILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 133
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$3;->val$index:I

    iput-object p3, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$3;->val$llRange:Landroid/widget/LinearLayout;

    iput-object p4, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$3;->val$llRangeIndicator:Landroid/widget/LinearLayout;

    iput p5, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$3;->val$background:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 136
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;

    iget p1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->indexRange:I

    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$3;->val$index:I

    if-ne p1, v0, :cond_0

    return-void

    .line 138
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$3;->val$llRange:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;

    iget v0, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->indexRange:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 139
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06005f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 141
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$3;->val$llRangeIndicator:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;

    iget v0, v0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->indexRange:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    .line 142
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v1, 0x7f0600a6

    .line 143
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 145
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$3;->val$index:I

    iput v1, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->indexRange:I

    .line 146
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;

    iput v0, p1, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->first:I

    .line 148
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$3;->val$llRange:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;

    iget v1, v1, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->indexRange:I

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 149
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 151
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$3;->val$llRangeIndicator:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;

    iget v1, v1, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->indexRange:I

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 152
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 153
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$3;->val$background:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 155
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->access$200(Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;)Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/widget/RecycleAlignView;->scrollToPosition(I)V

    .line 156
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;->access$500(Lcom/jaga/ibraceletplus/jyring/detail/DetailActivity;)V

    return-void
.end method
