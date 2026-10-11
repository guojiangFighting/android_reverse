.class public Lcom/dodonew/online/bean/MenuData;
.super Ljava/lang/Object;
.source "MenuData.java"


# instance fields
.field private menuTypeId:Ljava/lang/String;

.field private menuTypeName:Ljava/lang/String;

.field private menus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Menu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "menuTypeId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Menu;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p2, "menus":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/Menu;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/dodonew/online/bean/MenuData;->menuTypeId:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/dodonew/online/bean/MenuData;->menus:Ljava/util/List;

    .line 18
    return-void
.end method


# virtual methods
.method public getMenuTypeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dodonew/online/bean/MenuData;->menuTypeId:Ljava/lang/String;

    return-object v0
.end method

.method public getMenuTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/dodonew/online/bean/MenuData;->menuTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public getMenus()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Menu;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/dodonew/online/bean/MenuData;->menus:Ljava/util/List;

    return-object v0
.end method

.method public setMenuTypeId(Ljava/lang/String;)V
    .locals 0
    .param p1, "menuTypeId"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/dodonew/online/bean/MenuData;->menuTypeId:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setMenuTypeName(Ljava/lang/String;)V
    .locals 0
    .param p1, "menuTypeName"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/dodonew/online/bean/MenuData;->menuTypeName:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setMenus(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Menu;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "menus":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/Menu;>;"
    iput-object p1, p0, Lcom/dodonew/online/bean/MenuData;->menus:Ljava/util/List;

    .line 34
    return-void
.end method
