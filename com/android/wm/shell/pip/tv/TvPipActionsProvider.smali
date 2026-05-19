.class public Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/pip/tv/TvPipAction$SystemActionsHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/pip/tv/TvPipActionsProvider$Listener;
    }
.end annotation


# static fields
.field private static final CLOSE_ACTION_INDEX:I = 0x1

.field private static final FIRST_CUSTOM_ACTION_INDEX:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TvPipActionsProvider"


# instance fields
.field private final mActionsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/wm/shell/pip/tv/TvPipAction;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefaultCloseAction:Lcom/android/wm/shell/pip/tv/TvPipSystemAction;

.field private final mExpandCollapseAction:Lcom/android/wm/shell/pip/tv/TvPipSystemAction;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/wm/shell/pip/tv/TvPipActionsProvider$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediaActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemActionsHandler:Lcom/android/wm/shell/pip/tv/TvPipAction$SystemActionsHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/pip/PipMediaController;Lcom/android/wm/shell/pip/tv/TvPipAction$SystemActionsHandler;)V
    .registers 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mListeners:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mMediaActions:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mAppActions:Ljava/util/List;

    iput-object p3, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mSystemActionsHandler:Lcom/android/wm/shell/pip/tv/TvPipAction$SystemActionsHandler;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mActionsList:Ljava/util/List;

    new-instance v9, Lcom/android/wm/shell/pip/tv/TvPipSystemAction;

    sget v3, Lcom/android/wm/shell/R$string;->pip_fullscreen:I

    sget v4, Lcom/android/wm/shell/R$drawable;->pip_ic_fullscreen_white:I

    const/4 v2, 0x0

    const-string v5, "com.android.wm.shell.pip.tv.notification.action.FULLSCREEN"

    move-object v1, v9

    move-object v6, p1

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/wm/shell/pip/tv/TvPipSystemAction;-><init>(IIILjava/lang/String;Landroid/content/Context;Lcom/android/wm/shell/pip/tv/TvPipAction$SystemActionsHandler;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/android/wm/shell/pip/tv/TvPipSystemAction;

    sget v3, Lcom/android/wm/shell/R$string;->pip_close:I

    sget v4, Lcom/android/wm/shell/R$drawable;->pip_ic_close_white:I

    const/4 v2, 0x1

    const-string v5, "com.android.wm.shell.pip.tv.notification.action.CLOSE_PIP"

    move-object v1, v9

    invoke-direct/range {v1 .. v7}, Lcom/android/wm/shell/pip/tv/TvPipSystemAction;-><init>(IIILjava/lang/String;Landroid/content/Context;Lcom/android/wm/shell/pip/tv/TvPipAction$SystemActionsHandler;)V

    iput-object v9, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mDefaultCloseAction:Lcom/android/wm/shell/pip/tv/TvPipSystemAction;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/android/wm/shell/pip/tv/TvPipSystemAction;

    sget v3, Lcom/android/wm/shell/R$string;->pip_move:I

    sget v4, Lcom/android/wm/shell/R$drawable;->pip_ic_move_white:I

    const/4 v2, 0x2

    const-string v5, "com.android.wm.shell.pip.tv.notification.action.MOVE_PIP"

    move-object v1, v9

    invoke-direct/range {v1 .. v7}, Lcom/android/wm/shell/pip/tv/TvPipSystemAction;-><init>(IIILjava/lang/String;Landroid/content/Context;Lcom/android/wm/shell/pip/tv/TvPipAction$SystemActionsHandler;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/android/wm/shell/pip/tv/TvPipSystemAction;

    sget v3, Lcom/android/wm/shell/R$string;->pip_collapse:I

    sget v4, Lcom/android/wm/shell/R$drawable;->pip_ic_collapse:I

    const/4 v2, 0x3

    const-string v5, "com.android.wm.shell.pip.tv.notification.action.TOGGLE_EXPANDED_PIP"

    move-object v1, v9

    invoke-direct/range {v1 .. v7}, Lcom/android/wm/shell/pip/tv/TvPipSystemAction;-><init>(IIILjava/lang/String;Landroid/content/Context;Lcom/android/wm/shell/pip/tv/TvPipAction$SystemActionsHandler;)V

    iput-object v9, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mExpandCollapseAction:Lcom/android/wm/shell/pip/tv/TvPipSystemAction;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/wm/shell/pip/tv/a;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/tv/a;-><init>(Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;)V

    invoke-virtual {p2, v0}, Lcom/android/wm/shell/pip/PipMediaController;->addActionListener(Lcom/android/wm/shell/pip/PipMediaController$ActionListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/pip/tv/TvPipAction;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->lambda$updateCustomActions$0(Lcom/android/wm/shell/pip/tv/TvPipAction;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$updateCustomActions$0(Lcom/android/wm/shell/pip/tv/TvPipAction;)Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipAction;->getActionType()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method private notifyActionsChanged(III)V
    .registers 5

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider$Listener;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider$Listener;->onActionsChanged(III)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private updateCustomActions(Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mMediaActions:Ljava/util/List;

    if-ne p1, v0, :cond_d

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mAppActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mAppActions:Ljava/util/List;

    if-ne p1, v0, :cond_19

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mMediaActions:Ljava/util/List;

    :cond_19
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x4

    if-eqz v0, :cond_3f

    sget-object v0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    int-to-long v4, v4

    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v7, 0x93e3712

    const/4 v8, 0x0

    new-array v9, v2, [Ljava/lang/Object;

    aput-object v0, v9, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v9, v4

    invoke-static {v6, v7, v3, v8, v9}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3f
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mActionsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_45
    :goto_45
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/wm/shell/pip/tv/TvPipAction;

    invoke-virtual {v4}, Lcom/android/wm/shell/pip/tv/TvPipAction;->getActionType()I

    move-result v4

    if-ne v4, v3, :cond_45

    add-int/lit8 v1, v1, 0x1

    goto :goto_45

    :cond_5a
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mActionsList:Ljava/util/List;

    sget-object v4, Lcom/android/wm/shell/pip/tv/b;->a:Lcom/android/wm/shell/pip/tv/b;

    invoke-interface {v0, v4}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_81

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/RemoteAction;

    new-instance v6, Lcom/android/wm/shell/pip/tv/TvPipCustomAction;

    iget-object v7, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mSystemActionsHandler:Lcom/android/wm/shell/pip/tv/TvPipAction$SystemActionsHandler;

    invoke-direct {v6, v3, v5, v7}, Lcom/android/wm/shell/pip/tv/TvPipCustomAction;-><init>(ILandroid/app/RemoteAction;Lcom/android/wm/shell/pip/tv/TvPipAction$SystemActionsHandler;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6a

    :cond_81
    iget-object v3, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mActionsList:Ljava/util/List;

    invoke-interface {v3, v2, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-direct {p0, v0, p1, v2}, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->notifyActionsChanged(III)V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/wm/shell/pip/tv/TvPipActionsProvider$Listener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public executeAction(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mSystemActionsHandler:Lcom/android/wm/shell/pip/tv/TvPipAction$SystemActionsHandler;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipAction$SystemActionsHandler;->executeAction(I)V

    :cond_7
    return-void
.end method

.method public getActionsList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/wm/shell/pip/tv/TvPipAction;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mActionsList:Ljava/util/List;

    return-object p0
.end method

.method public getCloseAction()Lcom/android/wm/shell/pip/tv/TvPipAction;
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mActionsList:Ljava/util/List;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/pip/tv/TvPipAction;

    return-object p0
.end method

.method public getFirstIndexOfAction(I)I
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mActionsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mActionsList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/pip/tv/TvPipAction;

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/tv/TvPipAction;->getActionType()I

    move-result v1

    if-ne v1, p1, :cond_18

    return v0

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1b
    const/4 p0, -0x1

    return p0
.end method

.method public onMediaActionsChanged(Ljava/util/List;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz v0, :cond_19

    sget-object v0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v2, 0x25535887

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v1, v2, v5, v3, v4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_19
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mMediaActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_22
    :goto_22
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/RemoteAction;

    invoke-virtual {v0}, Landroid/app/RemoteAction;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mMediaActions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_3a
    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mMediaActions:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->updateCustomActions(Ljava/util/List;)V

    return-void
.end method

.method public setAppActions(Ljava/util/List;Landroid/app/RemoteAction;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;",
            "Landroid/app/RemoteAction;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mActionsList:Ljava/util/List;

    if-nez p2, :cond_7

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mDefaultCloseAction:Lcom/android/wm/shell/pip/tv/TvPipSystemAction;

    goto :goto_f

    :cond_7
    new-instance v1, Lcom/android/wm/shell/pip/tv/TvPipCustomAction;

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mSystemActionsHandler:Lcom/android/wm/shell/pip/tv/TvPipAction$SystemActionsHandler;

    invoke-direct {v1, v2, p2, v3}, Lcom/android/wm/shell/pip/tv/TvPipCustomAction;-><init>(ILandroid/app/RemoteAction;Lcom/android/wm/shell/pip/tv/TvPipAction$SystemActionsHandler;)V

    :goto_f
    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v2, v2}, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->notifyActionsChanged(III)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mAppActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_20
    :goto_20
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/RemoteAction;

    if-eqz v0, :cond_20

    invoke-static {v0, p2}, Lcom/android/wm/shell/pip/PipUtils;->remoteActionsMatch(Landroid/app/RemoteAction;Landroid/app/RemoteAction;)Z

    move-result v1

    if-nez v1, :cond_20

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mAppActions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_3a
    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mAppActions:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->updateCustomActions(Ljava/util/List;)V

    return-void
.end method

.method public updateExpansionEnabled(Z)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_22

    sget-object v0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v4, -0x7ecdc621

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v7, v2

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_22
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mActionsList:Ljava/util/List;

    iget-object v3, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mExpandCollapseAction:Lcom/android/wm/shell/pip/tv/TvPipSystemAction;

    invoke-interface {v0, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2f

    move v4, v2

    goto :goto_30

    :cond_2f
    move v4, v1

    :goto_30
    if-eqz p1, :cond_43

    if-nez v4, :cond_43

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mActionsList:Ljava/util/List;

    iget-object v4, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mExpandCollapseAction:Lcom/android/wm/shell/pip/tv/TvPipSystemAction;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mActionsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    goto :goto_4c

    :cond_43
    if-nez p1, :cond_53

    if-eqz v4, :cond_53

    iget-object v4, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mActionsList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_4c
    if-eqz p1, :cond_4f

    goto :goto_50

    :cond_4f
    move v2, v3

    :goto_50
    invoke-direct {p0, v2, v1, v0}, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->notifyActionsChanged(III)V

    :cond_53
    return-void
.end method

.method public updatePipExpansionState(Z)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_22

    sget-object v0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v4, -0x1e59417d

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v7, v1

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_22
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mExpandCollapseAction:Lcom/android/wm/shell/pip/tv/TvPipSystemAction;

    if-eqz p1, :cond_29

    sget v3, Lcom/android/wm/shell/R$string;->pip_collapse:I

    goto :goto_2b

    :cond_29
    sget v3, Lcom/android/wm/shell/R$string;->pip_expand:I

    :goto_2b
    if-eqz p1, :cond_30

    sget p1, Lcom/android/wm/shell/R$drawable;->pip_ic_collapse:I

    goto :goto_32

    :cond_30
    sget p1, Lcom/android/wm/shell/R$drawable;->pip_ic_expand:I

    :goto_32
    invoke-virtual {v0, v3, p1}, Lcom/android/wm/shell/pip/tv/TvPipSystemAction;->update(II)Z

    move-result p1

    if-eqz p1, :cond_43

    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mActionsList:Ljava/util/List;

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mExpandCollapseAction:Lcom/android/wm/shell/pip/tv/TvPipSystemAction;

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-direct {p0, v2, v1, p1}, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->notifyActionsChanged(III)V

    :cond_43
    return-void
.end method
