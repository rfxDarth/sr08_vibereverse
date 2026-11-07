.class Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$4;
.super Ljava/lang/Object;
.source "DialogPicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->showList([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 112
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$4;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 115
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$4;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->access$100(Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;)Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$OnConfirmListener;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0, v0}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$OnConfirmListener;->getPicker(III)V

    return-void
.end method
