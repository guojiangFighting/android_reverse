.class Lcn/sharesdk/framework/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/commons/authorize/MobProduct;


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/b/c;


# direct methods
.method constructor <init>(Lcn/sharesdk/framework/b/c;)V
    .locals 0

    iput-object p1, p0, Lcn/sharesdk/framework/b/d;->a:Lcn/sharesdk/framework/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProductAppkey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/sharesdk/framework/b/d;->a:Lcn/sharesdk/framework/b/c;

    invoke-static {v0}, Lcn/sharesdk/framework/b/c;->a(Lcn/sharesdk/framework/b/c;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProductTag()Ljava/lang/String;
    .locals 1

    const-string v0, "SHARESDK"

    return-object v0
.end method

.method public getSdkver()I
    .locals 2

    const v0, 0xea60

    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->getSDKVersionCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
