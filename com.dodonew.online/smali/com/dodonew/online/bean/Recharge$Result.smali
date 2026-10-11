.class public Lcom/dodonew/online/bean/Recharge$Result;
.super Ljava/lang/Object;
.source "Recharge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/bean/Recharge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Result"
.end annotation


# instance fields
.field private extraPresentCreditRadio:Ljava/lang/String;

.field private maxCreditAmount:Ljava/lang/String;

.field private minCreditAmount:Ljava/lang/String;

.field private policyInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Policy;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/dodonew/online/bean/Recharge;


# direct methods
.method public constructor <init>(Lcom/dodonew/online/bean/Recharge;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/bean/Recharge;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/dodonew/online/bean/Recharge$Result;->this$0:Lcom/dodonew/online/bean/Recharge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExtraPresentCreditRadio()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/dodonew/online/bean/Recharge$Result;->extraPresentCreditRadio:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxCreditAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/dodonew/online/bean/Recharge$Result;->maxCreditAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getMinCreditAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/dodonew/online/bean/Recharge$Result;->minCreditAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getPolicyInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Policy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/dodonew/online/bean/Recharge$Result;->policyInfo:Ljava/util/List;

    return-object v0
.end method

.method public setExtraPresentCreditRadio(Ljava/lang/String;)V
    .locals 0
    .param p1, "extraPresentCreditRadio"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/dodonew/online/bean/Recharge$Result;->extraPresentCreditRadio:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setMaxCreditAmount(Ljava/lang/String;)V
    .locals 0
    .param p1, "maxCreditAmount"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/dodonew/online/bean/Recharge$Result;->maxCreditAmount:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setMinCreditAmount(Ljava/lang/String;)V
    .locals 0
    .param p1, "minCreditAmount"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/dodonew/online/bean/Recharge$Result;->minCreditAmount:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setPolicyInfo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Policy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "policyInfo":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/Policy;>;"
    iput-object p1, p0, Lcom/dodonew/online/bean/Recharge$Result;->policyInfo:Ljava/util/List;

    .line 56
    return-void
.end method
