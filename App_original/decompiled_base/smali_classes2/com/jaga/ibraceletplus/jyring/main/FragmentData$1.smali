.class Lcom/jaga/ibraceletplus/jyring/main/FragmentData$1;
.super Ljava/lang/Object;
.source "FragmentData.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentData;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData$1;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 123
    :goto_0
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData$1;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentData;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->llDate:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 124
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData$1;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentData;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->llDate:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/high16 v3, 0x41600000    # 14.0f

    .line 125
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const v3, 0x3ecccccd    # 0.4f

    .line 126
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 127
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData$1;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentData;

    invoke-static {v2, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->access$002(Lcom/jaga/ibraceletplus/jyring/main/FragmentData;I)I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    :cond_1
    check-cast p1, Landroid/widget/TextView;

    const/high16 v1, 0x41900000    # 18.0f

    .line 131
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 132
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 134
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData$1;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentData;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->access$000(Lcom/jaga/ibraceletplus/jyring/main/FragmentData;)I

    move-result p1

    if-nez p1, :cond_2

    .line 135
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData$1;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentData;

    const/16 v1, 0x18

    const/16 v2, 0xe10

    invoke-static {p1, v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->access$100(Lcom/jaga/ibraceletplus/jyring/main/FragmentData;III)V

    return-void

    .line 136
    :cond_2
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData$1;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentData;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->access$000(Lcom/jaga/ibraceletplus/jyring/main/FragmentData;)I

    move-result p1

    const v0, 0x15180

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 137
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData$1;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentData;

    const/4 v1, -0x6

    const/4 v2, 0x7

    invoke-static {p1, v1, v2, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->access$100(Lcom/jaga/ibraceletplus/jyring/main/FragmentData;III)V

    return-void

    .line 138
    :cond_3
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData$1;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentData;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->access$000(Lcom/jaga/ibraceletplus/jyring/main/FragmentData;)I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 139
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData$1;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentData;

    const/16 v1, -0x1d

    const/16 v2, 0x1e

    invoke-static {p1, v1, v2, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->access$100(Lcom/jaga/ibraceletplus/jyring/main/FragmentData;III)V

    return-void

    .line 140
    :cond_4
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData$1;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentData;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->access$000(Lcom/jaga/ibraceletplus/jyring/main/FragmentData;)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    .line 141
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentData$1;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentData;

    const/16 v0, 0xc

    const v1, 0x278d00

    const/16 v2, -0x16c

    invoke-static {p1, v2, v0, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentData;->access$100(Lcom/jaga/ibraceletplus/jyring/main/FragmentData;III)V

    :cond_5
    return-void
.end method
