.class Lcom/dodonew/online/fragment/HomeFragment$2;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/support/design/widget/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/fragment/HomeFragment;->setViewPagerAdapter(Ljava/util/List;)V
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
    .line 157
    iput-object p1, p0, Lcom/dodonew/online/fragment/HomeFragment$2;->this$0:Lcom/dodonew/online/fragment/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 172
    return-void
.end method

.method public onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 2
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment$2;->this$0:Lcom/dodonew/online/fragment/HomeFragment;

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/dodonew/online/fragment/HomeFragment;->access$002(Lcom/dodonew/online/fragment/HomeFragment;I)I

    .line 161
    iget-object v0, p0, Lcom/dodonew/online/fragment/HomeFragment$2;->this$0:Lcom/dodonew/online/fragment/HomeFragment;

    invoke-static {v0}, Lcom/dodonew/online/fragment/HomeFragment;->access$100(Lcom/dodonew/online/fragment/HomeFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/dodonew/online/fragment/HomeFragment$2;->this$0:Lcom/dodonew/online/fragment/HomeFragment;

    invoke-static {v1}, Lcom/dodonew/online/fragment/HomeFragment;->access$000(Lcom/dodonew/online/fragment/HomeFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 162
    return-void
.end method

.method public onTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 167
    return-void
.end method
