.class public Lcom/dodonew/online/bean/CardEvent;
.super Ljava/lang/Object;
.source "CardEvent.java"


# instance fields
.field private card:Lcom/dodonew/online/bean/Card;


# direct methods
.method public constructor <init>(Lcom/dodonew/online/bean/Card;)V
    .locals 0
    .param p1, "card"    # Lcom/dodonew/online/bean/Card;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/dodonew/online/bean/CardEvent;->card:Lcom/dodonew/online/bean/Card;

    .line 12
    return-void
.end method


# virtual methods
.method public getCard()Lcom/dodonew/online/bean/Card;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/dodonew/online/bean/CardEvent;->card:Lcom/dodonew/online/bean/Card;

    return-object v0
.end method

.method public setCard(Lcom/dodonew/online/bean/Card;)V
    .locals 0
    .param p1, "card"    # Lcom/dodonew/online/bean/Card;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/dodonew/online/bean/CardEvent;->card:Lcom/dodonew/online/bean/Card;

    .line 20
    return-void
.end method
