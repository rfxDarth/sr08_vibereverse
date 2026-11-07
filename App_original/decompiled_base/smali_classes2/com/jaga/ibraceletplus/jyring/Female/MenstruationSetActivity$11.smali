.class Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity$11;
.super Ljava/lang/Object;
.source "MenstruationSetActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->SetNumber(Landroid/view/View;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;

.field final synthetic val$set_number:Landroid/widget/NumberPicker;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;ILandroid/widget/NumberPicker;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 397
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity$11;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity$11;->val$type:I

    iput-object p3, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity$11;->val$set_number:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 400
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity$11;->val$type:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 401
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity$11;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;

    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity$11;->val$set_number:Landroid/widget/NumberPicker;

    invoke-virtual {p2}, Landroid/widget/NumberPicker;->getValue()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->access$602(Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 402
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity$11;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->access$700(Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity$11;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;

    invoke-static {p2}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->access$600(Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 404
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity$11;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;

    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity$11;->val$set_number:Landroid/widget/NumberPicker;

    invoke-virtual {p2}, Landroid/widget/NumberPicker;->getValue()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->access$802(Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 405
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity$11;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->access$900(Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity$11;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;

    invoke-static {p2}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->access$800(Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
