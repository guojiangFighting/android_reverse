.class public Lcom/dodonew/online/bean/ActivePage;
.super Ljava/lang/Object;
.source "ActivePage.java"


# instance fields
.field private pageCount:I

.field private result:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Active;",
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
.method public getPageCount()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/dodonew/online/bean/ActivePage;->pageCount:I

    return v0
.end method

.method public getResult()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Active;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14
    iget-object v0, p0, Lcom/dodonew/online/bean/ActivePage;->result:Ljava/util/List;

    return-object v0
.end method

.method public setPageCount(I)V
    .locals 0
    .param p1, "pageCount"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/dodonew/online/bean/ActivePage;->pageCount:I

    .line 27
    return-void
.end method

.method public setResult(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Active;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/Active;>;"
    iput-object p1, p0, Lcom/dodonew/online/bean/ActivePage;->result:Ljava/util/List;

    .line 19
    return-void
.end method
