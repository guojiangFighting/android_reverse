.class public Lcom/alipay/security/mobile/module/http/constant/ConfigConstant;
.super Ljava/lang/Object;


# static fields
.field public static DATA_POST_RPC_ADDRESS:Ljava/lang/String; = null

.field public static final STATIC_DATA_UPDATE_TIMEOUT:I = 0x493e0


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "https://mobilegw.alipay.com/mgw.htm"

    sput-object v0, Lcom/alipay/security/mobile/module/http/constant/ConfigConstant;->DATA_POST_RPC_ADDRESS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
