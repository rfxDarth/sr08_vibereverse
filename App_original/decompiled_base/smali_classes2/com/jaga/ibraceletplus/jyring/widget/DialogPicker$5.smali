.class Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$5;
.super Ljava/lang/Object;
.source "DialogPicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->showNumber(IIILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

.field final synthetic val$np:Landroid/widget/NumberPicker;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;Landroid/widget/NumberPicker;)V
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

    .line 140
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$5;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$5;->val$np:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 143
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$5;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->access$100(Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;)Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$OnConfirmListener;

    move-result-object p1

    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$5;->val$np:Landroid/widget/NumberPicker;

    invoke-virtual {p2}, Landroid/widget/NumberPicker;->getValue()I

    move-result p2

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0, v0}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$OnConfirmListener;->getPicker(III)V

    return-void
.end method
