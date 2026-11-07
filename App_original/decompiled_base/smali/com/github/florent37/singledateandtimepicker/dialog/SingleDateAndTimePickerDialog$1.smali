.class Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$1;
.super Ljava/lang/Object;
.source "SingleDateAndTimePickerDialog.java"

# interfaces
.implements Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;-><init>(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;


# direct methods
.method constructor <init>(Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$1;->this$0:Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$1;->this$0:Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;

    invoke-virtual {v0}, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->onClose()V

    return-void
.end method

.method public onLoaded(Landroid/view/View;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$1;->this$0:Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;

    invoke-static {v0, p1}, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->access$000(Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;Landroid/view/View;)V

    .line 59
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$1;->this$0:Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;

    invoke-static {p1}, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->access$100(Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$DisplayListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 60
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$1;->this$0:Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;

    invoke-static {p1}, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->access$100(Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;)Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$DisplayListener;

    move-result-object p1

    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$1;->this$0:Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;

    invoke-static {v0}, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;->access$200(Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog;)Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/github/florent37/singledateandtimepicker/dialog/SingleDateAndTimePickerDialog$DisplayListener;->onDisplayed(Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;)V

    :cond_0
    return-void
.end method

.method public onOpen()V
    .locals 0

    return-void
.end method
