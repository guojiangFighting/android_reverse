.class public Lcn/sharesdk/login/Tool;
.super Ljava/lang/Object;
.source "Tool.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static actionToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "action"    # I

    .prologue
    .line 41
    packed-switch p0, :pswitch_data_0

    .line 50
    :pswitch_0
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 42
    :pswitch_1
    const-string v0, "ACTION_AUTHORIZING"

    goto :goto_0

    .line 43
    :pswitch_2
    const-string v0, "ACTION_GETTING_FRIEND_LIST"

    goto :goto_0

    .line 44
    :pswitch_3
    const-string v0, "ACTION_FOLLOWING_USER"

    goto :goto_0

    .line 45
    :pswitch_4
    const-string v0, "ACTION_SENDING_DIRECT_MESSAGE"

    goto :goto_0

    .line 46
    :pswitch_5
    const-string v0, "ACTION_TIMELINE"

    goto :goto_0

    .line 47
    :pswitch_6
    const-string v0, "ACTION_USER_INFOR"

    goto :goto_0

    .line 48
    :pswitch_7
    const-string v0, "ACTION_SHARE"

    goto :goto_0

    .line 41
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static canGetUserInfo(Lcn/sharesdk/framework/Platform;)Z
    .locals 3
    .param p0, "plat"    # Lcn/sharesdk/framework/Platform;

    .prologue
    const/4 v1, 0x0

    .line 13
    if-nez p0, :cond_1

    .line 34
    :cond_0
    :goto_0
    return v1

    .line 17
    :cond_1
    invoke-virtual {p0}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v0

    .line 18
    .local v0, "platform":Ljava/lang/String;
    const-string v2, "Wechat"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 22
    :cond_2
    const-string v2, "GooglePlus"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 26
    :cond_3
    const-string v2, "WechatMoments"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "WechatFavorite"

    .line 27
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ShortMessage"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Email"

    .line 28
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Pinterest"

    .line 29
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Yixin"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "YixinMoments"

    .line 30
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Line"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Bluetooth"

    .line 31
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "WhatsApp"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Pocket"

    .line 32
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "BaiduTieba"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Laiwang"

    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "LaiwangMoments"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Alipay"

    .line 34
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public static compressImageFromFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "srcPath"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 57
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 58
    .local v4, "newOpts":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v8, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 59
    invoke-static {p0, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 61
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    iput-boolean v7, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 62
    iget v5, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 63
    .local v5, "w":I
    iget v2, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 64
    .local v2, "h":I
    const/high16 v3, 0x44480000    # 800.0f

    .line 65
    .local v3, "hh":F
    const/high16 v6, 0x43f00000    # 480.0f

    .line 66
    .local v6, "ww":F
    const/4 v0, 0x1

    .line 67
    .local v0, "be":I
    if-le v5, v2, :cond_2

    int-to-float v7, v5

    cmpl-float v7, v7, v6

    if-lez v7, :cond_2

    .line 68
    iget v7, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v7, v7

    div-float/2addr v7, v6

    float-to-int v0, v7

    .line 72
    :cond_0
    :goto_0
    if-gtz v0, :cond_1

    .line 73
    const/4 v0, 0x1

    .line 74
    :cond_1
    iput v0, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 76
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v7, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 77
    iput-boolean v8, v4, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 78
    iput-boolean v8, v4, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 80
    invoke-static {p0, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 83
    return-object v1

    .line 69
    :cond_2
    if-ge v5, v2, :cond_0

    int-to-float v7, v2

    cmpl-float v7, v7, v3

    if-lez v7, :cond_0

    .line 70
    iget v7, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v7, v7

    div-float/2addr v7, v3

    float-to-int v0, v7

    goto :goto_0
.end method
