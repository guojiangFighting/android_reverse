.class public Lcom/dodonew/online/bean/TopicType;
.super Ljava/lang/Object;
.source "TopicType.java"


# instance fields
.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/dodonew/online/bean/TopicType;->id:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/dodonew/online/bean/TopicType;->name:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/dodonew/online/bean/TopicType;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dodonew/online/bean/TopicType;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/dodonew/online/bean/TopicType;->id:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/dodonew/online/bean/TopicType;->name:Ljava/lang/String;

    .line 29
    return-void
.end method
