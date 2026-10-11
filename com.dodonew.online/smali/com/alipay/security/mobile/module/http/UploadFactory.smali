.class public Lcom/alipay/security/mobile/module/http/UploadFactory;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/security/mobile/module/http/UploadFactory$Mode;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/alipay/security/mobile/module/http/UploadFactory$Mode;)Lcom/alipay/security/mobile/module/http/IUpload;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/alipay/security/mobile/module/http/RPCUploadImpl;->getInstance(Landroid/content/Context;)Lcom/alipay/security/mobile/module/http/RPCUploadImpl;

    move-result-object v0

    goto :goto_0
.end method
