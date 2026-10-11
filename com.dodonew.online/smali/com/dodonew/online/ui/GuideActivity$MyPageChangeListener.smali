.class Lcom/dodonew/online/ui/GuideActivity$MyPageChangeListener;
.super Ljava/lang/Object;
.source "GuideActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/ui/GuideActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/GuideActivity;


# direct methods
.method private constructor <init>(Lcom/dodonew/online/ui/GuideActivity;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/dodonew/online/ui/GuideActivity$MyPageChangeListener;->this$0:Lcom/dodonew/online/ui/GuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 121
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 125
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lcom/dodonew/online/ui/GuideActivity$MyPageChangeListener;->this$0:Lcom/dodonew/online/ui/GuideActivity;

    invoke-static {v0, p1}, Lcom/dodonew/online/ui/GuideActivity;->access$202(Lcom/dodonew/online/ui/GuideActivity;I)I

    .line 117
    return-void
.end method
