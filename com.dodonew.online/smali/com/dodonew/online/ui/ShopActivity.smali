.class public Lcom/dodonew/online/ui/ShopActivity;
.super Lcom/dodonew/online/base/TitleActivity;
.source "ShopActivity.java"


# instance fields
.field private DEFAULT_TYPE:Ljava/lang/reflect/Type;

.field private addShopAnim:Lcom/dodonew/online/util/AddShopAnim;

.field private buyImg:Landroid/widget/ImageView;

.field private buyNum:I

.field private buyNumView:Lcom/dodonew/online/widget/BadgeView;

.field private choiceMenuAdapter:Lcom/dodonew/online/adapter/ChoiceMenuAdapter;

.field private chooseMenus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Menu;",
            ">;"
        }
    .end annotation
.end field

.field private ibChart:Landroid/widget/ImageButton;

.field private isCart:Z

.field private isChecked:Z

.field private mapHeader:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/dodonew/online/bean/MenuType;",
            ">;"
        }
    .end annotation
.end field

.field private menu:Lcom/dodonew/online/bean/Menu;

.field private menuAdapter:Lcom/dodonew/online/adapter/MenuAdapter;

.field private menuDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/MenuData;",
            ">;"
        }
    .end annotation
.end field

.field private menuManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private menuType:Lcom/dodonew/online/bean/MenuType;

.field private menuTypeAdapter:Lcom/dodonew/online/adapter/MenuTypeAdapter;

.field private menuTypeId:Ljava/lang/String;

.field private menuTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/MenuType;",
            ">;"
        }
    .end annotation
.end field

.field private menunTypeID:Ljava/lang/String;

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

.field private mvMenu:Lcom/dodonew/online/widget/MultiStateView;

.field private mvType:Lcom/dodonew/online/widget/MultiStateView;

.field private para:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private request:Lcom/dodonew/online/http/GsonRequest;

.field private rvGoods:Landroid/support/v7/widget/RecyclerView;

.field private rvMenu:Landroid/support/v7/widget/RecyclerView;

.field private rvType:Landroid/support/v7/widget/RecyclerView;

.field private selection:I

.field private shopCartView:Lcom/dodonew/online/view/ShopCartView;

.field private slidingUpPanelLayout:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

.field private totalPrice:F

.field private typeManager:Landroid/support/v7/widget/LinearLayoutManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Lcom/dodonew/online/base/TitleActivity;-><init>()V

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->menuTypeId:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->menunTypeID:Ljava/lang/String;

    .line 70
    iput v1, p0, Lcom/dodonew/online/ui/ShopActivity;->selection:I

    .line 74
    iput-boolean v1, p0, Lcom/dodonew/online/ui/ShopActivity;->isChecked:Z

    .line 78
    iput v1, p0, Lcom/dodonew/online/ui/ShopActivity;->buyNum:I

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/dodonew/online/ui/ShopActivity;->totalPrice:F

    .line 86
    iput-boolean v1, p0, Lcom/dodonew/online/ui/ShopActivity;->isCart:Z

    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/ui/ShopActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/ShopActivity;

    .prologue
    .line 50
    iget v0, p0, Lcom/dodonew/online/ui/ShopActivity;->buyNum:I

    return v0
.end method

.method static synthetic access$100(Lcom/dodonew/online/ui/ShopActivity;)Lcom/dodonew/online/widget/BadgeView;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/ShopActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->buyNumView:Lcom/dodonew/online/widget/BadgeView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/dodonew/online/ui/ShopActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/ShopActivity;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/dodonew/online/ui/ShopActivity;->setMenuAdapter()V

    return-void
.end method

.method static synthetic access$1100(Lcom/dodonew/online/ui/ShopActivity;)Lcom/dodonew/online/widget/MultiStateView;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/ShopActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->mvMenu:Lcom/dodonew/online/widget/MultiStateView;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/dodonew/online/ui/ShopActivity;Lcom/dodonew/online/bean/MenuType;)Lcom/dodonew/online/bean/MenuType;
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/ShopActivity;
    .param p1, "x1"    # Lcom/dodonew/online/bean/MenuType;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/dodonew/online/ui/ShopActivity;->menuType:Lcom/dodonew/online/bean/MenuType;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/dodonew/online/ui/ShopActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/ShopActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->menuTypes:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/dodonew/online/ui/ShopActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/ShopActivity;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/dodonew/online/ui/ShopActivity;->isChecked:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/dodonew/online/ui/ShopActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/ShopActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/dodonew/online/ui/ShopActivity;->isChecked:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/dodonew/online/ui/ShopActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/ShopActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->menunTypeID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/dodonew/online/ui/ShopActivity;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/ShopActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/ShopActivity;->getRvmneuScrollPos(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/dodonew/online/ui/ShopActivity;)Landroid/support/v7/widget/LinearLayoutManager;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/ShopActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->menuManager:Landroid/support/v7/widget/LinearLayoutManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/dodonew/online/ui/ShopActivity;)Lcom/dodonew/online/adapter/MenuTypeAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/ShopActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->menuTypeAdapter:Lcom/dodonew/online/adapter/MenuTypeAdapter;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/dodonew/online/ui/ShopActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/ShopActivity;

    .prologue
    .line 50
    iget v0, p0, Lcom/dodonew/online/ui/ShopActivity;->selection:I

    return v0
.end method

.method static synthetic access$200(Lcom/dodonew/online/ui/ShopActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/ShopActivity;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/dodonew/online/ui/ShopActivity;->setTotal()V

    return-void
.end method

.method static synthetic access$2000(Lcom/dodonew/online/ui/ShopActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/ShopActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->menus:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/dodonew/online/ui/ShopActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/ShopActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->menuTypeId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/dodonew/online/ui/ShopActivity;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/ShopActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/ShopActivity;->filterData(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/dodonew/online/ui/ShopActivity;)Landroid/support/v7/widget/LinearLayoutManager;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/ShopActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->typeManager:Landroid/support/v7/widget/LinearLayoutManager;

    return-object v0
.end method

.method static synthetic access$302(Lcom/dodonew/online/ui/ShopActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/ShopActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/dodonew/online/ui/ShopActivity;->isCart:Z

    return p1
.end method

.method static synthetic access$400(Lcom/dodonew/online/ui/ShopActivity;Lcom/dodonew/online/bean/Menu;I)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/ShopActivity;
    .param p1, "x1"    # Lcom/dodonew/online/bean/Menu;
    .param p2, "x2"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/dodonew/online/ui/ShopActivity;->delCart(Lcom/dodonew/online/bean/Menu;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/dodonew/online/ui/ShopActivity;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/ShopActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/ShopActivity;->startAnim(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$600(Lcom/dodonew/online/ui/ShopActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/ShopActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/ShopActivity;->setMenuTypes(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$700(Lcom/dodonew/online/ui/ShopActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/ShopActivity;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/dodonew/online/ui/ShopActivity;->setMenuTypeAdapter()V

    return-void
.end method

.method static synthetic access$800(Lcom/dodonew/online/ui/ShopActivity;)Lcom/dodonew/online/widget/MultiStateView;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/ShopActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->mvType:Lcom/dodonew/online/widget/MultiStateView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/dodonew/online/ui/ShopActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/ShopActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/ShopActivity;->setMenus(Ljava/util/List;)V

    return-void
.end method

.method private delCart(Lcom/dodonew/online/bean/Menu;I)V
    .locals 5
    .param p1, "menu"    # Lcom/dodonew/online/bean/Menu;
    .param p2, "tag"    # I

    .prologue
    const/4 v4, 0x0

    .line 338
    if-nez p2, :cond_3

    .line 339
    iget v2, p0, Lcom/dodonew/online/ui/ShopActivity;->totalPrice:F

    invoke-virtual {p1}, Lcom/dodonew/online/bean/Menu;->getMenuPrice1()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/dodonew/online/ui/ShopActivity;->totalPrice:F

    .line 343
    :goto_0
    const/4 v1, -0x1

    .line 344
    .local v1, "postion":I
    iget-boolean v2, p0, Lcom/dodonew/online/ui/ShopActivity;->isCart:Z

    if-eqz v2, :cond_0

    .line 345
    iget-object v2, p0, Lcom/dodonew/online/ui/ShopActivity;->menuAdapter:Lcom/dodonew/online/adapter/MenuAdapter;

    invoke-virtual {v2}, Lcom/dodonew/online/adapter/MenuAdapter;->notifyDataSetChanged()V

    .line 347
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/dodonew/online/ui/ShopActivity;->chooseMenus:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 348
    iget-object v2, p0, Lcom/dodonew/online/ui/ShopActivity;->chooseMenus:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dodonew/online/bean/Menu;

    invoke-virtual {v2}, Lcom/dodonew/online/bean/Menu;->getMenuID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dodonew/online/bean/Menu;->getMenuID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 349
    move v1, v0

    .line 353
    :cond_1
    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    .line 354
    const/4 v2, 0x1

    if-ne p2, v2, :cond_5

    .line 355
    iget v2, p0, Lcom/dodonew/online/ui/ShopActivity;->buyNum:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/dodonew/online/ui/ShopActivity;->buyNum:I

    .line 356
    invoke-virtual {p1}, Lcom/dodonew/online/bean/Menu;->getAmount()I

    move-result v2

    if-nez v2, :cond_2

    .line 357
    iget-object v2, p0, Lcom/dodonew/online/ui/ShopActivity;->chooseMenus:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 358
    iget-object v2, p0, Lcom/dodonew/online/ui/ShopActivity;->choiceMenuAdapter:Lcom/dodonew/online/adapter/ChoiceMenuAdapter;

    invoke-virtual {v2, v1}, Lcom/dodonew/online/adapter/ChoiceMenuAdapter;->notifyItemRemoved(I)V

    .line 360
    :cond_2
    iget-object v2, p0, Lcom/dodonew/online/ui/ShopActivity;->buyNumView:Lcom/dodonew/online/widget/BadgeView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/dodonew/online/ui/ShopActivity;->buyNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/dodonew/online/widget/BadgeView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    iget-object v2, p0, Lcom/dodonew/online/ui/ShopActivity;->buyNumView:Lcom/dodonew/online/widget/BadgeView;

    invoke-virtual {v2}, Lcom/dodonew/online/widget/BadgeView;->show()V

    .line 362
    invoke-direct {p0}, Lcom/dodonew/online/ui/ShopActivity;->setTotal()V

    .line 366
    :goto_2
    iget-object v2, p0, Lcom/dodonew/online/ui/ShopActivity;->choiceMenuAdapter:Lcom/dodonew/online/adapter/ChoiceMenuAdapter;

    invoke-virtual {v2, v1}, Lcom/dodonew/online/adapter/ChoiceMenuAdapter;->notifyItemChanged(I)V

    .line 372
    :goto_3
    return-void

    .line 341
    .end local v0    # "i":I
    .end local v1    # "postion":I
    :cond_3
    iget v2, p0, Lcom/dodonew/online/ui/ShopActivity;->totalPrice:F

    invoke-virtual {p1}, Lcom/dodonew/online/bean/Menu;->getMenuPrice1()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/dodonew/online/ui/ShopActivity;->totalPrice:F

    goto :goto_0

    .line 347
    .restart local v0    # "i":I
    .restart local v1    # "postion":I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 364
    :cond_5
    iget v2, p0, Lcom/dodonew/online/ui/ShopActivity;->buyNum:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/dodonew/online/ui/ShopActivity;->buyNum:I

    goto :goto_2

    .line 368
    :cond_6
    iget-object v2, p0, Lcom/dodonew/online/ui/ShopActivity;->chooseMenus:Ljava/util/List;

    invoke-interface {v2, v4, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 369
    iget-object v2, p0, Lcom/dodonew/online/ui/ShopActivity;->choiceMenuAdapter:Lcom/dodonew/online/adapter/ChoiceMenuAdapter;

    invoke-virtual {v2, v4}, Lcom/dodonew/online/adapter/ChoiceMenuAdapter;->notifyItemInserted(I)V

    .line 370
    iget v2, p0, Lcom/dodonew/online/ui/ShopActivity;->buyNum:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/dodonew/online/ui/ShopActivity;->buyNum:I

    goto :goto_3
.end method

.method private filterData(Ljava/lang/String;)I
    .locals 2
    .param p1, "menuTypeId"    # Ljava/lang/String;

    .prologue
    .line 467
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/dodonew/online/ui/ShopActivity;->menuDatas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 468
    iget-object v1, p0, Lcom/dodonew/online/ui/ShopActivity;->menuDatas:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/bean/MenuData;

    invoke-virtual {v1}, Lcom/dodonew/online/bean/MenuData;->getMenuTypeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 469
    iput-object p1, p0, Lcom/dodonew/online/ui/ShopActivity;->menuTypeId:Ljava/lang/String;

    .line 473
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 467
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 473
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getMenuTypeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "menuTyId"    # Ljava/lang/String;

    .prologue
    .line 387
    iget-object v1, p0, Lcom/dodonew/online/ui/ShopActivity;->menuTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/bean/MenuType;

    .line 388
    .local v0, "mt":Lcom/dodonew/online/bean/MenuType;
    invoke-virtual {v0}, Lcom/dodonew/online/bean/MenuType;->getMenuTypeID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 389
    invoke-virtual {v0}, Lcom/dodonew/online/bean/MenuType;->getMenuTypeName()Ljava/lang/String;

    move-result-object v1

    .line 392
    .end local v0    # "mt":Lcom/dodonew/online/bean/MenuType;
    :goto_0
    return-object v1

    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method private getRvmneuScrollPos(Ljava/lang/String;)I
    .locals 3
    .param p1, "menuTypeId"    # Ljava/lang/String;

    .prologue
    .line 477
    iget-object v1, p0, Lcom/dodonew/online/ui/ShopActivity;->mapHeader:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 478
    .local v0, "in":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/dodonew/online/ui/ShopActivity;->mapHeader:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/bean/MenuType;

    invoke-virtual {v1}, Lcom/dodonew/online/bean/MenuType;->getMenuTypeID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 479
    iput-object p1, p0, Lcom/dodonew/online/ui/ShopActivity;->menunTypeID:Ljava/lang/String;

    .line 480
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 483
    .end local v0    # "in":Ljava/lang/Integer;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initAddshopAnim()V
    .locals 3

    .prologue
    .line 133
    new-instance v0, Lcom/dodonew/online/util/AddShopAnim;

    iget-object v1, p0, Lcom/dodonew/online/ui/ShopActivity;->ibChart:Landroid/widget/ImageButton;

    new-instance v2, Lcom/dodonew/online/ui/ShopActivity$1;

    invoke-direct {v2, p0}, Lcom/dodonew/online/ui/ShopActivity$1;-><init>(Lcom/dodonew/online/ui/ShopActivity;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/dodonew/online/util/AddShopAnim;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/dodonew/online/util/AddShopAnim$OnAnimEndListener;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->addShopAnim:Lcom/dodonew/online/util/AddShopAnim;

    .line 141
    return-void
.end method

.method private initEvent()V
    .locals 2

    .prologue
    .line 433
    iget-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->rvType:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    iput-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->typeManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 434
    iget-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->rvMenu:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    iput-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->menuManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 435
    iget-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->rvMenu:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/dodonew/online/ui/ShopActivity$12;

    invoke-direct {v1, p0}, Lcom/dodonew/online/ui/ShopActivity$12;-><init>(Lcom/dodonew/online/ui/ShopActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 442
    iget-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->rvMenu:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/dodonew/online/ui/ShopActivity$13;

    invoke-direct {v1, p0}, Lcom/dodonew/online/ui/ShopActivity$13;-><init>(Lcom/dodonew/online/ui/ShopActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 464
    return-void
.end method

.method private initMenutypeEvent()V
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->menuTypeAdapter:Lcom/dodonew/online/adapter/MenuTypeAdapter;

    new-instance v1, Lcom/dodonew/online/ui/ShopActivity$11;

    invoke-direct {v1, p0}, Lcom/dodonew/online/ui/ShopActivity$11;-><init>(Lcom/dodonew/online/ui/ShopActivity;)V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/adapter/MenuTypeAdapter;->setOnItemClickListener(Lcom/dodonew/online/interfaces/OnItemClickListener;)V

    .line 430
    return-void
.end method

.method private initPara()V
    .locals 3

    .prologue
    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->para:Ljava/util/Map;

    .line 145
    iget-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->para:Ljava/util/Map;

    const-string v1, "storeId"

    const-string v2, "188"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->chooseMenus:Ljava/util/List;

    .line 147
    new-instance v0, Lcom/dodonew/online/adapter/ChoiceMenuAdapter;

    iget-object v1, p0, Lcom/dodonew/online/ui/ShopActivity;->chooseMenus:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/dodonew/online/adapter/ChoiceMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->choiceMenuAdapter:Lcom/dodonew/online/adapter/ChoiceMenuAdapter;

    .line 148
    iget-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->choiceMenuAdapter:Lcom/dodonew/online/adapter/ChoiceMenuAdapter;

    new-instance v1, Lcom/dodonew/online/ui/ShopActivity$2;

    invoke-direct {v1, p0}, Lcom/dodonew/online/ui/ShopActivity$2;-><init>(Lcom/dodonew/online/ui/ShopActivity;)V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/adapter/ChoiceMenuAdapter;->setOnViewClickListener(Lcom/dodonew/online/interfaces/OnViewClickListener;)V

    .line 165
    iget-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->rvGoods:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/dodonew/online/ui/ShopActivity;->choiceMenuAdapter:Lcom/dodonew/online/adapter/ChoiceMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 166
    invoke-direct {p0}, Lcom/dodonew/online/ui/ShopActivity;->setTotal()V

    .line 167
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 102
    const-string v0, "\u7f51\u5427\u5c0f\u5356\u90e8"

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/ShopActivity;->setTitle(Ljava/lang/String;)V

    .line 103
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/ShopActivity;->setNavigationIcon(I)V

    .line 104
    const v0, 0x7f0d011b

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/ShopActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    iput-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->slidingUpPanelLayout:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    .line 105
    const v0, 0x7f0d011f

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/ShopActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/MultiStateView;

    iput-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->mvType:Lcom/dodonew/online/widget/MultiStateView;

    .line 106
    const v0, 0x7f0d0121

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/ShopActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/MultiStateView;

    iput-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->mvMenu:Lcom/dodonew/online/widget/MultiStateView;

    .line 107
    const v0, 0x7f0d0120

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/ShopActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->rvType:Landroid/support/v7/widget/RecyclerView;

    .line 108
    const v0, 0x7f0d0122

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/ShopActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->rvMenu:Landroid/support/v7/widget/RecyclerView;

    .line 109
    const v0, 0x7f0d011d

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/ShopActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->rvGoods:Landroid/support/v7/widget/RecyclerView;

    .line 110
    iget-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->rvType:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 111
    iget-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->rvType:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 112
    iget-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->rvType:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 113
    iget-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->rvMenu:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 114
    iget-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->rvMenu:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 115
    iget-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->rvMenu:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 116
    iget-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->rvGoods:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 117
    iget-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->rvGoods:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 118
    iget-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->rvGoods:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 119
    const v0, 0x7f0d011c

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/ShopActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->ibChart:Landroid/widget/ImageButton;

    .line 120
    new-instance v0, Lcom/dodonew/online/widget/BadgeView;

    iget-object v1, p0, Lcom/dodonew/online/ui/ShopActivity;->ibChart:Landroid/widget/ImageButton;

    invoke-direct {v0, p0, v1}, Lcom/dodonew/online/widget/BadgeView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->buyNumView:Lcom/dodonew/online/widget/BadgeView;

    .line 121
    iget-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->buyNumView:Lcom/dodonew/online/widget/BadgeView;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/BadgeView;->setTextColor(I)V

    .line 122
    iget-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->buyNumView:Lcom/dodonew/online/widget/BadgeView;

    const/16 v1, 0xa

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/dodonew/online/widget/BadgeView;->setBackground(II)V

    .line 123
    iget-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->buyNumView:Lcom/dodonew/online/widget/BadgeView;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/BadgeView;->setTextSize(F)V

    .line 124
    iget-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->buyNumView:Lcom/dodonew/online/widget/BadgeView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/BadgeView;->setBadgePosition(I)V

    .line 125
    const v0, 0x7f0d011e

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/ShopActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/view/ShopCartView;

    iput-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->shopCartView:Lcom/dodonew/online/view/ShopCartView;

    .line 126
    invoke-direct {p0}, Lcom/dodonew/online/ui/ShopActivity;->initAddshopAnim()V

    .line 127
    return-void
.end method

.method private queryMenu()V
    .locals 5

    .prologue
    .line 199
    new-instance v0, Lcom/dodonew/online/ui/ShopActivity$6;

    invoke-direct {v0, p0}, Lcom/dodonew/online/ui/ShopActivity$6;-><init>(Lcom/dodonew/online/ui/ShopActivity;)V

    .line 200
    invoke-virtual {v0}, Lcom/dodonew/online/ui/ShopActivity$6;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 201
    new-instance v0, Lcom/dodonew/online/http/GsonRequest;

    const-string v1, "http://api.teashop.dodonew.com/teashop_api/"

    new-instance v2, Lcom/dodonew/online/ui/ShopActivity$7;

    invoke-direct {v2, p0}, Lcom/dodonew/online/ui/ShopActivity$7;-><init>(Lcom/dodonew/online/ui/ShopActivity;)V

    new-instance v3, Lcom/dodonew/online/ui/ShopActivity$8;

    invoke-direct {v3, p0}, Lcom/dodonew/online/ui/ShopActivity$8;-><init>(Lcom/dodonew/online/ui/ShopActivity;)V

    iget-object v4, p0, Lcom/dodonew/online/ui/ShopActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dodonew/online/http/GsonRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->request:Lcom/dodonew/online/http/GsonRequest;

    .line 218
    const-string v0, "MenuManager"

    const-string v1, "menuList"

    iget-object v2, p0, Lcom/dodonew/online/ui/ShopActivity;->para:Ljava/util/Map;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/ui/ShopActivity;->requestNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 219
    return-void
.end method

.method private queryMenuType()V
    .locals 5

    .prologue
    .line 173
    new-instance v0, Lcom/dodonew/online/ui/ShopActivity$3;

    invoke-direct {v0, p0}, Lcom/dodonew/online/ui/ShopActivity$3;-><init>(Lcom/dodonew/online/ui/ShopActivity;)V

    .line 174
    invoke-virtual {v0}, Lcom/dodonew/online/ui/ShopActivity$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 175
    new-instance v0, Lcom/dodonew/online/http/GsonRequest;

    const-string v1, "http://api.teashop.dodonew.com/teashop_api/"

    new-instance v2, Lcom/dodonew/online/ui/ShopActivity$4;

    invoke-direct {v2, p0}, Lcom/dodonew/online/ui/ShopActivity$4;-><init>(Lcom/dodonew/online/ui/ShopActivity;)V

    new-instance v3, Lcom/dodonew/online/ui/ShopActivity$5;

    invoke-direct {v3, p0}, Lcom/dodonew/online/ui/ShopActivity$5;-><init>(Lcom/dodonew/online/ui/ShopActivity;)V

    iget-object v4, p0, Lcom/dodonew/online/ui/ShopActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dodonew/online/http/GsonRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->request:Lcom/dodonew/online/http/GsonRequest;

    .line 192
    const-string v0, "MenuManager"

    const-string v1, "menuTypeList"

    iget-object v2, p0, Lcom/dodonew/online/ui/ShopActivity;->para:Ljava/util/Map;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/ui/ShopActivity;->requestNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 193
    return-void
.end method

.method private requestNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 403
    .local p3, "para":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->request:Lcom/dodonew/online/http/GsonRequest;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dodonew/online/http/GsonRequest;->addRequestMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 404
    iget-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->request:Lcom/dodonew/online/http/GsonRequest;

    invoke-static {v0, p0}, Lcom/dodonew/online/DodonewOnlineApplication;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    .line 405
    return-void
.end method

.method private setMenuAdapter()V
    .locals 4

    .prologue
    .line 300
    iget-object v1, p0, Lcom/dodonew/online/ui/ShopActivity;->menus:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 301
    iget-object v1, p0, Lcom/dodonew/online/ui/ShopActivity;->mvMenu:Lcom/dodonew/online/widget/MultiStateView;

    sget-object v2, Lcom/dodonew/online/widget/MultiStateView$ViewState;->CONTENT:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v1, v2}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    .line 305
    :goto_0
    iget-object v1, p0, Lcom/dodonew/online/ui/ShopActivity;->menuAdapter:Lcom/dodonew/online/adapter/MenuAdapter;

    if-nez v1, :cond_0

    .line 306
    new-instance v1, Lcom/dodonew/online/adapter/MenuAdapter;

    iget-object v2, p0, Lcom/dodonew/online/ui/ShopActivity;->menus:Ljava/util/List;

    iget-object v3, p0, Lcom/dodonew/online/ui/ShopActivity;->mapHeader:Ljava/util/Map;

    invoke-direct {v1, p0, v2, v3}, Lcom/dodonew/online/adapter/MenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;)V

    iput-object v1, p0, Lcom/dodonew/online/ui/ShopActivity;->menuAdapter:Lcom/dodonew/online/adapter/MenuAdapter;

    .line 307
    iget-object v1, p0, Lcom/dodonew/online/ui/ShopActivity;->rvMenu:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/dodonew/online/ui/ShopActivity;->menuAdapter:Lcom/dodonew/online/adapter/MenuAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 308
    new-instance v0, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;

    iget-object v1, p0, Lcom/dodonew/online/ui/ShopActivity;->menuAdapter:Lcom/dodonew/online/adapter/MenuAdapter;

    invoke-direct {v0, v1}, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;-><init>(Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersAdapter;)V

    .line 309
    .local v0, "headersDecor":Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;
    iget-object v1, p0, Lcom/dodonew/online/ui/ShopActivity;->rvMenu:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 310
    iget-object v1, p0, Lcom/dodonew/online/ui/ShopActivity;->menuAdapter:Lcom/dodonew/online/adapter/MenuAdapter;

    new-instance v2, Lcom/dodonew/online/ui/ShopActivity$9;

    invoke-direct {v2, p0, v0}, Lcom/dodonew/online/ui/ShopActivity$9;-><init>(Lcom/dodonew/online/ui/ShopActivity;Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;)V

    invoke-virtual {v1, v2}, Lcom/dodonew/online/adapter/MenuAdapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 316
    iget-object v1, p0, Lcom/dodonew/online/ui/ShopActivity;->menuAdapter:Lcom/dodonew/online/adapter/MenuAdapter;

    new-instance v2, Lcom/dodonew/online/ui/ShopActivity$10;

    invoke-direct {v2, p0}, Lcom/dodonew/online/ui/ShopActivity$10;-><init>(Lcom/dodonew/online/ui/ShopActivity;)V

    invoke-virtual {v1, v2}, Lcom/dodonew/online/adapter/MenuAdapter;->setOnViewClickListener(Lcom/dodonew/online/interfaces/OnViewClickListener;)V

    .line 334
    .end local v0    # "headersDecor":Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;
    :cond_0
    iget-object v1, p0, Lcom/dodonew/online/ui/ShopActivity;->menuAdapter:Lcom/dodonew/online/adapter/MenuAdapter;

    invoke-virtual {v1}, Lcom/dodonew/online/adapter/MenuAdapter;->notifyDataSetChanged()V

    .line 335
    return-void

    .line 303
    :cond_1
    iget-object v1, p0, Lcom/dodonew/online/ui/ShopActivity;->mvMenu:Lcom/dodonew/online/widget/MultiStateView;

    sget-object v2, Lcom/dodonew/online/widget/MultiStateView$ViewState;->EMPTY:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v1, v2}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    goto :goto_0
.end method

.method private setMenuTypeAdapter()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->menuTypeAdapter:Lcom/dodonew/online/adapter/MenuTypeAdapter;

    if-nez v0, :cond_0

    .line 244
    new-instance v0, Lcom/dodonew/online/adapter/MenuTypeAdapter;

    iget-object v1, p0, Lcom/dodonew/online/ui/ShopActivity;->menuTypes:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/dodonew/online/adapter/MenuTypeAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->menuTypeAdapter:Lcom/dodonew/online/adapter/MenuTypeAdapter;

    .line 245
    iget-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->rvType:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/dodonew/online/ui/ShopActivity;->menuTypeAdapter:Lcom/dodonew/online/adapter/MenuTypeAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->menuTypeAdapter:Lcom/dodonew/online/adapter/MenuTypeAdapter;

    invoke-virtual {v0}, Lcom/dodonew/online/adapter/MenuTypeAdapter;->notifyDataSetChanged()V

    .line 248
    invoke-direct {p0}, Lcom/dodonew/online/ui/ShopActivity;->initMenutypeEvent()V

    .line 249
    return-void
.end method

.method private setMenuTypes(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/MenuType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 228
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/MenuType;>;"
    iget-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->menuTypes:Ljava/util/List;

    if-nez v0, :cond_0

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->menuTypes:Ljava/util/List;

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->menuTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 232
    iget-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->menuTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 233
    iget-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->menuTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->mvType:Lcom/dodonew/online/widget/MultiStateView;

    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->CONTENT:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    .line 235
    iget-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->menuTypes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/bean/MenuType;

    iput-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->menuType:Lcom/dodonew/online/bean/MenuType;

    .line 236
    invoke-direct {p0}, Lcom/dodonew/online/ui/ShopActivity;->queryMenu()V

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->mvType:Lcom/dodonew/online/widget/MultiStateView;

    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->EMPTY:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    goto :goto_0
.end method

.method private setMenus(Ljava/util/List;)V
    .locals 13
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
    .line 257
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/Menu;>;"
    iget-object v7, p0, Lcom/dodonew/online/ui/ShopActivity;->menuDatas:Ljava/util/List;

    if-nez v7, :cond_0

    .line 258
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/dodonew/online/ui/ShopActivity;->menuDatas:Ljava/util/List;

    .line 259
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/dodonew/online/ui/ShopActivity;->menus:Ljava/util/List;

    .line 260
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/dodonew/online/ui/ShopActivity;->mapHeader:Ljava/util/Map;

    .line 265
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dodonew/online/bean/Menu;

    .line 266
    .local v3, "menu":Lcom/dodonew/online/bean/Menu;
    iget-object v7, p0, Lcom/dodonew/online/ui/ShopActivity;->menuDatas:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 267
    const/4 v0, 0x0

    .line 268
    .local v0, "hasData":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v7, p0, Lcom/dodonew/online/ui/ShopActivity;->menuDatas:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_3

    .line 269
    iget-object v7, p0, Lcom/dodonew/online/ui/ShopActivity;->menuDatas:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/dodonew/online/bean/MenuData;

    invoke-virtual {v7}, Lcom/dodonew/online/bean/MenuData;->getMenuTypeId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/dodonew/online/bean/Menu;->getMenuTypeId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 270
    iget-object v7, p0, Lcom/dodonew/online/ui/ShopActivity;->menuDatas:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/dodonew/online/bean/MenuData;

    invoke-virtual {v7}, Lcom/dodonew/online/bean/MenuData;->getMenus()Ljava/util/List;

    move-result-object v5

    .line 271
    .local v5, "menuList":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/Menu;>;"
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    const/4 v0, 0x1

    .line 268
    .end local v5    # "menuList":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/Menu;>;"
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 275
    :cond_3
    if-nez v0, :cond_1

    .line 276
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 277
    .restart local v5    # "menuList":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/Menu;>;"
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    iget-object v7, p0, Lcom/dodonew/online/ui/ShopActivity;->menuDatas:Ljava/util/List;

    new-instance v9, Lcom/dodonew/online/bean/MenuData;

    invoke-virtual {v3}, Lcom/dodonew/online/bean/Menu;->getMenuTypeId()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v5}, Lcom/dodonew/online/bean/MenuData;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 282
    .end local v0    # "hasData":Z
    .end local v1    # "i":I
    .end local v5    # "menuList":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/Menu;>;"
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .restart local v5    # "menuList":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/Menu;>;"
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    iget-object v7, p0, Lcom/dodonew/online/ui/ShopActivity;->menuDatas:Ljava/util/List;

    new-instance v9, Lcom/dodonew/online/bean/MenuData;

    invoke-virtual {v3}, Lcom/dodonew/online/bean/Menu;->getMenuTypeId()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v5}, Lcom/dodonew/online/bean/MenuData;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 288
    .end local v3    # "menu":Lcom/dodonew/online/bean/Menu;
    .end local v5    # "menuList":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/Menu;>;"
    :cond_5
    iget-object v7, p0, Lcom/dodonew/online/ui/ShopActivity;->menuDatas:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dodonew/online/bean/MenuData;

    .line 289
    .local v4, "menuData":Lcom/dodonew/online/bean/MenuData;
    invoke-virtual {v4}, Lcom/dodonew/online/bean/MenuData;->getMenus()Ljava/util/List;

    move-result-object v2

    .line 290
    .local v2, "ls":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/Menu;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dodonew/online/bean/Menu;

    .line 291
    .restart local v3    # "menu":Lcom/dodonew/online/bean/Menu;
    iget-object v9, p0, Lcom/dodonew/online/ui/ShopActivity;->menus:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 293
    .end local v3    # "menu":Lcom/dodonew/online/bean/Menu;
    :cond_6
    iget-object v8, p0, Lcom/dodonew/online/ui/ShopActivity;->menus:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v6, v8, -0x1

    .line 294
    .local v6, "size":I
    iget-object v8, p0, Lcom/dodonew/online/ui/ShopActivity;->mapHeader:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v10, Lcom/dodonew/online/bean/MenuType;

    invoke-virtual {v4}, Lcom/dodonew/online/bean/MenuData;->getMenuTypeId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Lcom/dodonew/online/bean/MenuData;->getMenuTypeId()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/dodonew/online/ui/ShopActivity;->getMenuTypeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/dodonew/online/bean/MenuType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 296
    .end local v2    # "ls":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/Menu;>;"
    .end local v4    # "menuData":Lcom/dodonew/online/bean/MenuData;
    .end local v6    # "size":I
    :cond_7
    return-void
.end method

.method private setTotal()V
    .locals 3

    .prologue
    .line 375
    iget-object v0, p0, Lcom/dodonew/online/ui/ShopActivity;->shopCartView:Lcom/dodonew/online/view/ShopCartView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\uffe5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/dodonew/online/ui/ShopActivity;->totalPrice:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dodonew/online/view/ShopCartView;->setTotalParice(Ljava/lang/String;)V

    .line 376
    return-void
.end method

.method private startAnim(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 379
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 380
    .local v0, "start_location":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 381
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/dodonew/online/ui/ShopActivity;->buyImg:Landroid/widget/ImageView;

    .line 382
    iget-object v1, p0, Lcom/dodonew/online/ui/ShopActivity;->buyImg:Landroid/widget/ImageView;

    const v2, 0x7f020113

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 383
    iget-object v1, p0, Lcom/dodonew/online/ui/ShopActivity;->addShopAnim:Lcom/dodonew/online/util/AddShopAnim;

    iget-object v2, p0, Lcom/dodonew/online/ui/ShopActivity;->buyImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Lcom/dodonew/online/util/AddShopAnim;->setAnim(Landroid/view/View;[I)V

    .line 384
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/dodonew/online/base/TitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const v0, 0x7f030046

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/ShopActivity;->setContentView(I)V

    .line 92
    invoke-direct {p0}, Lcom/dodonew/online/ui/ShopActivity;->initView()V

    .line 93
    invoke-direct {p0}, Lcom/dodonew/online/ui/ShopActivity;->initPara()V

    .line 94
    invoke-direct {p0}, Lcom/dodonew/online/ui/ShopActivity;->initEvent()V

    .line 95
    invoke-direct {p0}, Lcom/dodonew/online/ui/ShopActivity;->queryMenuType()V

    .line 96
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 497
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onPause()V

    .line 498
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 500
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 491
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onResume()V

    .line 492
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 494
    return-void
.end method
