.class public Lcom/dodonew/online/bean/MenuType;
.super Ljava/lang/Object;
.source "MenuType.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private departId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DepartTypeID"
    .end annotation
.end field

.field private discRate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DiscRate"
    .end annotation
.end field

.field private isDiscount:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsDiscount"
    .end annotation
.end field

.field private menuTypeID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MenuTypeID"
    .end annotation
.end field

.field private menuTypeName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MenuTypeName"
    .end annotation
.end field

.field private printPRI:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PrintPRI"
    .end annotation
.end field

.field private res:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "menuTypeID"    # Ljava/lang/String;
    .param p2, "menuTypeName"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/dodonew/online/bean/MenuType;->menuTypeID:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/dodonew/online/bean/MenuType;->menuTypeName:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "menuTypeID"    # Ljava/lang/String;
    .param p2, "menuTypeName"    # Ljava/lang/String;
    .param p3, "res"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/dodonew/online/bean/MenuType;->menuTypeID:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/dodonew/online/bean/MenuType;->menuTypeName:Ljava/lang/String;

    .line 45
    iput p3, p0, Lcom/dodonew/online/bean/MenuType;->res:I

    .line 46
    return-void
.end method


# virtual methods
.method public getDepartId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dodonew/online/bean/MenuType;->departId:Ljava/lang/String;

    return-object v0
.end method

.method public getDiscRate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/dodonew/online/bean/MenuType;->discRate:Ljava/lang/String;

    return-object v0
.end method

.method public getIsDiscount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/dodonew/online/bean/MenuType;->isDiscount:Ljava/lang/String;

    return-object v0
.end method

.method public getMenuTypeID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/dodonew/online/bean/MenuType;->menuTypeID:Ljava/lang/String;

    return-object v0
.end method

.method public getMenuTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/dodonew/online/bean/MenuType;->menuTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public getPrintPRI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/dodonew/online/bean/MenuType;->printPRI:Ljava/lang/String;

    return-object v0
.end method

.method public getRes()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/dodonew/online/bean/MenuType;->res:I

    return v0
.end method

.method public setDepartId(Ljava/lang/String;)V
    .locals 0
    .param p1, "departId"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/dodonew/online/bean/MenuType;->departId:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setDiscRate(Ljava/lang/String;)V
    .locals 0
    .param p1, "discRate"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/dodonew/online/bean/MenuType;->discRate:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setIsDiscount(Ljava/lang/String;)V
    .locals 0
    .param p1, "isDiscount"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/dodonew/online/bean/MenuType;->isDiscount:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setMenuTypeID(Ljava/lang/String;)V
    .locals 0
    .param p1, "menuTypeID"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/dodonew/online/bean/MenuType;->menuTypeID:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setMenuTypeName(Ljava/lang/String;)V
    .locals 0
    .param p1, "menuTypeName"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/dodonew/online/bean/MenuType;->menuTypeName:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setPrintPRI(Ljava/lang/String;)V
    .locals 0
    .param p1, "printPRI"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/dodonew/online/bean/MenuType;->printPRI:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setRes(I)V
    .locals 0
    .param p1, "res"    # I

    .prologue
    .line 98
    iput p1, p0, Lcom/dodonew/online/bean/MenuType;->res:I

    .line 99
    return-void
.end method
