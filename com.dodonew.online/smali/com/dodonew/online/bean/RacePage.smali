.class public Lcom/dodonew/online/bean/RacePage;
.super Ljava/lang/Object;
.source "RacePage.java"


# instance fields
.field private currentPage:Ljava/lang/String;

.field private pageCount:Ljava/lang/String;

.field private pageNo:Ljava/lang/String;

.field private pageSize:Ljava/lang/String;

.field private results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Race;",
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
.method public getCurrentPage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/dodonew/online/bean/RacePage;->currentPage:Ljava/lang/String;

    return-object v0
.end method

.method public getPageCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dodonew/online/bean/RacePage;->pageCount:Ljava/lang/String;

    return-object v0
.end method

.method public getPageNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/dodonew/online/bean/RacePage;->pageNo:Ljava/lang/String;

    return-object v0
.end method

.method public getPageSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/dodonew/online/bean/RacePage;->pageSize:Ljava/lang/String;

    return-object v0
.end method

.method public getResults()Ljava/util/List;
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
    .line 49
    iget-object v0, p0, Lcom/dodonew/online/bean/RacePage;->results:Ljava/util/List;

    return-object v0
.end method

.method public setCurrentPage(Ljava/lang/String;)V
    .locals 0
    .param p1, "currentPage"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/dodonew/online/bean/RacePage;->currentPage:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setPageCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "pageCount"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/dodonew/online/bean/RacePage;->pageCount:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setPageNo(Ljava/lang/String;)V
    .locals 0
    .param p1, "pageNo"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/dodonew/online/bean/RacePage;->pageNo:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setPageSize(Ljava/lang/String;)V
    .locals 0
    .param p1, "pageSize"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/dodonew/online/bean/RacePage;->pageSize:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setResults(Ljava/util/List;)V
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
    .line 53
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/Race;>;"
    iput-object p1, p0, Lcom/dodonew/online/bean/RacePage;->results:Ljava/util/List;

    .line 54
    return-void
.end method
