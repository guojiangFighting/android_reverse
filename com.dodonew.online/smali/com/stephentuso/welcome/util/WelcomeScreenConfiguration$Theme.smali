.class public final enum Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Theme;
.super Ljava/lang/Enum;
.source "WelcomeScreenConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Theme"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Theme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Theme;

.field public static final enum DARK:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Theme;

.field public static final enum LIGHT:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Theme;


# instance fields
.field private resId:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    new-instance v0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Theme;

    const-string v1, "DARK"

    sget v2, Lcom/stephentuso/welcome/R$style;->WelcomeScreenTheme:I

    invoke-direct {v0, v1, v3, v2}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Theme;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Theme;->DARK:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Theme;

    .line 31
    new-instance v0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Theme;

    const-string v1, "LIGHT"

    sget v2, Lcom/stephentuso/welcome/R$style;->WelcomeScreenTheme_Light:I

    invoke-direct {v0, v1, v4, v2}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Theme;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Theme;->LIGHT:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Theme;

    .line 23
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Theme;

    sget-object v1, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Theme;->DARK:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Theme;

    aput-object v1, v0, v3

    sget-object v1, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Theme;->LIGHT:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Theme;

    aput-object v1, v0, v4

    sput-object v0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Theme;->$VALUES:[Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Theme;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "resId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput p3, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Theme;->resId:I

    .line 37
    return-void
.end method

.method static synthetic access$1600(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Theme;)I
    .locals 1
    .param p0, "x0"    # Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Theme;

    .prologue
    .line 23
    iget v0, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Theme;->resId:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Theme;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Theme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Theme;

    return-object v0
.end method

.method public static values()[Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Theme;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Theme;->$VALUES:[Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Theme;

    invoke-virtual {v0}, [Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Theme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Theme;

    return-object v0
.end method
