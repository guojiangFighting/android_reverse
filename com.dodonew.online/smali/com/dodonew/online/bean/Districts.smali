.class public Lcom/dodonew/online/bean/Districts;
.super Ljava/lang/Object;
.source "Districts.java"


# instance fields
.field private districts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/District;",
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
.method public getDistricts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/District;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12
    iget-object v0, p0, Lcom/dodonew/online/bean/Districts;->districts:Ljava/util/List;

    return-object v0
.end method

.method public setDistricts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/District;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p1, "districts":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/District;>;"
    iput-object p1, p0, Lcom/dodonew/online/bean/Districts;->districts:Ljava/util/List;

    .line 17
    return-void
.end method
