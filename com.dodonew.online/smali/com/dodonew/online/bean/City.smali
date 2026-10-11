.class public Lcom/dodonew/online/bean/City;
.super Ljava/lang/Object;
.source "City.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/dodonew/online/bean/City;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private domainid:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private province:Ljava/lang/String;

.field private spell:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/dodonew/online/bean/City$1;

    invoke-direct {v0}, Lcom/dodonew/online/bean/City$1;-><init>()V

    sput-object v0, Lcom/dodonew/online/bean/City;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/City;->name:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/City;->domainid:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/City;->spell:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/City;->province:Ljava/lang/String;

    .line 69
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public getDomainid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/dodonew/online/bean/City;->domainid:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dodonew/online/bean/City;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dodonew/online/bean/City;->province:Ljava/lang/String;

    return-object v0
.end method

.method public getSpell()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/dodonew/online/bean/City;->spell:Ljava/lang/String;

    return-object v0
.end method

.method public setDomainid(Ljava/lang/String;)V
    .locals 0
    .param p1, "domainid"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/dodonew/online/bean/City;->domainid:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/dodonew/online/bean/City;->name:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0
    .param p1, "province"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/dodonew/online/bean/City;->province:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setSpell(Ljava/lang/String;)V
    .locals 0
    .param p1, "spell"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/dodonew/online/bean/City;->spell:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lcom/dodonew/online/bean/City;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/dodonew/online/bean/City;->domainid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/dodonew/online/bean/City;->spell:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/dodonew/online/bean/City;->province:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    return-void
.end method
