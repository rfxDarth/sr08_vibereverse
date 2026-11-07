.class Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity$5;
.super Ljava/lang/Object;
.source "QuiteModeActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 182
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 184
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;)Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setSnooze(I)V

    return-void
.end method
