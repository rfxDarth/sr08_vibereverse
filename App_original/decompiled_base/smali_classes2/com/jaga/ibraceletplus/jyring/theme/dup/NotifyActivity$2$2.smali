.class Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$2$2;
.super Ljava/lang/Object;
.source "NotifyActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$2;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$2;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 257
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$2$2;->this$1:Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 260
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$2$2;->this$1:Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$2;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;

    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/NotifyActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
