.class public Lcom/dodonew/online/bean/Province;
.super Ljava/lang/Object;
.source "Province.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/dodonew/online/bean/Province;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/City;",
            ">;"
        }
    .end annotation
.end field

.field private domainid:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private spell:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcom/dodonew/online/bean/Province$1;

    invoke-direct {v0}, Lcom/dodonew/online/bean/Province$1;-><init>()V

    sput-object v0, Lcom/dodonew/online/bean/Province;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Province;->name:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Province;->spell:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Province;->domainid:Ljava/lang/String;

    .line 72
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/City;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dodonew/online/bean/Province;->children:Ljava/util/List;

    return-object v0
.end method

.method public getDomainid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/dodonew/online/bean/Province;->domainid:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/dodonew/online/bean/Province;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSpell()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dodonew/online/bean/Province;->spell:Ljava/lang/String;

    return-object v0
.end method

.method public setChildren(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/City;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "children":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/City;>;"
    iput-object p1, p0, Lcom/dodonew/online/bean/Province;->children:Ljava/util/List;

    .line 42
    return-void
.end method

.method public setDomainid(Ljava/lang/String;)V
    .locals 0
    .param p1, "domainid"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/dodonew/online/bean/Province;->domainid:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/dodonew/online/bean/Province;->name:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setSpell(Ljava/lang/String;)V
    .locals 0
    .param p1, "spell"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/dodonew/online/bean/Province;->spell:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/dodonew/online/bean/Province;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/dodonew/online/bean/Province;->spell:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/dodonew/online/bean/Province;->domainid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    return-void
.end method
