.class final Lcom/dodonew/online/bean/Race$1;
.super Ljava/lang/Object;
.source "Race.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/bean/Race;
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
        "Lcom/dodonew/online/bean/Race;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/dodonew/online/bean/Race;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 291
    new-instance v0, Lcom/dodonew/online/bean/Race;

    invoke-direct {v0, p1}, Lcom/dodonew/online/bean/Race;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 289
    invoke-virtual {p0, p1}, Lcom/dodonew/online/bean/Race$1;->createFromParcel(Landroid/os/Parcel;)Lcom/dodonew/online/bean/Race;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/dodonew/online/bean/Race;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 295
    new-array v0, p1, [Lcom/dodonew/online/bean/Race;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 289
    invoke-virtual {p0, p1}, Lcom/dodonew/online/bean/Race$1;->newArray(I)[Lcom/dodonew/online/bean/Race;

    move-result-object v0

    return-object v0
.end method
