.class Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$3;
.super Ljava/lang/Object;
.source "DoubleDateAndTimePickerDialog.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


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

    .line 144
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$3;->this$0:Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$3;->this$0:Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;

    invoke-static {v0}, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->access$100(Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 148
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$3;->this$0:Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;

    invoke-static {v0}, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->access$100(Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog$3;->this$0:Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;

    invoke-static {v1}, Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;->access$100(Lcom/github/florent37/singledateandtimepicker/dialog/DoubleDateAndTimePickerDialog;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    const/4 v0, 0x0

    return v0
.end method
