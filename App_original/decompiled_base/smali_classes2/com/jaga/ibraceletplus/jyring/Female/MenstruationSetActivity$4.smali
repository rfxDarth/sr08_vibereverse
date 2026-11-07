.class Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity$4;
.super Ljava/lang/Object;
.source "MenstruationSetActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->setChildSex(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;

.field final synthetic val$wv:Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 168
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity$4;->val$wv:Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 171
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity$4;->val$wv:Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->getSeletedIndex()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;

    invoke-static {p2}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;)Landroid/widget/TextView;

    move-result-object p2

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f130545

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 174
    :cond_1
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;

    invoke-static {p2}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;)Landroid/widget/TextView;

    move-result-object p2

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f130542

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    :goto_0
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->access$102(Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
