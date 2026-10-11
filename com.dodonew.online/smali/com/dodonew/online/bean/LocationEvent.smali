.class public Lcom/dodonew/online/bean/LocationEvent;
.super Ljava/lang/Object;
.source "LocationEvent.java"


# instance fields
.field private aMapLocation:Lcom/amap/api/location/AMapLocation;


# direct methods
.method public constructor <init>(Lcom/amap/api/location/AMapLocation;)V
    .locals 0
    .param p1, "aMapLocation"    # Lcom/amap/api/location/AMapLocation;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/dodonew/online/bean/LocationEvent;->aMapLocation:Lcom/amap/api/location/AMapLocation;

    .line 13
    return-void
.end method


# virtual methods
.method public getaMapLocation()Lcom/amap/api/location/AMapLocation;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/dodonew/online/bean/LocationEvent;->aMapLocation:Lcom/amap/api/location/AMapLocation;

    return-object v0
.end method

.method public setaMapLocation(Lcom/amap/api/location/AMapLocation;)V
    .locals 0
    .param p1, "aMapLocation"    # Lcom/amap/api/location/AMapLocation;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/dodonew/online/bean/LocationEvent;->aMapLocation:Lcom/amap/api/location/AMapLocation;

    .line 21
    return-void
.end method
