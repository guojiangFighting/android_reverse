.class public Lcom/stephentuso/welcome/ui/fragments/PreferenceWelcomeFragment;
.super Landroid/support/v7/preference/PreferenceFragmentCompat;
.source "PreferenceWelcomeFragment.java"


# static fields
.field public static final KEY_XML_ID:Ljava/lang/String; = "preference_xml_id"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;-><init>()V

    return-void
.end method

.method public static newInstance(I)Lcom/stephentuso/welcome/ui/fragments/PreferenceWelcomeFragment;
    .locals 3
    .param p0, "preferencesResId"    # I

    .prologue
    .line 14
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 15
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "preference_xml_id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 17
    new-instance v1, Lcom/stephentuso/welcome/ui/fragments/PreferenceWelcomeFragment;

    invoke-direct {v1}, Lcom/stephentuso/welcome/ui/fragments/PreferenceWelcomeFragment;-><init>()V

    .line 18
    .local v1, "fragment":Lcom/stephentuso/welcome/ui/fragments/PreferenceWelcomeFragment;
    invoke-virtual {v1, v0}, Lcom/stephentuso/welcome/ui/fragments/PreferenceWelcomeFragment;->setArguments(Landroid/os/Bundle;)V

    .line 19
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/support/v7/preference/PreferenceFragmentCompat;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lcom/stephentuso/welcome/ui/fragments/PreferenceWelcomeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    .line 31
    :goto_0
    return-void

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/stephentuso/welcome/ui/fragments/PreferenceWelcomeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "preference_xml_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 30
    .local v0, "preferencesId":I
    invoke-virtual {p0, v0}, Lcom/stephentuso/welcome/ui/fragments/PreferenceWelcomeFragment;->addPreferencesFromResource(I)V

    goto :goto_0
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 36
    return-void
.end method
