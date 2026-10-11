.class public Lcom/dodonew/online/bean/Category;
.super Ljava/lang/Object;
.source "Category.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/dodonew/online/bean/Category;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private categoryId:Ljava/lang/String;

.field private categoryName:Ljava/lang/String;

.field private categorydata:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Race;",
            ">;"
        }
    .end annotation
.end field

.field private playTime:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/dodonew/online/bean/Category$1;

    invoke-direct {v0}, Lcom/dodonew/online/bean/Category$1;-><init>()V

    sput-object v0, Lcom/dodonew/online/bean/Category;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Category;->categoryId:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Category;->categoryName:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Category;->playTime:Ljava/lang/String;

    .line 70
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public getCategoryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dodonew/online/bean/Category;->categoryId:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/dodonew/online/bean/Category;->categoryName:Ljava/lang/String;

    return-object v0
.end method

.method public getCategorydata()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Race;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lcom/dodonew/online/bean/Category;->categorydata:Ljava/util/List;

    return-object v0
.end method

.method public getPlayTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dodonew/online/bean/Category;->playTime:Ljava/lang/String;

    return-object v0
.end method

.method public setCategoryId(Ljava/lang/String;)V
    .locals 0
    .param p1, "categoryId"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/dodonew/online/bean/Category;->categoryId:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setCategoryName(Ljava/lang/String;)V
    .locals 0
    .param p1, "categoryName"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/dodonew/online/bean/Category;->categoryName:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setCategorydata(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Race;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "categorydata":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/Race;>;"
    iput-object p1, p0, Lcom/dodonew/online/bean/Category;->categorydata:Ljava/util/List;

    .line 25
    return-void
.end method

.method public setPlayTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "playTime"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/dodonew/online/bean/Category;->playTime:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lcom/dodonew/online/bean/Category;->categoryId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/dodonew/online/bean/Category;->categoryName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/dodonew/online/bean/Category;->playTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    return-void
.end method
