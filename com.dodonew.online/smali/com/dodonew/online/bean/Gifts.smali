.class public Lcom/dodonew/online/bean/Gifts;
.super Ljava/lang/Object;
.source "Gifts.java"


# instance fields
.field private convertSum:Ljava/lang/String;

.field private gifts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Gift;",
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
.method public getConvertSum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/dodonew/online/bean/Gifts;->convertSum:Ljava/lang/String;

    return-object v0
.end method

.method public getGifts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Gift;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/dodonew/online/bean/Gifts;->gifts:Ljava/util/List;

    return-object v0
.end method

.method public setConvertSum(Ljava/lang/String;)V
    .locals 0
    .param p1, "convertSum"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/dodonew/online/bean/Gifts;->convertSum:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setGifts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Gift;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, "gifts":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/Gift;>;"
    iput-object p1, p0, Lcom/dodonew/online/bean/Gifts;->gifts:Ljava/util/List;

    .line 26
    return-void
.end method
