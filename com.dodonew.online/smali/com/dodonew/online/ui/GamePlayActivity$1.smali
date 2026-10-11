.class Lcom/dodonew/online/ui/GamePlayActivity$1;
.super Ljava/lang/Object;
.source "GamePlayActivity.java"

# interfaces
.implements Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/GamePlayActivity;->setOptionsOnClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/GamePlayActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/GamePlayActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/GamePlayActivity;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/dodonew/online/ui/GamePlayActivity$1;->this$0:Lcom/dodonew/online/ui/GamePlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x1

    .line 100
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 107
    :goto_0
    return v4

    .line 102
    :pswitch_0
    invoke-static {}, Lcom/dodonew/online/DodonewOnlineApplication;->getInstance()Lcom/dodonew/online/DodonewOnlineApplication;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/dodonew/online/ui/MainActivity;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/dodonew/online/DodonewOnlineApplication;->removeAllActivity([Ljava/lang/Class;)Z

    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x7f0d0253
        :pswitch_0
    .end packed-switch
.end method
