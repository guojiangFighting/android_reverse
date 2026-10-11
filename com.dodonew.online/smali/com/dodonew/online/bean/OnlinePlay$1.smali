.class final Lcom/dodonew/online/bean/OnlinePlay$1;
.super Ljava/lang/Object;
.source "OnlinePlay.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/bean/OnlinePlay;
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
        "Lcom/dodonew/online/bean/OnlinePlay;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/dodonew/online/bean/OnlinePlay;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 162
    new-instance v0, Lcom/dodonew/online/bean/OnlinePlay;

    invoke-direct {v0, p1}, Lcom/dodonew/online/bean/OnlinePlay;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Lcom/dodonew/online/bean/OnlinePlay$1;->createFromParcel(Landroid/os/Parcel;)Lcom/dodonew/online/bean/OnlinePlay;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/dodonew/online/bean/OnlinePlay;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 166
    new-array v0, p1, [Lcom/dodonew/online/bean/OnlinePlay;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Lcom/dodonew/online/bean/OnlinePlay$1;->newArray(I)[Lcom/dodonew/online/bean/OnlinePlay;

    move-result-object v0

    return-object v0
.end method
