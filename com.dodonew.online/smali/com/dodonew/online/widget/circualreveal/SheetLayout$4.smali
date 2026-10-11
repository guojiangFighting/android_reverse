.class Lcom/dodonew/online/widget/circualreveal/SheetLayout$4;
.super Ljava/lang/Object;
.source "SheetLayout.java"

# interfaces
.implements Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/widget/circualreveal/SheetLayout;->contractPreLollipop(IIFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/circualreveal/SheetLayout;


# direct methods
.method constructor <init>(Lcom/dodonew/online/widget/circualreveal/SheetLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/widget/circualreveal/SheetLayout;

    .prologue
    .line 306
    iput-object p1, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout$4;->this$0:Lcom/dodonew/online/widget/circualreveal/SheetLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel()V
    .locals 0

    .prologue
    .line 320
    return-void
.end method

.method public onAnimationEnd()V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout$4;->this$0:Lcom/dodonew/online/widget/circualreveal/SheetLayout;

    invoke-static {v0}, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->access$200(Lcom/dodonew/online/widget/circualreveal/SheetLayout;)V

    .line 315
    return-void
.end method

.method public onAnimationRepeat()V
    .locals 0

    .prologue
    .line 325
    return-void
.end method

.method public onAnimationStart()V
    .locals 0

    .prologue
    .line 310
    return-void
.end method
