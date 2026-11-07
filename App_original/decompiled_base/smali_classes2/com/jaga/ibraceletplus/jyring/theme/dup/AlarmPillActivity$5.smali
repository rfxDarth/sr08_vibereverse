.class Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity$5;
.super Ljava/lang/Object;
.source "AlarmPillActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 175
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity;)Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
