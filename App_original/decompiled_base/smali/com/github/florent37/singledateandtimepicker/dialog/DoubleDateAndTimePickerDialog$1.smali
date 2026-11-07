.class Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$1;
.super Ljava/lang/Object;
.source "DoubleDateAndTimePickerDialog.java"

# interfaces
.implements Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;-><init>(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;


# direct methods
.method constructor <init>(Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$1;->this$0:Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$1;->this$0:Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;

    invoke-virtual {v0}, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->onClose()V

    return-void
.end method

.method public onLoaded(Landroid/view/View;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$1;->this$0:Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;

    invoke-static {v0, p1}, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->access$000(Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;Landroid/view/View;)V

    return-void
.end method

.method public onOpen()V
    .locals 0

    return-void
.end method
