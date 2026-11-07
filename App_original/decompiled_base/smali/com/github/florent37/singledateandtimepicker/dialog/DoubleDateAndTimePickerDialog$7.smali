.class Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$7;
.super Ljava/lang/Object;
.source "DoubleDateAndTimePickerDialog.java"

# interfaces
.implements Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->init(Landroid/view/View;)V
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

    .line 277
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$7;->this$0:Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateChanged(Ljava/lang/String;Ljava/util/Date;)V
    .locals 0

    .line 280
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$7;->this$0:Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;

    invoke-static {p1}, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->access$500(Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;)Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->setMinDate(Ljava/util/Date;)V

    .line 281
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$7;->this$0:Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;

    invoke-static {p1}, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->access$500(Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;)Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/florent37/singledateandtimepicker/SingleDateAndTimePicker;->checkPickersMinMax()V

    return-void
.end method
