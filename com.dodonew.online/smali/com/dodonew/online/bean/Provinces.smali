.class public Lcom/dodonew/online/bean/Provinces;
.super Ljava/lang/Object;
.source "Provinces.java"


# instance fields
.field private provinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Province;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProvinces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Province;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12
    iget-object v0, p0, Lcom/dodonew/online/bean/Provinces;->provinces:Ljava/util/List;

    return-object v0
.end method

.method public setProvinces(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Province;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p1, "provinces":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/Province;>;"
    iput-object p1, p0, Lcom/dodonew/online/bean/Provinces;->provinces:Ljava/util/List;

    .line 17
    return-void
.end method
