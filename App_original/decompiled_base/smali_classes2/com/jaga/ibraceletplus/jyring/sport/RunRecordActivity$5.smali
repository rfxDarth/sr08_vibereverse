.class Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$5;
.super Ljava/lang/Object;
.source "RunRecordActivity.java"

# interfaces
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->initMap(DD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

.field final synthetic val$lat:D

.field final synthetic val$lon:D


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;DD)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 521
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    iput-wide p2, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$5;->val$lat:D

    iput-wide p4, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$5;->val$lon:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 4

    .line 524
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    invoke-static {v0, p1}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->access$102(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;Lcom/google/android/gms/maps/GoogleMap;)Lcom/google/android/gms/maps/GoogleMap;

    .line 525
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000dd

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->access$1602(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    .line 527
    new-instance p1, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$5;->val$lat:D

    iget-wide v2, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$5;->val$lon:D

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 528
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->access$100(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLng(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    return-void
.end method
