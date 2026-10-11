.class Lcom/dodonew/online/widget/circualreveal/SheetLayout$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SheetLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/widget/circualreveal/SheetLayout;->contractLollipop(IIFF)V
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
    .line 288
    iput-object p1, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout$3;->this$0:Lcom/dodonew/online/widget/circualreveal/SheetLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 291
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 292
    iget-object v0, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout$3;->this$0:Lcom/dodonew/online/widget/circualreveal/SheetLayout;

    invoke-static {v0}, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->access$200(Lcom/dodonew/online/widget/circualreveal/SheetLayout;)V

    .line 293
    return-void
.end method
