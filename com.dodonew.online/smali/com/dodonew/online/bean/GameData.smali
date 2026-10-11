.class public Lcom/dodonew/online/bean/GameData;
.super Ljava/lang/Object;
.source "GameData.java"


# instance fields
.field public items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/GameDetail;",
            ">;"
        }
    .end annotation
.end field

.field private limit:I

.field private offset:I

.field private totalItems:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLimit()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/dodonew/online/bean/GameData;->limit:I

    return v0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/dodonew/online/bean/GameData;->offset:I

    return v0
.end method

.method public getTotalItems()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/dodonew/online/bean/GameData;->totalItems:I

    return v0
.end method

.method public setLimit(I)V
    .locals 0
    .param p1, "limit"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/dodonew/online/bean/GameData;->limit:I

    .line 20
    return-void
.end method

.method public setOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/dodonew/online/bean/GameData;->offset:I

    .line 28
    return-void
.end method

.method public setTotalItems(I)V
    .locals 0
    .param p1, "totalItems"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/dodonew/online/bean/GameData;->totalItems:I

    .line 36
    return-void
.end method
