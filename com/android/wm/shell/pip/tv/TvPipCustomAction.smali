.class public Lcom/android/wm/shell/pip/tv/TvPipCustomAction;
.super Lcom/android/wm/shell/pip/tv/TvPipAction;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "TvPipCustomAction"


# instance fields
.field private final mRemoteAction:Landroid/app/RemoteAction;


# direct methods
.method public constructor <init>(ILandroid/app/RemoteAction;Lcom/android/wm/shell/pip/tv/TvPipAction$SystemActionsHandler;)V
    .registers 4

    invoke-direct {p0, p1, p3}, Lcom/android/wm/shell/pip/tv/TvPipAction;-><init>(ILcom/android/wm/shell/pip/tv/TvPipAction$SystemActionsHandler;)V

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipCustomAction;->mRemoteAction:Landroid/app/RemoteAction;

    return-void
.end method


# virtual methods
.method public executeAction()V
    .registers 7

    invoke-super {p0}, Lcom/android/wm/shell/pip/tv/TvPipAction;->executeAction()V

    :try_start_3
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipCustomAction;->mRemoteAction:Landroid/app/RemoteAction;

    invoke-virtual {p0}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V
    :try_end_c
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3 .. :try_end_c} :catch_d

    goto :goto_2e

    :catch_d
    move-exception p0

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz v0, :cond_2e

    sget-object v0, Lcom/android/wm/shell/pip/tv/TvPipCustomAction;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v2, -0x55398a4

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object p0, v4, v0

    invoke-static {v1, v2, v5, v3, v4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2e
    :goto_2e
    return-void
.end method

.method public getPendingIntent()Landroid/app/PendingIntent;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipCustomAction;->mRemoteAction:Landroid/app/RemoteAction;

    invoke-virtual {p0}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public populateButton(Lcom/android/wm/shell/common/TvWindowMenuActionButton;Landroid/os/Handler;)V
    .registers 4

    if-eqz p1, :cond_49

    if-nez p2, :cond_5

    goto :goto_49

    :cond_5
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipCustomAction;->mRemoteAction:Landroid/app/RemoteAction;

    invoke-virtual {v0}, Landroid/app/RemoteAction;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1b

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipCustomAction;->mRemoteAction:Landroid/app/RemoteAction;

    invoke-virtual {v0}, Landroid/app/RemoteAction;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/TvWindowMenuActionButton;->setTextAndDescription(Ljava/lang/CharSequence;)V

    goto :goto_24

    :cond_1b
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipCustomAction;->mRemoteAction:Landroid/app/RemoteAction;

    invoke-virtual {v0}, Landroid/app/RemoteAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/TvWindowMenuActionButton;->setTextAndDescription(Ljava/lang/CharSequence;)V

    :goto_24
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipCustomAction;->mRemoteAction:Landroid/app/RemoteAction;

    invoke-virtual {v0}, Landroid/app/RemoteAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/android/wm/shell/common/TvWindowMenuActionButton;->setImageIconAsync(Landroid/graphics/drawable/Icon;Landroid/os/Handler;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipAction;->isCloseAction()Z

    move-result p2

    if-nez p2, :cond_3e

    iget-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipCustomAction;->mRemoteAction:Landroid/app/RemoteAction;

    invoke-virtual {p2}, Landroid/app/RemoteAction;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_3c

    goto :goto_3e

    :cond_3c
    const/4 p2, 0x0

    goto :goto_3f

    :cond_3e
    :goto_3e
    const/4 p2, 0x1

    :goto_3f
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipAction;->isCloseAction()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/common/TvWindowMenuActionButton;->setIsCustomCloseAction(Z)V

    :cond_49
    :goto_49
    return-void
.end method

.method public toNotificationAction(Landroid/content/Context;)Landroid/app/Notification$Action;
    .registers 5

    new-instance p1, Landroid/app/Notification$Action$Builder;

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipCustomAction;->mRemoteAction:Landroid/app/RemoteAction;

    invoke-virtual {v0}, Landroid/app/RemoteAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipCustomAction;->mRemoteAction:Landroid/app/RemoteAction;

    invoke-virtual {v1}, Landroid/app/RemoteAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipCustomAction;->mRemoteAction:Landroid/app/RemoteAction;

    invoke-virtual {v2}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipCustomAction;->mRemoteAction:Landroid/app/RemoteAction;

    invoke-virtual {v1}, Landroid/app/RemoteAction;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "android.pictureContentDescription"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v1, "EXTRA_IS_PIP_CUSTOM_ACTION"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p1, v0}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipAction;->isCloseAction()Z

    move-result p0

    if-eqz p0, :cond_38

    const/4 p0, 0x4

    goto :goto_39

    :cond_38
    const/4 p0, 0x0

    :goto_39
    invoke-virtual {p1, p0}, Landroid/app/Notification$Action$Builder;->setSemanticAction(I)Landroid/app/Notification$Action$Builder;

    invoke-virtual {p1, v2}, Landroid/app/Notification$Action$Builder;->setContextual(Z)Landroid/app/Notification$Action$Builder;

    invoke-virtual {p1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p0

    return-object p0
.end method
