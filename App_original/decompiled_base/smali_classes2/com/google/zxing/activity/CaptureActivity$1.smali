.class Lcom/google/zxing/activity/CaptureActivity$1;
.super Ljava/lang/Object;
.source "CaptureActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/zxing/activity/CaptureActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/zxing/activity/CaptureActivity;

.field final synthetic val$progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/google/zxing/activity/CaptureActivity;Landroid/app/ProgressDialog;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/google/zxing/activity/CaptureActivity$1;->this$0:Lcom/google/zxing/activity/CaptureActivity;

    iput-object p2, p0, Lcom/google/zxing/activity/CaptureActivity$1;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 328
    iget-object v0, p0, Lcom/google/zxing/activity/CaptureActivity$1;->this$0:Lcom/google/zxing/activity/CaptureActivity;

    .line 329
    invoke-static {v0}, Lcom/google/zxing/activity/CaptureActivity;->access$000(Lcom/google/zxing/activity/CaptureActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/common/BitmapUtils;->getCompressedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 331
    new-instance v1, Lcom/google/zxing/decode/BitmapDecoder;

    iget-object v2, p0, Lcom/google/zxing/activity/CaptureActivity$1;->this$0:Lcom/google/zxing/activity/CaptureActivity;

    invoke-direct {v1, v2}, Lcom/google/zxing/decode/BitmapDecoder;-><init>(Landroid/content/Context;)V

    .line 333
    invoke-virtual {v1, v0}, Lcom/google/zxing/decode/BitmapDecoder;->getRawResult(Landroid/graphics/Bitmap;)Lcom/google/zxing/Result;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 337
    iget-object v1, p0, Lcom/google/zxing/activity/CaptureActivity$1;->this$0:Lcom/google/zxing/activity/CaptureActivity;

    invoke-static {v1}, Lcom/google/zxing/activity/CaptureActivity;->access$100(Lcom/google/zxing/activity/CaptureActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0xc8

    .line 338
    iput v2, v1, Landroid/os/Message;->what:I

    .line 339
    invoke-static {v0}, Lcom/google/zxing/client/result/ResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v0

    .line 340
    invoke-virtual {v0}, Lcom/google/zxing/client/result/ParsedResult;->toString()Ljava/lang/String;

    move-result-object v0

    .line 341
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 342
    iget-object v2, p0, Lcom/google/zxing/activity/CaptureActivity$1;->this$0:Lcom/google/zxing/activity/CaptureActivity;

    invoke-static {v2, v0}, Lcom/google/zxing/activity/CaptureActivity;->access$200(Lcom/google/zxing/activity/CaptureActivity;Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/google/zxing/activity/CaptureActivity$1;->this$0:Lcom/google/zxing/activity/CaptureActivity;

    invoke-static {v0}, Lcom/google/zxing/activity/CaptureActivity;->access$100(Lcom/google/zxing/activity/CaptureActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/activity/CaptureActivity$1;->this$0:Lcom/google/zxing/activity/CaptureActivity;

    invoke-static {v0}, Lcom/google/zxing/activity/CaptureActivity;->access$100(Lcom/google/zxing/activity/CaptureActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x12c

    .line 346
    iput v1, v0, Landroid/os/Message;->what:I

    .line 347
    iget-object v1, p0, Lcom/google/zxing/activity/CaptureActivity$1;->this$0:Lcom/google/zxing/activity/CaptureActivity;

    invoke-static {v1}, Lcom/google/zxing/activity/CaptureActivity;->access$100(Lcom/google/zxing/activity/CaptureActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 350
    :goto_0
    iget-object v0, p0, Lcom/google/zxing/activity/CaptureActivity$1;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method
