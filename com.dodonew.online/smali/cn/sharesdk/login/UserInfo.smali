.class public Lcn/sharesdk/login/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/login/UserInfo$Gender;
    }
.end annotation


# instance fields
.field private userGender:Lcn/sharesdk/login/UserInfo$Gender;

.field private userIcon:Ljava/lang/String;

.field private userName:Ljava/lang/String;

.field private userNote:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public getUserGender()Lcn/sharesdk/login/UserInfo$Gender;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcn/sharesdk/login/UserInfo;->userGender:Lcn/sharesdk/login/UserInfo$Gender;

    return-object v0
.end method

.method public getUserIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcn/sharesdk/login/UserInfo;->userIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcn/sharesdk/login/UserInfo;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserNote()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcn/sharesdk/login/UserInfo;->userNote:Ljava/lang/String;

    return-object v0
.end method

.method public setUserGender(Lcn/sharesdk/login/UserInfo$Gender;)V
    .locals 0
    .param p1, "userGender"    # Lcn/sharesdk/login/UserInfo$Gender;

    .prologue
    .line 30
    iput-object p1, p0, Lcn/sharesdk/login/UserInfo;->userGender:Lcn/sharesdk/login/UserInfo$Gender;

    .line 31
    return-void
.end method

.method public setUserIcon(Ljava/lang/String;)V
    .locals 0
    .param p1, "userIcon"    # Ljava/lang/String;

    .prologue
    .line 14
    iput-object p1, p0, Lcn/sharesdk/login/UserInfo;->userIcon:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcn/sharesdk/login/UserInfo;->userName:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setUserNote(Ljava/lang/String;)V
    .locals 0
    .param p1, "userNote"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcn/sharesdk/login/UserInfo;->userNote:Ljava/lang/String;

    .line 39
    return-void
.end method
