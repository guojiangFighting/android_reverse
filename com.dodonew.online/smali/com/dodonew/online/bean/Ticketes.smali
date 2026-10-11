.class public Lcom/dodonew/online/bean/Ticketes;
.super Ljava/lang/Object;
.source "Ticketes.java"


# instance fields
.field private result:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Ticket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
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
            "Lcom/dodonew/online/bean/Ticket;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16
    iget-object v0, p0, Lcom/dodonew/online/bean/Ticketes;->result:Ljava/util/List;

    return-object v0
.end method

.method public setResult(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Ticket;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/Ticket;>;"
    iput-object p1, p0, Lcom/dodonew/online/bean/Ticketes;->result:Ljava/util/List;

    .line 21
    return-void
.end method
