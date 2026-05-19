.class abstract Lcom/android/wm/shell/pip/tv/TvPipAction;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/pip/tv/TvPipAction$SystemActionsHandler;,
        Lcom/android/wm/shell/pip/tv/TvPipAction$ActionType;
    }
.end annotation


# static fields
.field public static final ACTION_CLOSE:I = 0x1

.field public static final ACTION_CUSTOM:I = 0x4

.field public static final ACTION_CUSTOM_CLOSE:I = 0x5

.field public static final ACTION_EXPAND_COLLAPSE:I = 0x3

.field public static final ACTION_FULLSCREEN:I = 0x0

.field public static final ACTION_MOVE:I = 0x2

.field public static final EXTRA_IS_PIP_CUSTOM_ACTION:Ljava/lang/String; = "EXTRA_IS_PIP_CUSTOM_ACTION"


# instance fields
.field private final mActionType:I

.field private final mSystemActionsHandler:Lcom/android/wm/shell/pip/tv/TvPipAction$SystemActionsHandler;


# direct methods
.method public constructor <init>(ILcom/android/wm/shell/pip/tv/TvPipAction$SystemActionsHandler;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput p1, p0, Lcom/android/wm/shell/pip/tv/TvPipAction;->mActionType:I

    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipAction;->mSystemActionsHandler:Lcom/android/wm/shell/pip/tv/TvPipAction$SystemActionsHandler;

    return-void
.end method


# virtual methods
.method public executeAction()V
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipAction;->mSystemActionsHandler:Lcom/android/wm/shell/pip/tv/TvPipAction$SystemActionsHandler;

    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipAction;->mActionType:I

    invoke-interface {v0, p0}, Lcom/android/wm/shell/pip/tv/TvPipAction$SystemActionsHandler;->executeAction(I)V

    return-void
.end method

.method public getActionType()I
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipAction;->mActionType:I

    return p0
.end method

.method public abstract getPendingIntent()Landroid/app/PendingIntent;
.end method

.method public isCloseAction()Z
    .registers 3

    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipAction;->mActionType:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_a

    const/4 v1, 0x5

    if-ne p0, v1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :cond_a
    :goto_a
    return v0
.end method

.method public abstract populateButton(Lcom/android/wm/shell/common/TvWindowMenuActionButton;Landroid/os/Handler;)V
.end method

.method public abstract toNotificationAction(Landroid/content/Context;)Landroid/app/Notification$Action;
.end method
