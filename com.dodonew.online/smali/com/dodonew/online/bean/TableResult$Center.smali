.class public Lcom/dodonew/online/bean/TableResult$Center;
.super Ljava/lang/Object;
.source "TableResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/bean/TableResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Center"
.end annotation


# instance fields
.field private allTerm:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Table;",
            ">;"
        }
    .end annotation
.end field

.field public code:Ljava/lang/String;

.field private defaultSet:Lcom/dodonew/online/bean/TableArea;

.field final synthetic this$0:Lcom/dodonew/online/bean/TableResult;


# direct methods
.method public constructor <init>(Lcom/dodonew/online/bean/TableResult;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/bean/TableResult;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/dodonew/online/bean/TableResult$Center;->this$0:Lcom/dodonew/online/bean/TableResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllTerm()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Table;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/dodonew/online/bean/TableResult$Center;->allTerm:Ljava/util/List;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/dodonew/online/bean/TableResult$Center;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultSet()Lcom/dodonew/online/bean/TableArea;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/dodonew/online/bean/TableResult$Center;->defaultSet:Lcom/dodonew/online/bean/TableArea;

    return-object v0
.end method

.method public setAllTerm(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Table;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "allTerm":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/Table;>;"
    iput-object p1, p0, Lcom/dodonew/online/bean/TableResult$Center;->allTerm:Ljava/util/List;

    .line 31
    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/dodonew/online/bean/TableResult$Center;->code:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setDefaultSet(Lcom/dodonew/online/bean/TableArea;)V
    .locals 0
    .param p1, "defaultSet"    # Lcom/dodonew/online/bean/TableArea;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/dodonew/online/bean/TableResult$Center;->defaultSet:Lcom/dodonew/online/bean/TableArea;

    .line 47
    return-void
.end method
