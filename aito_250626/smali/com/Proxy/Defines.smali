.class public Lcom/Proxy/Defines;
.super Ljava/lang/Object;
.source "Defines.java"


# static fields
.field public static final ANDROID_XML:Ljava/lang/String; = "AndroidManifest.xml"

.field public static final ASSETS:Ljava/lang/String; = "assets/"

.field public static final ASSETS_ENC:Ljava/lang/String; = "meta-inf/"

.field public static final CLASSES:Ljava/lang/String; = "fake_classes"

.field public static final CLASS_N_PATTERN:Ljava/util/regex/Pattern;

.field public static final DEX_MF:Ljava/lang/String; = "cert0_enc"

.field public static final ENC_MF:Ljava/lang/String; = "enc.mf"

.field public static final MDATA:Ljava/lang/String; = ".meta-inf/"

.field public static PACKAGE_NAME:Ljava/lang/String; = "app.huawei.auto"

.field public static final RES_DATA:Ljava/lang/String; = "res.data"

.field public static final SHOWSTACK:Ljava/lang/Boolean;

.field public static final SO_ARM:Ljava/lang/String; = "libxloader.so"

.field public static final SUB_ASSETS:Ljava/lang/String; = "maindata/"

.field public static final TEST_DEX_NAME:Ljava/lang/String; = "test.dex"

.field public static final UC_MF:Ljava/lang/String; = "xXxX.enc"

.field public static final VERSION:Ljava/lang/String; = "v1.5.2.17"

.field public static final XDATA:Ljava/lang/String; = ".cache/"

.field public static final YDATA:Ljava/lang/String; = ".local/"

.field public static final ZDATA:Ljava/lang/String; = ".shell/"

.field public static final _DEX:Ljava/lang/String; = ".dex"

.field public static context:Landroid/content/Context;

.field public static isUpdate:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/Proxy/Defines;->SHOWSTACK:Ljava/lang/Boolean;

    .line 41
    const-string v0, "classes(?:[2-9]?|[1-9][0-9]+)\\.dex(\\.jar)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/Proxy/Defines;->CLASS_N_PATTERN:Ljava/util/regex/Pattern;

    .line 47
    sput-boolean v1, Lcom/Proxy/Defines;->isUpdate:Z

    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/Proxy/Defines;->context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
