.class public Lcom/dodonew/online/util/ShareSdkUtils;
.super Ljava/lang/Object;
.source "ShareSdkUtils.java"


# instance fields
.field private content:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private imageUrl:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "imageUrl"    # Ljava/lang/String;
    .param p5, "url"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/dodonew/online/util/ShareSdkUtils;->context:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/dodonew/online/util/ShareSdkUtils;->title:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/dodonew/online/util/ShareSdkUtils;->content:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/dodonew/online/util/ShareSdkUtils;->imageUrl:Ljava/lang/String;

    .line 27
    iput-object p5, p0, Lcom/dodonew/online/util/ShareSdkUtils;->url:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public showShare()V
    .locals 6

    .prologue
    const v5, 0x7f060027

    .line 34
    new-instance v2, Lcn/sharesdk/onekeyshare/OnekeyShare;

    invoke-direct {v2}, Lcn/sharesdk/onekeyshare/OnekeyShare;-><init>()V

    .line 35
    .local v2, "oks":Lcn/sharesdk/onekeyshare/OnekeyShare;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setSilent(Z)V

    .line 37
    sget-object v3, Lcn/sharesdk/onekeyshare/OnekeyShareTheme;->CLASSIC:Lcn/sharesdk/onekeyshare/OnekeyShareTheme;

    invoke-virtual {v2, v3}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setTheme(Lcn/sharesdk/onekeyshare/OnekeyShareTheme;)V

    .line 39
    invoke-virtual {v2}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setDialogMode()V

    .line 41
    invoke-virtual {v2}, Lcn/sharesdk/onekeyshare/OnekeyShare;->disableSSOWhenAuthorize()V

    .line 43
    iget-object v3, p0, Lcom/dodonew/online/util/ShareSdkUtils;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setTitle(Ljava/lang/String;)V

    .line 44
    iget-object v3, p0, Lcom/dodonew/online/util/ShareSdkUtils;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setTitleUrl(Ljava/lang/String;)V

    .line 45
    iget-object v3, p0, Lcom/dodonew/online/util/ShareSdkUtils;->content:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setText(Ljava/lang/String;)V

    .line 46
    iget-object v3, p0, Lcom/dodonew/online/util/ShareSdkUtils;->imageUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 47
    iget-object v3, p0, Lcom/dodonew/online/util/ShareSdkUtils;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200ac

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 48
    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/dodonew/online/util/UtilWriterFile;->saveMyBitmap(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "imgPath":Ljava/lang/String;
    invoke-virtual {v2, v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setImagePath(Ljava/lang/String;)V

    .line 58
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v1    # "imgPath":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/dodonew/online/util/ShareSdkUtils;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setUrl(Ljava/lang/String;)V

    .line 59
    iget-object v3, p0, Lcom/dodonew/online/util/ShareSdkUtils;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06009d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setComment(Ljava/lang/String;)V

    .line 60
    iget-object v3, p0, Lcom/dodonew/online/util/ShareSdkUtils;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setSite(Ljava/lang/String;)V

    .line 61
    const-string v3, "http://www.dodovip.com"

    invoke-virtual {v2, v3}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setSiteUrl(Ljava/lang/String;)V

    .line 62
    iget-object v3, p0, Lcom/dodonew/online/util/ShareSdkUtils;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setVenueName(Ljava/lang/String;)V

    .line 63
    const-string v3, "This is a beautiful place!"

    invoke-virtual {v2, v3}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setVenueDescription(Ljava/lang/String;)V

    .line 95
    iget-object v3, p0, Lcom/dodonew/online/util/ShareSdkUtils;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcn/sharesdk/onekeyshare/OnekeyShare;->show(Landroid/content/Context;)V

    .line 96
    return-void

    .line 51
    :cond_0
    iget-object v3, p0, Lcom/dodonew/online/util/ShareSdkUtils;->imageUrl:Ljava/lang/String;

    const-string v4, "http"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://www.dodovip.com"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/dodonew/online/util/ShareSdkUtils;->imageUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/dodonew/online/util/ShareSdkUtils;->imageUrl:Ljava/lang/String;

    .line 54
    :cond_1
    iget-object v3, p0, Lcom/dodonew/online/util/ShareSdkUtils;->imageUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setImageUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
