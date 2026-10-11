.class public Lcom/dodonew/online/bean/Menu;
.super Ljava/lang/Object;
.source "Menu.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private amount:I

.field private autoSaleOut:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AutoSaleOut"
    .end annotation
.end field

.field private barCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "BarCode"
    .end annotation
.end field

.field private bySeanson:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "BySeanson"
    .end annotation
.end field

.field private canChoice:Z

.field private costPrice:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CostPrice"
    .end annotation
.end field

.field private departID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DepartID"
    .end annotation
.end field

.field private discRate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DiscRate"
    .end annotation
.end field

.field private highAmount:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "HighAmount"
    .end annotation
.end field

.field private isDiscount:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsDiscount"
    .end annotation
.end field

.field private isMenuSets:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsMenuSets"
    .end annotation
.end field

.field private isNull:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsNull"
    .end annotation
.end field

.field private isPersonOrder:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsPersonOrder"
    .end annotation
.end field

.field private isService:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsService"
    .end annotation
.end field

.field private isTableOrder:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsTableOrder"
    .end annotation
.end field

.field private isTimeMenu:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsTimeMenu"
    .end annotation
.end field

.field private itemArray:Ljava/lang/String;

.field private listIndex:Ljava/lang/String;

.field private lowAmount:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "LowAmount"
    .end annotation
.end field

.field private measureMin:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MeasureMin"
    .end annotation
.end field

.field private menuID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MenuID"
    .end annotation
.end field

.field private menuName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MenuName"
    .end annotation
.end field

.field private menuName1:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MenuName1"
    .end annotation
.end field

.field private menuName2:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MenuName2"
    .end annotation
.end field

.field private menuName3:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MenuName3"
    .end annotation
.end field

.field private menuPrice1:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MenuPrice1"
    .end annotation
.end field

.field private menuPrice2:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MenuPrice2"
    .end annotation
.end field

.field private menuPrice3:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MenuPrice3"
    .end annotation
.end field

.field private menuPrice4:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MenuPrice4"
    .end annotation
.end field

.field private menuType:Lcom/dodonew/online/bean/MenuType;

.field private menuTypeId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MenuTypeID"
    .end annotation
.end field

.field private menuUnit:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MenuUnit"
    .end annotation
.end field

.field private needToPrint:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "NeedToPrint"
    .end annotation
.end field

.field private remark:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Remark"
    .end annotation
.end field

.field private res:I

.field private resetAmount:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ResetAmount"
    .end annotation
.end field

.field private setArray:Ljava/lang/String;

.field private startMin:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "StartMin"
    .end annotation
.end field

.field private toSpell:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ToSpell"
    .end annotation
.end field

.field private type:I

.field private unitArray:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v0, p0, Lcom/dodonew/online/bean/Menu;->amount:I

    .line 44
    iput v0, p0, Lcom/dodonew/online/bean/Menu;->type:I

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "menuID"    # Ljava/lang/String;
    .param p2, "res"    # I

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v0, p0, Lcom/dodonew/online/bean/Menu;->amount:I

    .line 44
    iput v0, p0, Lcom/dodonew/online/bean/Menu;->type:I

    .line 57
    iput-object p1, p0, Lcom/dodonew/online/bean/Menu;->menuID:Ljava/lang/String;

    .line 58
    iput p2, p0, Lcom/dodonew/online/bean/Menu;->res:I

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "menuID"    # Ljava/lang/String;
    .param p2, "menuName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v0, p0, Lcom/dodonew/online/bean/Menu;->amount:I

    .line 44
    iput v0, p0, Lcom/dodonew/online/bean/Menu;->type:I

    .line 52
    iput-object p1, p0, Lcom/dodonew/online/bean/Menu;->menuID:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/dodonew/online/bean/Menu;->menuName:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "menuID"    # Ljava/lang/String;
    .param p2, "menuName"    # Ljava/lang/String;
    .param p3, "res"    # I

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v0, p0, Lcom/dodonew/online/bean/Menu;->amount:I

    .line 44
    iput v0, p0, Lcom/dodonew/online/bean/Menu;->type:I

    .line 62
    iput-object p1, p0, Lcom/dodonew/online/bean/Menu;->menuID:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/dodonew/online/bean/Menu;->menuName:Ljava/lang/String;

    .line 64
    iput p3, p0, Lcom/dodonew/online/bean/Menu;->res:I

    .line 65
    return-void
.end method


# virtual methods
.method public getAmount()I
    .locals 1

    .prologue
    .line 462
    iget v0, p0, Lcom/dodonew/online/bean/Menu;->amount:I

    return v0
.end method

.method public getAutoSaleOut()Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/dodonew/online/bean/Menu;->autoSaleOut:Ljava/lang/String;

    return-object v0
.end method

.method public getBarCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/dodonew/online/bean/Menu;->barCode:Ljava/lang/String;

    return-object v0
.end method

.method public getBySeanson()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/dodonew/online/bean/Menu;->bySeanson:Ljava/lang/String;

    return-object v0
.end method

.method public getCostPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/dodonew/online/bean/Menu;->costPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getDepartID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/dodonew/online/bean/Menu;->departID:Ljava/lang/String;

    return-object v0
.end method

.method public getDiscRate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/dodonew/online/bean/Menu;->discRate:Ljava/lang/String;

    return-object v0
.end method

.method public getHighAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/dodonew/online/bean/Menu;->highAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getIsDiscount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/dodonew/online/bean/Menu;->isDiscount:Ljava/lang/String;

    return-object v0
.end method

.method public getIsMenuSets()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/dodonew/online/bean/Menu;->isMenuSets:Ljava/lang/String;

    return-object v0
.end method

.method public getIsNull()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/dodonew/online/bean/Menu;->isNull:Ljava/lang/String;

    return-object v0
.end method

.method public getIsPersonOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/dodonew/online/bean/Menu;->isPersonOrder:Ljava/lang/String;

    return-object v0
.end method

.method public getIsService()Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/dodonew/online/bean/Menu;->isService:Ljava/lang/String;

    return-object v0
.end method

.method public getIsTableOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/dodonew/online/bean/Menu;->isTableOrder:Ljava/lang/String;

    return-object v0
.end method

.method public getIsTimeMenu()Ljava/lang/String;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/dodonew/online/bean/Menu;->isTimeMenu:Ljava/lang/String;

    return-object v0
.end method

.method public getItemArray()Ljava/lang/String;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/dodonew/online/bean/Menu;->itemArray:Ljava/lang/String;

    return-object v0
.end method

.method public getListIndex()Ljava/lang/String;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/dodonew/online/bean/Menu;->listIndex:Ljava/lang/String;

    return-object v0
.end method

.method public getLowAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/dodonew/online/bean/Menu;->lowAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getMeasureMin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/dodonew/online/bean/Menu;->measureMin:Ljava/lang/String;

    return-object v0
.end method

.method public getMenuID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/dodonew/online/bean/Menu;->menuID:Ljava/lang/String;

    return-object v0
.end method

.method public getMenuName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/dodonew/online/bean/Menu;->menuName:Ljava/lang/String;

    return-object v0
.end method

.method public getMenuName1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/dodonew/online/bean/Menu;->menuName1:Ljava/lang/String;

    return-object v0
.end method

.method public getMenuName2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/dodonew/online/bean/Menu;->menuName2:Ljava/lang/String;

    return-object v0
.end method

.method public getMenuName3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/dodonew/online/bean/Menu;->menuName3:Ljava/lang/String;

    return-object v0
.end method

.method public getMenuPrice1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/dodonew/online/bean/Menu;->menuPrice1:Ljava/lang/String;

    return-object v0
.end method

.method public getMenuPrice2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/dodonew/online/bean/Menu;->menuPrice2:Ljava/lang/String;

    return-object v0
.end method

.method public getMenuPrice3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/dodonew/online/bean/Menu;->menuPrice3:Ljava/lang/String;

    return-object v0
.end method

.method public getMenuPrice4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/dodonew/online/bean/Menu;->menuPrice4:Ljava/lang/String;

    return-object v0
.end method

.method public getMenuType()Lcom/dodonew/online/bean/MenuType;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/dodonew/online/bean/Menu;->menuType:Lcom/dodonew/online/bean/MenuType;

    return-object v0
.end method

.method public getMenuTypeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/dodonew/online/bean/Menu;->menuTypeId:Ljava/lang/String;

    return-object v0
.end method

.method public getMenuUnit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/dodonew/online/bean/Menu;->menuUnit:Ljava/lang/String;

    return-object v0
.end method

.method public getNeedToPrint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/dodonew/online/bean/Menu;->needToPrint:Ljava/lang/String;

    return-object v0
.end method

.method public getRemark()Ljava/lang/String;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/dodonew/online/bean/Menu;->remark:Ljava/lang/String;

    return-object v0
.end method

.method public getRes()I
    .locals 1

    .prologue
    .line 446
    iget v0, p0, Lcom/dodonew/online/bean/Menu;->res:I

    return v0
.end method

.method public getResetAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/dodonew/online/bean/Menu;->resetAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getSetArray()Ljava/lang/String;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/dodonew/online/bean/Menu;->setArray:Ljava/lang/String;

    return-object v0
.end method

.method public getStartMin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/dodonew/online/bean/Menu;->startMin:Ljava/lang/String;

    return-object v0
.end method

.method public getToSpell()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/dodonew/online/bean/Menu;->toSpell:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 454
    iget v0, p0, Lcom/dodonew/online/bean/Menu;->type:I

    return v0
.end method

.method public getUnitArray()Ljava/lang/String;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/dodonew/online/bean/Menu;->unitArray:Ljava/lang/String;

    return-object v0
.end method

.method public isCanChoice()Z
    .locals 1

    .prologue
    .line 390
    iget-boolean v0, p0, Lcom/dodonew/online/bean/Menu;->canChoice:Z

    return v0
.end method

.method public setAmount(I)V
    .locals 0
    .param p1, "amount"    # I

    .prologue
    .line 466
    iput p1, p0, Lcom/dodonew/online/bean/Menu;->amount:I

    .line 467
    return-void
.end method

.method public setAutoSaleOut(Ljava/lang/String;)V
    .locals 0
    .param p1, "autoSaleOut"    # Ljava/lang/String;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/dodonew/online/bean/Menu;->autoSaleOut:Ljava/lang/String;

    .line 316
    return-void
.end method

.method public setBarCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "barCode"    # Ljava/lang/String;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/dodonew/online/bean/Menu;->barCode:Ljava/lang/String;

    .line 220
    return-void
.end method

.method public setBySeanson(Ljava/lang/String;)V
    .locals 0
    .param p1, "bySeanson"    # Ljava/lang/String;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/dodonew/online/bean/Menu;->bySeanson:Ljava/lang/String;

    .line 300
    return-void
.end method

.method public setCanChoice(Z)V
    .locals 0
    .param p1, "canChoice"    # Z

    .prologue
    .line 394
    iput-boolean p1, p0, Lcom/dodonew/online/bean/Menu;->canChoice:Z

    .line 395
    return-void
.end method

.method public setCostPrice(Ljava/lang/String;)V
    .locals 0
    .param p1, "costPrice"    # Ljava/lang/String;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/dodonew/online/bean/Menu;->costPrice:Ljava/lang/String;

    .line 260
    return-void
.end method

.method public setDepartID(Ljava/lang/String;)V
    .locals 0
    .param p1, "departID"    # Ljava/lang/String;

    .prologue
    .line 386
    iput-object p1, p0, Lcom/dodonew/online/bean/Menu;->departID:Ljava/lang/String;

    .line 387
    return-void
.end method

.method public setDiscRate(Ljava/lang/String;)V
    .locals 0
    .param p1, "discRate"    # Ljava/lang/String;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/dodonew/online/bean/Menu;->discRate:Ljava/lang/String;

    .line 268
    return-void
.end method

.method public setHighAmount(Ljava/lang/String;)V
    .locals 0
    .param p1, "highAmount"    # Ljava/lang/String;

    .prologue
    .line 363
    iput-object p1, p0, Lcom/dodonew/online/bean/Menu;->highAmount:Ljava/lang/String;

    .line 364
    return-void
.end method

.method public setIsDiscount(Ljava/lang/String;)V
    .locals 0
    .param p1, "isDiscount"    # Ljava/lang/String;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/dodonew/online/bean/Menu;->isDiscount:Ljava/lang/String;

    .line 276
    return-void
.end method

.method public setIsMenuSets(Ljava/lang/String;)V
    .locals 0
    .param p1, "isMenuSets"    # Ljava/lang/String;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/dodonew/online/bean/Menu;->isMenuSets:Ljava/lang/String;

    .line 284
    return-void
.end method

.method public setIsNull(Ljava/lang/String;)V
    .locals 0
    .param p1, "isNull"    # Ljava/lang/String;

    .prologue
    .line 323
    iput-object p1, p0, Lcom/dodonew/online/bean/Menu;->isNull:Ljava/lang/String;

    .line 324
    return-void
.end method

.method public setIsPersonOrder(Ljava/lang/String;)V
    .locals 0
    .param p1, "isPersonOrder"    # Ljava/lang/String;

    .prologue
    .line 339
    iput-object p1, p0, Lcom/dodonew/online/bean/Menu;->isPersonOrder:Ljava/lang/String;

    .line 340
    return-void
.end method

.method public setIsService(Ljava/lang/String;)V
    .locals 0
    .param p1, "isService"    # Ljava/lang/String;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/dodonew/online/bean/Menu;->isService:Ljava/lang/String;

    .line 348
    return-void
.end method

.method public setIsTableOrder(Ljava/lang/String;)V
    .locals 0
    .param p1, "isTableOrder"    # Ljava/lang/String;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/dodonew/online/bean/Menu;->isTableOrder:Ljava/lang/String;

    .line 332
    return-void
.end method

.method public setIsTimeMenu(Ljava/lang/String;)V
    .locals 0
    .param p1, "isTimeMenu"    # Ljava/lang/String;

    .prologue
    .line 426
    iput-object p1, p0, Lcom/dodonew/online/bean/Menu;->isTimeMenu:Ljava/lang/String;

    .line 427
    return-void
.end method

.method public setItemArray(Ljava/lang/String;)V
    .locals 0
    .param p1, "itemArray"    # Ljava/lang/String;

    .prologue
    .line 418
    iput-object p1, p0, Lcom/dodonew/online/bean/Menu;->itemArray:Ljava/lang/String;

    .line 419
    return-void
.end method

.method public setListIndex(Ljava/lang/String;)V
    .locals 0
    .param p1, "listIndex"    # Ljava/lang/String;

    .prologue
    .line 379
    iput-object p1, p0, Lcom/dodonew/online/bean/Menu;->listIndex:Ljava/lang/String;

    .line 380
    return-void
.end method

.method public setLowAmount(Ljava/lang/String;)V
    .locals 0
    .param p1, "lowAmount"    # Ljava/lang/String;

    .prologue
    .line 355
    iput-object p1, p0, Lcom/dodonew/online/bean/Menu;->lowAmount:Ljava/lang/String;

    .line 356
    return-void
.end method

.method public setMeasureMin(Ljava/lang/String;)V
    .locals 0
    .param p1, "measureMin"    # Ljava/lang/String;

    .prologue
    .line 442
    iput-object p1, p0, Lcom/dodonew/online/bean/Menu;->measureMin:Ljava/lang/String;

    .line 443
    return-void
.end method

.method public setMenuID(Ljava/lang/String;)V
    .locals 0
    .param p1, "menuID"    # Ljava/lang/String;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/dodonew/online/bean/Menu;->menuID:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public setMenuName(Ljava/lang/String;)V
    .locals 0
    .param p1, "menuName"    # Ljava/lang/String;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/dodonew/online/bean/Menu;->menuName:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public setMenuName1(Ljava/lang/String;)V
    .locals 0
    .param p1, "menuName1"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/dodonew/online/bean/Menu;->menuName1:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setMenuName2(Ljava/lang/String;)V
    .locals 0
    .param p1, "menuName2"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/dodonew/online/bean/Menu;->menuName2:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setMenuName3(Ljava/lang/String;)V
    .locals 0
    .param p1, "menuName3"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/dodonew/online/bean/Menu;->menuName3:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setMenuPrice1(Ljava/lang/String;)V
    .locals 0
    .param p1, "menuPrice1"    # Ljava/lang/String;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/dodonew/online/bean/Menu;->menuPrice1:Ljava/lang/String;

    .line 228
    return-void
.end method

.method public setMenuPrice2(Ljava/lang/String;)V
    .locals 0
    .param p1, "menuPrice2"    # Ljava/lang/String;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/dodonew/online/bean/Menu;->menuPrice2:Ljava/lang/String;

    .line 236
    return-void
.end method

.method public setMenuPrice3(Ljava/lang/String;)V
    .locals 0
    .param p1, "menuPrice3"    # Ljava/lang/String;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/dodonew/online/bean/Menu;->menuPrice3:Ljava/lang/String;

    .line 244
    return-void
.end method

.method public setMenuPrice4(Ljava/lang/String;)V
    .locals 0
    .param p1, "menuPrice4"    # Ljava/lang/String;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/dodonew/online/bean/Menu;->menuPrice4:Ljava/lang/String;

    .line 252
    return-void
.end method

.method public setMenuType(Lcom/dodonew/online/bean/MenuType;)V
    .locals 0
    .param p1, "menuType"    # Lcom/dodonew/online/bean/MenuType;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/dodonew/online/bean/Menu;->menuType:Lcom/dodonew/online/bean/MenuType;

    .line 172
    return-void
.end method

.method public setMenuTypeId(Ljava/lang/String;)V
    .locals 0
    .param p1, "menuTypeId"    # Ljava/lang/String;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/dodonew/online/bean/Menu;->menuTypeId:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setMenuUnit(Ljava/lang/String;)V
    .locals 0
    .param p1, "menuUnit"    # Ljava/lang/String;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/dodonew/online/bean/Menu;->menuUnit:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public setNeedToPrint(Ljava/lang/String;)V
    .locals 0
    .param p1, "needToPrint"    # Ljava/lang/String;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/dodonew/online/bean/Menu;->needToPrint:Ljava/lang/String;

    .line 308
    return-void
.end method

.method public setRemark(Ljava/lang/String;)V
    .locals 0
    .param p1, "remark"    # Ljava/lang/String;

    .prologue
    .line 371
    iput-object p1, p0, Lcom/dodonew/online/bean/Menu;->remark:Ljava/lang/String;

    .line 372
    return-void
.end method

.method public setRes(I)V
    .locals 0
    .param p1, "res"    # I

    .prologue
    .line 450
    iput p1, p0, Lcom/dodonew/online/bean/Menu;->res:I

    .line 451
    return-void
.end method

.method public setResetAmount(Ljava/lang/String;)V
    .locals 0
    .param p1, "resetAmount"    # Ljava/lang/String;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/dodonew/online/bean/Menu;->resetAmount:Ljava/lang/String;

    .line 292
    return-void
.end method

.method public setSetArray(Ljava/lang/String;)V
    .locals 0
    .param p1, "setArray"    # Ljava/lang/String;

    .prologue
    .line 410
    iput-object p1, p0, Lcom/dodonew/online/bean/Menu;->setArray:Ljava/lang/String;

    .line 411
    return-void
.end method

.method public setStartMin(Ljava/lang/String;)V
    .locals 0
    .param p1, "startMin"    # Ljava/lang/String;

    .prologue
    .line 434
    iput-object p1, p0, Lcom/dodonew/online/bean/Menu;->startMin:Ljava/lang/String;

    .line 435
    return-void
.end method

.method public setToSpell(Ljava/lang/String;)V
    .locals 0
    .param p1, "toSpell"    # Ljava/lang/String;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/dodonew/online/bean/Menu;->toSpell:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 458
    iput p1, p0, Lcom/dodonew/online/bean/Menu;->type:I

    .line 459
    return-void
.end method

.method public setUnitArray(Ljava/lang/String;)V
    .locals 0
    .param p1, "unitArray"    # Ljava/lang/String;

    .prologue
    .line 402
    iput-object p1, p0, Lcom/dodonew/online/bean/Menu;->unitArray:Ljava/lang/String;

    .line 403
    return-void
.end method
