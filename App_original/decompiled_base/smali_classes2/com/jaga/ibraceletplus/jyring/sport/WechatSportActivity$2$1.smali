.class Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity$2$1;
.super Ljava/lang/Object;
.source "WechatSportActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity$2;->onResponse(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity$2;

.field final synthetic val$existflag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity$2;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 205
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity$2$1;->this$1:Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity$2;

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity$2$1;->val$existflag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity$2$1;->this$1:Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity$2;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->ivCode:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity$2$1;->this$1:Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity$2;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->access$100(Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 210
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity$2$1;->val$existflag:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity$2$1;->this$1:Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity$2;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity$2;->val$force:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity$2$1;->this$1:Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity$2;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;->access$200(Lcom/jaga/ibraceletplus/jyring/sport/WechatSportActivity;)V

    :cond_0
    return-void
.end method
