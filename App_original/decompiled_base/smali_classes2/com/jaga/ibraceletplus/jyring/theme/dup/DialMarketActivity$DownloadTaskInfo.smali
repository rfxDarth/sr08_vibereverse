.class Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$DownloadTaskInfo;
.super Ljava/lang/Object;
.source "DialMarketActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadTaskInfo"
.end annotation


# instance fields
.field fileName:Ljava/lang/String;

.field imgDial:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$DownloadTaskInfo;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$DownloadTaskInfo;->imgDial:Landroid/widget/ImageView;

    .line 52
    iput-object p3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$DownloadTaskInfo;->fileName:Ljava/lang/String;

    .line 53
    iput-object p4, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/DialMarketActivity$DownloadTaskInfo;->url:Ljava/lang/String;

    return-void
.end method
