.class final Lcom/dodonew/online/bean/City$1;
.super Ljava/lang/Object;
.source "City.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/bean/City;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/dodonew/online/bean/City;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/dodonew/online/bean/City;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 73
    new-instance v0, Lcom/dodonew/online/bean/City;

    invoke-direct {v0, p1}, Lcom/dodonew/online/bean/City;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/dodonew/online/bean/City$1;->createFromParcel(Landroid/os/Parcel;)Lcom/dodonew/online/bean/City;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/dodonew/online/bean/City;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 77
    new-array v0, p1, [Lcom/dodonew/online/bean/City;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/dodonew/online/bean/City$1;->newArray(I)[Lcom/dodonew/online/bean/City;

    move-result-object v0

    return-object v0
.end method
