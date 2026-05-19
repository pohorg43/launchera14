.class public interface abstract Lcom/android/wm/shell/sysui/UserChangeListener;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public onUserChanged(ILandroid/content/Context;)V
    .registers 3
    .param p2  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onUserProfilesChanged(Ljava/util/List;)V
    .registers 2
    .param p1  # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
