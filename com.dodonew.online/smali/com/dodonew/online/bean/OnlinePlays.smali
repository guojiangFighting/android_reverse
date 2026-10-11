.class public Lcom/dodonew/online/bean/OnlinePlays;
.super Ljava/lang/Object;
.source "OnlinePlays.java"


# instance fields
.field private result:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/OnlinePlay;",
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
.method public getResult()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/OnlinePlay;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13
    iget-object v0, p0, Lcom/dodonew/online/bean/OnlinePlays;->result:Ljava/util/List;

    return-object v0
.end method

.method public setResult(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/OnlinePlay;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/OnlinePlay;>;"
    iput-object p1, p0, Lcom/dodonew/online/bean/OnlinePlays;->result:Ljava/util/List;

    .line 18
    return-void
.end method
