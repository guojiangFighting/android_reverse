.class public Lcom/dodonew/online/ui/MapActivity;
.super Lcom/dodonew/online/base/TitleActivity;
.source "MapActivity.java"

# interfaces
.implements Lcom/amap/api/maps/AMap$OnMapLoadedListener;
.implements Lcom/amap/api/maps/AMap$InfoWindowAdapter;


# instance fields
.field private LOCATION:Lcom/amap/api/maps/model/LatLng;

.field private NETBAR:Lcom/amap/api/maps/model/LatLng;

.field private aMap:Lcom/amap/api/maps/AMap;

.field df:Ljava/text/DecimalFormat;

.field private mapView:Lcom/amap/api/maps/MapView;

.field private marker2:Lcom/amap/api/maps/model/Marker;

.field private markerOption:Lcom/amap/api/maps/model/MarkerOptions;

.field private netBar:Lcom/dodonew/online/bean/NetBar;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/dodonew/online/base/TitleActivity;-><init>()V

    .line 41
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/MapActivity;->df:Ljava/text/DecimalFormat;

    return-void
.end method

.method private addMarkersToMap()V
    .locals 14

    .prologue
    const/high16 v11, 0x3f000000    # 0.5f

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    const/4 v10, 0x1

    .line 89
    new-instance v6, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {v6}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    iput-object v6, p0, Lcom/dodonew/online/ui/MapActivity;->markerOption:Lcom/amap/api/maps/model/MarkerOptions;

    .line 90
    iget-object v6, p0, Lcom/dodonew/online/ui/MapActivity;->markerOption:Lcom/amap/api/maps/model/MarkerOptions;

    iget-object v7, p0, Lcom/dodonew/online/ui/MapActivity;->NETBAR:Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v6, v7}, Lcom/amap/api/maps/model/MarkerOptions;->position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;

    .line 91
    iget-object v6, p0, Lcom/dodonew/online/ui/MapActivity;->netBar:Lcom/dodonew/online/bean/NetBar;

    invoke-virtual {v6}, Lcom/dodonew/online/bean/NetBar;->getMinPrice()Ljava/lang/String;

    move-result-object v5

    .line 92
    .local v5, "netbarMinPrice":Ljava/lang/String;
    iget-object v6, p0, Lcom/dodonew/online/ui/MapActivity;->netBar:Lcom/dodonew/online/bean/NetBar;

    invoke-virtual {v6}, Lcom/dodonew/online/bean/NetBar;->getMaxPrice()Ljava/lang/String;

    move-result-object v4

    .line 93
    .local v4, "netbarMaxPrice":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 94
    :cond_0
    const-string v5, "0"

    .line 98
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "0"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 99
    :cond_1
    const-string v4, "0"

    .line 103
    :goto_1
    iget-object v6, p0, Lcom/dodonew/online/ui/MapActivity;->markerOption:Lcom/amap/api/maps/model/MarkerOptions;

    iget-object v7, p0, Lcom/dodonew/online/ui/MapActivity;->netBar:Lcom/dodonew/online/bean/NetBar;

    invoke-virtual {v7}, Lcom/dodonew/online/bean/NetBar;->getNetBarCaption()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/amap/api/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u4e0a\u7f51\u8d39\u7387: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\u5143"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/amap/api/maps/model/MarkerOptions;->snippet(Ljava/lang/String;)Lcom/amap/api/maps/model/MarkerOptions;

    .line 104
    iget-object v6, p0, Lcom/dodonew/online/ui/MapActivity;->markerOption:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v6, v10}, Lcom/amap/api/maps/model/MarkerOptions;->draggable(Z)Lcom/amap/api/maps/model/MarkerOptions;

    .line 105
    iget-object v6, p0, Lcom/dodonew/online/ui/MapActivity;->markerOption:Lcom/amap/api/maps/model/MarkerOptions;

    .line 107
    invoke-virtual {p0}, Lcom/dodonew/online/ui/MapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0200b7

    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 106
    invoke-static {v7}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v7

    .line 105
    invoke-virtual {v6, v7}, Lcom/amap/api/maps/model/MarkerOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;

    .line 110
    iget-object v6, p0, Lcom/dodonew/online/ui/MapActivity;->markerOption:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v6, v10}, Lcom/amap/api/maps/model/MarkerOptions;->setFlat(Z)Lcom/amap/api/maps/model/MarkerOptions;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v0, "giflist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/amap/api/maps/model/BitmapDescriptor;>;"
    const/high16 v6, 0x43700000    # 240.0f

    .line 114
    invoke-static {v6}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->defaultMarker(F)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v6

    .line 113
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    const/4 v6, 0x0

    .line 116
    invoke-static {v6}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->defaultMarker(F)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v6

    .line 115
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    const/high16 v6, 0x42700000    # 60.0f

    .line 118
    invoke-static {v6}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->defaultMarker(F)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v6

    .line 117
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v6, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {v6}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v6, v11, v11}, Lcom/amap/api/maps/model/MarkerOptions;->anchor(FF)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v6

    iget-object v7, p0, Lcom/dodonew/online/ui/MapActivity;->LOCATION:Lcom/amap/api/maps/model/LatLng;

    .line 121
    invoke-virtual {v6, v7}, Lcom/amap/api/maps/model/MarkerOptions;->position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v6

    sget-object v7, Lcom/dodonew/online/DodonewOnlineApplication;->myLocation:Lcom/amap/api/location/AMapLocation;

    .line 122
    invoke-virtual {v7}, Lcom/amap/api/location/AMapLocation;->getCity()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/amap/api/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v6

    .line 123
    invoke-virtual {v6, v0}, Lcom/amap/api/maps/model/MarkerOptions;->icons(Ljava/util/ArrayList;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v6

    .line 124
    invoke-virtual {v6, v10}, Lcom/amap/api/maps/model/MarkerOptions;->draggable(Z)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v6

    const/16 v7, 0x32

    invoke-virtual {v6, v7}, Lcom/amap/api/maps/model/MarkerOptions;->period(I)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    .line 125
    .local v1, "markerOption1":Lcom/amap/api/maps/model/MarkerOptions;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v2, "markerOptionlst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/amap/api/maps/model/MarkerOptions;>;"
    iget-object v6, p0, Lcom/dodonew/online/ui/MapActivity;->markerOption:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v6, p0, Lcom/dodonew/online/ui/MapActivity;->aMap:Lcom/amap/api/maps/AMap;

    invoke-virtual {v6, v2, v10}, Lcom/amap/api/maps/AMap;->addMarkers(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v3

    .line 129
    .local v3, "markerlst":Ljava/util/List;, "Ljava/util/List<Lcom/amap/api/maps/model/Marker;>;"
    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amap/api/maps/model/Marker;

    iput-object v6, p0, Lcom/dodonew/online/ui/MapActivity;->marker2:Lcom/amap/api/maps/model/Marker;

    .line 130
    iget-object v6, p0, Lcom/dodonew/online/ui/MapActivity;->marker2:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v6}, Lcom/amap/api/maps/model/Marker;->showInfoWindow()V

    .line 131
    return-void

    .line 96
    .end local v0    # "giflist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/amap/api/maps/model/BitmapDescriptor;>;"
    .end local v1    # "markerOption1":Lcom/amap/api/maps/model/MarkerOptions;
    .end local v2    # "markerOptionlst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/amap/api/maps/model/MarkerOptions;>;"
    .end local v3    # "markerlst":Ljava/util/List;, "Ljava/util/List<Lcom/amap/api/maps/model/Marker;>;"
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/dodonew/online/ui/MapActivity;->df:Ljava/text/DecimalFormat;

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    div-double/2addr v8, v12

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 101
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/dodonew/online/ui/MapActivity;->df:Ljava/text/DecimalFormat;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    div-double/2addr v8, v12

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1
.end method

.method private initView()V
    .locals 6

    .prologue
    .line 53
    const-string v0, "\u7f51\u5427\u5730\u56fe"

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/MapActivity;->setTitle(Ljava/lang/String;)V

    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/MapActivity;->setNavigationIcon(I)V

    .line 55
    invoke-virtual {p0}, Lcom/dodonew/online/ui/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "netBar"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/bean/NetBar;

    iput-object v0, p0, Lcom/dodonew/online/ui/MapActivity;->netBar:Lcom/dodonew/online/bean/NetBar;

    .line 56
    iget-object v0, p0, Lcom/dodonew/online/ui/MapActivity;->netBar:Lcom/dodonew/online/bean/NetBar;

    if-eqz v0, :cond_0

    .line 57
    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    iget-object v1, p0, Lcom/dodonew/online/ui/MapActivity;->netBar:Lcom/dodonew/online/bean/NetBar;

    invoke-virtual {v1}, Lcom/dodonew/online/bean/NetBar;->getLatitude()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iget-object v1, p0, Lcom/dodonew/online/ui/MapActivity;->netBar:Lcom/dodonew/online/bean/NetBar;

    invoke-virtual {v1}, Lcom/dodonew/online/bean/NetBar;->getLongitude()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    iput-object v0, p0, Lcom/dodonew/online/ui/MapActivity;->NETBAR:Lcom/amap/api/maps/model/LatLng;

    .line 58
    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    sget-object v1, Lcom/dodonew/online/DodonewOnlineApplication;->myLocation:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v2

    sget-object v1, Lcom/dodonew/online/DodonewOnlineApplication;->myLocation:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    iput-object v0, p0, Lcom/dodonew/online/ui/MapActivity;->LOCATION:Lcom/amap/api/maps/model/LatLng;

    .line 59
    iget-object v0, p0, Lcom/dodonew/online/ui/MapActivity;->aMap:Lcom/amap/api/maps/AMap;

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/dodonew/online/ui/MapActivity;->mapView:Lcom/amap/api/maps/MapView;

    invoke-virtual {v0}, Lcom/amap/api/maps/MapView;->getMap()Lcom/amap/api/maps/AMap;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/MapActivity;->aMap:Lcom/amap/api/maps/AMap;

    .line 61
    invoke-direct {p0}, Lcom/dodonew/online/ui/MapActivity;->setUpMap()V

    .line 64
    :cond_0
    return-void
.end method

.method private setUpMap()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/dodonew/online/ui/MapActivity;->aMap:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0, p0}, Lcom/amap/api/maps/AMap;->setOnMapLoadedListener(Lcom/amap/api/maps/AMap$OnMapLoadedListener;)V

    .line 71
    iget-object v0, p0, Lcom/dodonew/online/ui/MapActivity;->aMap:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0, p0}, Lcom/amap/api/maps/AMap;->setInfoWindowAdapter(Lcom/amap/api/maps/AMap$InfoWindowAdapter;)V

    .line 72
    invoke-direct {p0}, Lcom/dodonew/online/ui/MapActivity;->addMarkersToMap()V

    .line 73
    return-void
.end method


# virtual methods
.method public getInfoContents(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;
    .locals 1
    .param p1, "marker"    # Lcom/amap/api/maps/model/Marker;

    .prologue
    .line 152
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInfoWindow(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;
    .locals 4
    .param p1, "marker"    # Lcom/amap/api/maps/model/Marker;

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/dodonew/online/ui/MapActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300c3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 146
    .local v0, "infoWindow":Landroid/view/View;
    invoke-virtual {p0, p1, v0}, Lcom/dodonew/online/ui/MapActivity;->initInfoWindowView(Lcom/amap/api/maps/model/Marker;Landroid/view/View;)V

    .line 147
    return-object v0
.end method

.method public initInfoWindowView(Lcom/amap/api/maps/model/Marker;Landroid/view/View;)V
    .locals 8
    .param p1, "marker"    # Lcom/amap/api/maps/model/Marker;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const v7, 0x7f0200d4

    .line 160
    const v6, 0x7f0d0230

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 161
    .local v0, "imageView":Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/dodonew/online/ui/MapActivity;->netBar:Lcom/dodonew/online/bean/NetBar;

    invoke-virtual {v6}, Lcom/dodonew/online/bean/NetBar;->getPicUrl()Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "picUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 163
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v6

    .line 164
    invoke-virtual {v6, v7}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v6

    .line 165
    invoke-virtual {v6, v7}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 167
    :cond_0
    invoke-virtual {p1}, Lcom/amap/api/maps/model/Marker;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 168
    .local v4, "title":Ljava/lang/String;
    const v6, 0x7f0d0066

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 169
    .local v5, "titleUi":Landroid/widget/TextView;
    if-eqz v4, :cond_1

    .line 170
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    :goto_0
    invoke-virtual {p1}, Lcom/amap/api/maps/model/Marker;->getSnippet()Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, "snippet":Ljava/lang/String;
    const v6, 0x7f0d0231

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 176
    .local v3, "snippetUi":Landroid/widget/TextView;
    if-eqz v2, :cond_2

    .line 177
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    :goto_1
    return-void

    .line 172
    .end local v2    # "snippet":Ljava/lang/String;
    .end local v3    # "snippetUi":Landroid/widget/TextView;
    :cond_1
    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 179
    .restart local v2    # "snippet":Ljava/lang/String;
    .restart local v3    # "snippetUi":Landroid/widget/TextView;
    :cond_2
    const-string v6, ""

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/dodonew/online/base/TitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f030032

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/MapActivity;->setContentView(I)V

    .line 46
    const v0, 0x7f0d00c4

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/MapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/MapView;

    iput-object v0, p0, Lcom/dodonew/online/ui/MapActivity;->mapView:Lcom/amap/api/maps/MapView;

    .line 47
    iget-object v0, p0, Lcom/dodonew/online/ui/MapActivity;->mapView:Lcom/amap/api/maps/MapView;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/MapView;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-direct {p0}, Lcom/dodonew/online/ui/MapActivity;->initView()V

    .line 49
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 217
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onDestroy()V

    .line 218
    iget-object v0, p0, Lcom/dodonew/online/ui/MapActivity;->mapView:Lcom/amap/api/maps/MapView;

    invoke-virtual {v0}, Lcom/amap/api/maps/MapView;->onDestroy()V

    .line 219
    return-void
.end method

.method public onMapLoaded()V
    .locals 3

    .prologue
    .line 137
    new-instance v1, Lcom/amap/api/maps/model/LatLngBounds$Builder;

    invoke-direct {v1}, Lcom/amap/api/maps/model/LatLngBounds$Builder;-><init>()V

    iget-object v2, p0, Lcom/dodonew/online/ui/MapActivity;->NETBAR:Lcom/amap/api/maps/model/LatLng;

    .line 138
    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/dodonew/online/ui/MapActivity;->LOCATION:Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->build()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v0

    .line 139
    .local v0, "bounds":Lcom/amap/api/maps/model/LatLngBounds;
    iget-object v1, p0, Lcom/dodonew/online/ui/MapActivity;->aMap:Lcom/amap/api/maps/AMap;

    const/16 v2, 0x12c

    invoke-static {v0, v2}, Lcom/amap/api/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/amap/api/maps/model/LatLngBounds;I)Lcom/amap/api/maps/CameraUpdate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/AMap;->moveCamera(Lcom/amap/api/maps/CameraUpdate;)V

    .line 140
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 198
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onPause()V

    .line 199
    iget-object v0, p0, Lcom/dodonew/online/ui/MapActivity;->mapView:Lcom/amap/api/maps/MapView;

    invoke-virtual {v0}, Lcom/amap/api/maps/MapView;->onPause()V

    .line 200
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 201
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 188
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onResume()V

    .line 189
    iget-object v0, p0, Lcom/dodonew/online/ui/MapActivity;->mapView:Lcom/amap/api/maps/MapView;

    invoke-virtual {v0}, Lcom/amap/api/maps/MapView;->onResume()V

    .line 190
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 191
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 208
    invoke-super {p0, p1}, Lcom/dodonew/online/base/TitleActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 209
    iget-object v0, p0, Lcom/dodonew/online/ui/MapActivity;->mapView:Lcom/amap/api/maps/MapView;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/MapView;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 210
    return-void
.end method
