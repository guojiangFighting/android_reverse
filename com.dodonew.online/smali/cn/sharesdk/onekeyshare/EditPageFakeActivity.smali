.class public Lcn/sharesdk/onekeyshare/EditPageFakeActivity;
.super Lcom/mob/tools/FakeActivity;
.source "EditPageFakeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageListResultsCallback;,
        Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;
    }
.end annotation


# instance fields
.field protected backgroundView:Landroid/view/View;

.field protected dialogMode:Z

.field protected platforms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/sharesdk/framework/Platform;",
            ">;"
        }
    .end annotation
.end field

.field private shareImageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected shareParamMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected toFriendList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/mob/tools/FakeActivity;-><init>()V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcn/sharesdk/onekeyshare/EditPageFakeActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcn/sharesdk/onekeyshare/EditPageFakeActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareImageList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcn/sharesdk/onekeyshare/EditPageFakeActivity;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcn/sharesdk/onekeyshare/EditPageFakeActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->activity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method protected getAtUserButtonText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "platform"    # Ljava/lang/String;

    .prologue
    .line 86
    const-string v0, "FacebookMessenger"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "To"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "@"

    goto :goto_0
.end method

.method protected getJoinSelectedUser(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v5, 0x0

    .line 90
    if-eqz p1, :cond_2

    const-string v4, "selected"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 92
    const-string v4, "selected"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 93
    .local v3, "selected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "platform"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/sharesdk/framework/Platform;

    invoke-virtual {v4}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "platform":Ljava/lang/String;
    const-string v4, "FacebookMessenger"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 95
    iput-object v3, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->toFriendList:Ljava/util/ArrayList;

    move-object v4, v5

    .line 104
    .end local v0    # "platform":Ljava/lang/String;
    .end local v3    # "selected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return-object v4

    .line 98
    .restart local v0    # "platform":Ljava/lang/String;
    .restart local v3    # "selected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 100
    .local v2, "sel":Ljava/lang/String;
    const/16 v5, 0x40

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 102
    .end local v2    # "sel":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .end local v0    # "platform":Ljava/lang/String;
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "selected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    move-object v4, v5

    .line 104
    goto :goto_0
.end method

.method public getLogoName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "platform"    # Ljava/lang/String;

    .prologue
    .line 71
    if-nez p1, :cond_0

    .line 72
    const-string v1, ""

    .line 76
    :goto_0
    return-object v1

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ssdk_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/sharesdk/framework/utils/ShareSDKR;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 76
    .local v0, "resId":I
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public haveImage()Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 108
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareParamMap:Ljava/util/HashMap;

    const-string v6, "imageUrl"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 109
    .local v2, "imageUrl":Ljava/lang/String;
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareParamMap:Ljava/util/HashMap;

    const-string v6, "imagePath"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 110
    .local v1, "imagePath":Ljava/lang/String;
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareParamMap:Ljava/util/HashMap;

    const-string v6, "viewToShare"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 111
    .local v3, "viewToShare":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareParamMap:Ljava/util/HashMap;

    const-string v6, "imageArray"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    move-object v0, v4

    check-cast v0, [Ljava/lang/String;

    .line 113
    .local v0, "imageArray":[Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    .line 123
    :goto_0
    return v4

    .line 115
    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v5

    .line 116
    goto :goto_0

    .line 117
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v5

    .line 118
    goto :goto_0

    .line 119
    :cond_2
    if-eqz v0, :cond_3

    array-length v4, v0

    if-lez v4, :cond_3

    move v4, v5

    .line 120
    goto :goto_0

    .line 123
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected initImageList(Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageListResultsCallback;)Z
    .locals 11
    .param p1, "callback"    # Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageListResultsCallback;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 127
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareParamMap:Ljava/util/HashMap;

    const-string v9, "imageUrl"

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 128
    .local v4, "imageUrl":Ljava/lang/String;
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareParamMap:Ljava/util/HashMap;

    const-string v9, "imagePath"

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 129
    .local v2, "imagePath":Ljava/lang/String;
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareParamMap:Ljava/util/HashMap;

    const-string v9, "viewToShare"

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    .line 130
    .local v5, "viewToShare":Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareParamMap:Ljava/util/HashMap;

    const-string v9, "imageArray"

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    move-object v0, v6

    check-cast v0, [Ljava/lang/String;

    .line 132
    .local v0, "imageArray":[Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareImageList:Ljava/util/ArrayList;

    .line 133
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 134
    new-instance v1, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;

    invoke-direct {v1}, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;-><init>()V

    .line 135
    .local v1, "imageInfo":Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;
    const-string v6, "imagePath"

    iput-object v6, v1, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;->paramName:Ljava/lang/String;

    .line 136
    iput-object v2, v1, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;->srcValue:Ljava/lang/String;

    .line 137
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareImageList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareParamMap:Ljava/util/HashMap;

    const-string v9, "imagePath"

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .end local v1    # "imageInfo":Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;
    :cond_0
    :goto_0
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareImageList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_6

    move v6, v7

    .line 194
    :goto_1
    return v6

    .line 139
    :cond_1
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_2

    .line 140
    new-instance v1, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;

    invoke-direct {v1}, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;-><init>()V

    .line 141
    .restart local v1    # "imageInfo":Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;
    const-string v6, "viewToShare"

    iput-object v6, v1, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;->paramName:Ljava/lang/String;

    .line 142
    iput-object v5, v1, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 143
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareImageList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareParamMap:Ljava/util/HashMap;

    const-string v9, "viewToShare"

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 145
    .end local v1    # "imageInfo":Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;
    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 146
    new-instance v1, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;

    invoke-direct {v1}, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;-><init>()V

    .line 147
    .restart local v1    # "imageInfo":Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;
    const-string v6, "imageUrl"

    iput-object v6, v1, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;->paramName:Ljava/lang/String;

    .line 148
    iput-object v4, v1, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;->srcValue:Ljava/lang/String;

    .line 149
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareImageList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareParamMap:Ljava/util/HashMap;

    const-string v9, "imageUrl"

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 151
    .end local v1    # "imageInfo":Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;
    :cond_3
    if-eqz v0, :cond_0

    array-length v6, v0

    if-lez v6, :cond_0

    .line 152
    array-length v9, v0

    move v6, v7

    :goto_2
    if-ge v6, v9, :cond_5

    aget-object v3, v0, v6

    .line 153
    .local v3, "imageUri":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 152
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 155
    :cond_4
    new-instance v1, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;

    invoke-direct {v1}, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;-><init>()V

    .line 156
    .restart local v1    # "imageInfo":Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;
    const-string v10, "imageArray"

    iput-object v10, v1, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;->paramName:Ljava/lang/String;

    .line 157
    iput-object v3, v1, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;->srcValue:Ljava/lang/String;

    .line 158
    iget-object v10, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareImageList:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 160
    .end local v1    # "imageInfo":Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;
    .end local v3    # "imageUri":Ljava/lang/String;
    :cond_5
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareParamMap:Ljava/util/HashMap;

    const-string v9, "imageArray"

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 167
    :cond_6
    new-instance v6, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$1;

    invoke-direct {v6, p0}, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$1;-><init>(Lcn/sharesdk/onekeyshare/EditPageFakeActivity;)V

    new-array v9, v8, [Ljava/lang/Object;

    aput-object p1, v9, v7

    .line 193
    invoke-virtual {v6, v9}, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v6, v8

    .line 194
    goto :goto_1
.end method

.method protected isShowAtUserLayout(Ljava/lang/String;)Z
    .locals 1
    .param p1, "platformName"    # Ljava/lang/String;

    .prologue
    .line 80
    const-string v0, "SinaWeibo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TencentWeibo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Facebook"

    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Twitter"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FacebookMessenger"

    .line 82
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFinish()Z
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareImageList:Ljava/util/ArrayList;

    .line 254
    invoke-super {p0}, Lcom/mob/tools/FakeActivity;->onFinish()Z

    move-result v0

    return v0
.end method

.method protected removeImage(Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;)V
    .locals 1
    .param p1, "imageInfo"    # Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;

    .prologue
    .line 198
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareImageList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareImageList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setBackgroundView(Landroid/view/View;)V
    .locals 0
    .param p1, "bgView"    # Landroid/view/View;

    .prologue
    .line 63
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->backgroundView:Landroid/view/View;

    .line 64
    return-void
.end method

.method public setDialogMode()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->dialogMode:Z

    .line 57
    return-void
.end method

.method public setPlatforms(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/sharesdk/framework/Platform;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "supportEditPagePlatforms":Ljava/util/List;, "Ljava/util/List<Lcn/sharesdk/framework/Platform;>;"
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->platforms:Ljava/util/List;

    .line 68
    return-void
.end method

.method protected setResultAndFinish()V
    .locals 11

    .prologue
    .line 204
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v1, "imageArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareImageList:Ljava/util/ArrayList;

    if-eqz v7, :cond_5

    .line 206
    iget-object v7, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareImageList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;

    .line 207
    .local v2, "imageInfo":Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;
    const-string v8, "imagePath"

    iget-object v9, v2, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;->paramName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "imageUrl"

    iget-object v9, v2, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;->paramName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 208
    :cond_1
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareParamMap:Ljava/util/HashMap;

    iget-object v9, v2, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;->paramName:Ljava/lang/String;

    iget-object v10, v2, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;->srcValue:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 209
    :cond_2
    const-string v8, "viewToShare"

    iget-object v9, v2, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;->paramName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 210
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareParamMap:Ljava/util/HashMap;

    iget-object v9, v2, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;->paramName:Ljava/lang/String;

    iget-object v10, v2, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 211
    :cond_3
    const-string v8, "imageArray"

    iget-object v9, v2, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;->paramName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 212
    iget-object v8, v2, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;->srcValue:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 215
    .end local v2    # "imageInfo":Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;
    :cond_4
    iget-object v7, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareImageList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 216
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_8

    .line 217
    iget-object v7, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareParamMap:Ljava/util/HashMap;

    const-string v8, "imageArray"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_5
    :goto_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 225
    .local v0, "editRes":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcn/sharesdk/framework/Platform;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iget-object v7, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->platforms:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/sharesdk/framework/Platform;

    .line 227
    .local v4, "platform":Lcn/sharesdk/framework/Platform;
    const-string v8, "FacebookMessenger"

    invoke-virtual {v4}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 228
    new-instance v3, Ljava/util/HashMap;

    iget-object v8, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareParamMap:Ljava/util/HashMap;

    invoke-direct {v3, v8}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 229
    .local v3, "param":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->toFriendList:Ljava/util/ArrayList;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->toFriendList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_6

    .line 230
    const-string v8, "address"

    iget-object v9, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->toFriendList:Ljava/util/ArrayList;

    iget-object v10, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->toFriendList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    :cond_6
    const-string v8, "address"

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_9

    .line 233
    iget-object v7, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->activity:Landroid/app/Activity;

    const-string v8, "ssdk_oks_select_a_friend"

    invoke-static {v7, v8}, Lcn/sharesdk/framework/utils/ShareSDKR;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    .line 234
    .local v6, "resId":I
    if-lez v6, :cond_7

    .line 235
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->getContext()Landroid/content/Context;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v9, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 249
    .end local v3    # "param":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "platform":Lcn/sharesdk/framework/Platform;
    .end local v6    # "resId":I
    :cond_7
    :goto_3
    return-void

    .line 219
    .end local v0    # "editRes":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcn/sharesdk/framework/Platform;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_8
    iget-object v7, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareParamMap:Ljava/util/HashMap;

    const-string v8, "imageArray"

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 239
    .restart local v0    # "editRes":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcn/sharesdk/framework/Platform;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .restart local v3    # "param":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v4    # "platform":Lcn/sharesdk/framework/Platform;
    :cond_9
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 242
    .end local v3    # "param":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_a
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareParamMap:Ljava/util/HashMap;

    invoke-virtual {v0, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 245
    .end local v4    # "platform":Lcn/sharesdk/framework/Platform;
    :cond_b
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 246
    .local v5, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "editRes"

    invoke-virtual {v5, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    invoke-virtual {p0, v5}, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->setResult(Ljava/util/HashMap;)V

    .line 248
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->finish()V

    goto :goto_3
.end method

.method public setShareData(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareParamMap:Ljava/util/HashMap;

    .line 52
    return-void
.end method
