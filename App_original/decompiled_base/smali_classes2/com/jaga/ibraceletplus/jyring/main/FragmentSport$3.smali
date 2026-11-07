.class Lcom/jaga/ibraceletplus/jyring/main/FragmentSport$3;
.super Ljava/lang/Object;
.source "FragmentSport.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 212
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport$3;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 216
    check-cast p1, Landroid/widget/TextView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 217
    :goto_0
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport$3;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->llMode:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 218
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport$3;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->llMode:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 219
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    .line 221
    :cond_0
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport$3;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->llArrow:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0603aa

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 223
    :cond_1
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport$3;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->llArrow:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v0, 0x7f100002

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 225
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport$3;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->access$200(Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;)[I

    move-result-object v0

    aget v0, v0, v1

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->access$102(Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;I)I

    .line 226
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport$3;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->tvDistance:Landroid/widget/TextView;

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport$3;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->access$300(Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;)[F

    move-result-object v1

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport$3;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->access$100(Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;)I

    move-result v2

    aget v1, v1, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport$3;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->tvCount:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport$3;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->access$400(Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;)[I

    move-result-object v0

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport$3;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->access$100(Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;)I

    move-result v1

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
