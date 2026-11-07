.class Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity$1;
.super Ljava/lang/Object;
.source "RunDetailActivity.java"

# interfaces
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->initGoogleMap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 176
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 11

    .line 179
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;

    invoke-static {v0, p1}, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->access$002(Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;Lcom/google/android/gms/maps/GoogleMap;)Lcom/google/android/gms/maps/GoogleMap;

    .line 181
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;

    .line 182
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1000df

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 181
    invoke-static {p1}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object p1

    .line 183
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;

    .line 184
    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000de

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 183
    invoke-static {v0}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v0

    .line 185
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 186
    :goto_0
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;

    invoke-static {v3}, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->access$100(Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 187
    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;

    invoke-static {v4}, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->access$100(Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;

    invoke-virtual {v4}, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->getLatitude()D

    move-result-wide v4

    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;

    invoke-static {v6}, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->access$100(Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;

    invoke-virtual {v6}, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->getLongitude()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 188
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v2, :cond_0

    .line 191
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;

    invoke-static {v4}, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v5}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    new-instance v6, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v7, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;

    .line 192
    invoke-static {v7}, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->access$100(Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;

    invoke-virtual {v7}, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->getLatitude()D

    move-result-wide v7

    iget-object v9, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;

    invoke-static {v9}, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->access$100(Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;

    invoke-virtual {v9}, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->getLongitude()D

    move-result-wide v9

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v5, v6}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v5

    .line 191
    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    .line 193
    new-instance v4, Lcom/google/android/gms/maps/model/CameraPosition;

    const/high16 v5, 0x41900000    # 18.0f

    const/4 v6, 0x0

    invoke-direct {v4, v3, v5, v6, v6}, Lcom/google/android/gms/maps/model/CameraPosition;-><init>(Lcom/google/android/gms/maps/model/LatLng;FFF)V

    invoke-static {v4}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v3

    .line 194
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;

    invoke-static {v4}, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    goto :goto_1

    .line 195
    :cond_0
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;

    invoke-static {v3}, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->access$100(Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_1

    .line 196
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;

    invoke-static {v3}, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v4}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    new-instance v5, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;

    .line 197
    invoke-static {v6}, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->access$100(Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;

    invoke-virtual {v6}, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->getLatitude()D

    move-result-wide v6

    iget-object v8, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;

    invoke-static {v8}, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->access$100(Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;

    invoke-virtual {v8}, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->getLongitude()D

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v4

    .line 196
    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 201
    :cond_2
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/PolylineOptions;-><init>()V

    .line 202
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->addAll(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v0

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->width(F)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v0

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->color(I)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v0

    .line 201
    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/Polyline;

    return-void
.end method
