.class public final synthetic Lcom/king/zxing/CaptureHelper$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/king/zxing/camera/CameraManager$OnSensorListener;


# instance fields
.field public final synthetic f$0:Lcom/king/zxing/CaptureHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/king/zxing/CaptureHelper;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/king/zxing/CaptureHelper$$ExternalSyntheticLambda4;->f$0:Lcom/king/zxing/CaptureHelper;

    return-void
.end method


# virtual methods
.method public final onSensorChanged(ZZF)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper$$ExternalSyntheticLambda4;->f$0:Lcom/king/zxing/CaptureHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/king/zxing/CaptureHelper;->lambda$initCameraManager$2$com-king-zxing-CaptureHelper(ZZF)V

    return-void
.end method
