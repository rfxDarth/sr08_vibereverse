.class Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$1;
.super Ljava/lang/Object;
.source "DialogPicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->setAlertDialog(Landroidx/appcompat/app/AlertDialog;)V
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

    .line 44
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 47
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->access$002(Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;Landroidx/appcompat/app/AlertDialog;)Landroidx/appcompat/app/AlertDialog;

    return-void
.end method
