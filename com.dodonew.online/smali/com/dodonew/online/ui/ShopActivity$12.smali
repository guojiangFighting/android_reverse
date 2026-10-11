.class Lcom/dodonew/online/ui/ShopActivity$12;
.super Ljava/lang/Object;
.source "ShopActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/ShopActivity;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/ShopActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/ShopActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/ShopActivity;

    .prologue
    .line 435
    iput-object p1, p0, Lcom/dodonew/online/ui/ShopActivity$12;->this$0:Lcom/dodonew/online/ui/ShopActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 438
    iget-object v0, p0, Lcom/dodonew/online/ui/ShopActivity$12;->this$0:Lcom/dodonew/online/ui/ShopActivity;

    invoke-static {v0, v1}, Lcom/dodonew/online/ui/ShopActivity;->access$1402(Lcom/dodonew/online/ui/ShopActivity;Z)Z

    .line 439
    return v1
.end method
