.class Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity$5;
.super Ljava/lang/Object;
.source "WechatSportActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->retryQrcode()V
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

    .line 315
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 318
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;)Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogLoading;->show()V

    .line 319
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;

    const-string p2, "1"

    invoke-static {p1, p2}, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->access$300(Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;Ljava/lang/String;)V

    return-void
.end method
