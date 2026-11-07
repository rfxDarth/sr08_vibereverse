.class Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$3;
.super Ljava/lang/Object;
.source "FragmentSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->OnClickivDisconnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 582
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$3;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 585
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$3;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    const-string p2, "OnClickivDisconnect disconnectDeviceBatch."

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->saveLog(Ljava/lang/String;)V

    .line 586
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$3;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$200(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    move-result-object p1

    const/4 p2, 0x3

    iput p2, p1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->nRequestTimes:I

    .line 587
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$3;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$300(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V

    return-void
.end method
