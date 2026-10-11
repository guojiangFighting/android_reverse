.class Lcom/dodonew/online/fragment/HomeFragment$1;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/fragment/HomeFragment;->initEvent(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/fragment/HomeFragment;


# direct methods
.method constructor <init>(Lcom/dodonew/online/fragment/HomeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/fragment/HomeFragment;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/dodonew/online/fragment/HomeFragment$1;->this$0:Lcom/dodonew/online/fragment/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 114
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dodonew/online/fragment/HomeFragment$1;->this$0:Lcom/dodonew/online/fragment/HomeFragment;

    invoke-virtual {v1}, Lcom/dodonew/online/fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/dodonew/online/ui/ScanActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/dodonew/online/fragment/HomeFragment$1;->this$0:Lcom/dodonew/online/fragment/HomeFragment;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v0, v2}, Lcom/dodonew/online/fragment/HomeFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 116
    return-void
.end method
