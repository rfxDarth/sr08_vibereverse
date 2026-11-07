.class Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity$4;
.super Ljava/lang/Object;
.source "WechatSportActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->OnClickbAuth()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 256
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->access$300(Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;Ljava/lang/String;)V

    return-void
.end method
