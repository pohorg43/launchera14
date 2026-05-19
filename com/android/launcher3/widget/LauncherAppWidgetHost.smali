.class public Lcom/android/launcher3/widget/LauncherAppWidgetHost;
.super Landroid/appwidget/AppWidgetHost;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/widget/LauncherAppWidgetHost$ProviderChangedListener;
    }
.end annotation


# static fields
.field public static final APPWIDGET_HOST_ID:I = 0x400

.field private static final FLAGS_SHOULD_LISTEN:I = 0xe

.field private static final FLAG_ACTIVITY_RESUMED:I = 0x8

.field private static final FLAG_ACTIVITY_STARTED:I = 0x4

.field private static final FLAG_LISTENING:I = 0x1

.field private static final FLAG_STATE_IS_NORMAL:I = 0x2

.field private static final KEY_SPLASH_SCREEN_STYLE:Ljava/lang/String; = "android.activity.splashScreenStyle"

.field private static final SPLASH_SCREEN_STYLE_EMPTY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LauncherAppWidgetHost"


# instance fields
.field private mAppWidgetInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

.field private mAppWidgetRemovedCallback:Ljava/util/function/IntConsumer;

.field public final mContext:Landroid/content/Context;

.field private mFlags:I

.field private final mPendingViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/launcher3/widget/PendingAppWidgetHostView;",
            ">;"
        }
    .end annotation
.end field

.field private final mProviderChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/widget/LauncherAppWidgetHost$ProviderChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/launcher3/widget/LauncherAppWidgetHostView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;-><init>(Landroid/content/Context;Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/function/IntConsumer;)V
    .registers 4

    const/16 v0, 0x400

    invoke-direct {p0, p1, v0}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mProviderChangeListeners:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mViews:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mPendingViews:Landroid/util/SparseArray;

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mFlags:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mAppWidgetRemovedCallback:Ljava/util/function/IntConsumer;

    iput-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mAppWidgetInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    iput-object p1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mAppWidgetRemovedCallback:Ljava/util/function/IntConsumer;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/BaseActivity;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->lambda$sendActionCancelled$2(Lcom/android/launcher3/BaseActivity;I)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/widget/LauncherAppWidgetHost;Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->lambda$stopListening$1(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/widget/LauncherAppWidgetHost;Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->lambda$startListening$0(Ljava/lang/Object;)V

    return-void
.end method

.method private getConfigurationActivityOptions(Lcom/android/launcher3/BaseDraggingActivity;I)Landroid/os/Bundle;
    .registers 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    const/4 p2, 0x0

    if-nez p0, :cond_c

    return-object p2

    :cond_c
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher3/model/data/ItemInfo;

    if-nez v1, :cond_15

    return-object p2

    :cond_15
    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p1, p0, v0}, Lcom/android/launcher3/BaseDraggingActivity;->getActivityLaunchOptions(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ActivityOptionsWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/util/ActivityOptionsWrapper;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    const/4 p1, 0x0

    const-string p2, "android.activity.splashScreenStyle"

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method private static synthetic lambda$sendActionCancelled$2(Lcom/android/launcher3/BaseActivity;I)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher3/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$startListening$0(Ljava/lang/Object;)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->doStartListening()V

    return-void
.end method

.method private synthetic lambda$stopListening$1(Ljava/lang/Object;)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->doStopListening()V

    return-void
.end method

.method private sendActionCancelled(Lcom/android/launcher3/BaseActivity;I)V
    .registers 4

    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Landroidx/core/content/res/c;

    invoke-direct {v0, p1, p2}, Landroidx/core/content/res/c;-><init>(Lcom/android/launcher3/BaseActivity;I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setShouldListenFlag(IZ)V
    .registers 4

    if-eqz p2, :cond_8

    iget p2, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mFlags:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mFlags:I

    goto :goto_e

    :cond_8
    iget p2, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mFlags:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mFlags:I

    :goto_e
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->isListening()Z

    move-result p1

    if-nez p1, :cond_1f

    iget p2, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mFlags:I

    const/16 v0, 0xe

    and-int/2addr p2, v0

    if-ne p2, v0, :cond_1f

    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->startListening()V

    goto :goto_2a

    :cond_1f
    if-eqz p1, :cond_2a

    iget p1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mFlags:I

    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_2a

    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->stopListening()V

    :cond_2a
    :goto_2a
    return-void
.end method


# virtual methods
.method public addPendingView(ILcom/android/launcher3/widget/PendingAppWidgetHostView;)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mPendingViews:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public addProviderChangeListener(Lcom/android/launcher3/widget/LauncherAppWidgetHost$ProviderChangedListener;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mProviderChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public allocateAppWidgetId()I
    .registers 1

    invoke-super {p0}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result p0

    return p0
.end method

.method public clearViews()V
    .registers 1

    invoke-super {p0}, Landroid/appwidget/AppWidgetHost;->clearViews()V

    iget-object p0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public createView(Landroid/content/Context;ILcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .registers 5

    invoke-virtual {p3}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->isCustomWidget()Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance p2, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    invoke-direct {p2, p1}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;-><init>(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mAppWidgetInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    invoke-virtual {p2, p0}, Landroid/appwidget/AppWidgetHostView;->setInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)V

    const/4 p0, 0x0

    invoke-virtual {p2, p0, p3}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    sget-object p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;

    invoke-virtual {p0, p2}, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->onViewCreated(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;)V

    return-object p2

    :cond_20
    :try_start_20
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object p0
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_24} :catch_25

    return-object p0

    :catch_25
    move-exception p1

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isBinderSizeError(Ljava/lang/Exception;)Z

    move-result v0

    if-nez v0, :cond_45

    const-string/jumbo p0, "message = "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LauncherAppWidgetHost"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_45
    iget-object p1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-nez p1, :cond_55

    iget-object p1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    move-result-object p1

    :cond_55
    invoke-virtual {p1, p2, p3}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    invoke-virtual {p1}, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->switchToErrorView()V

    return-object p1
.end method

.method public deleteAppWidgetId(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    iget-object p0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public doStartListening()V
    .registers 4

    const-string v0, "Widget"

    const-string v1, "LauncherAppWidgetHost"

    const-string/jumbo v2, "real doStartListening..."

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mFlags:I

    :try_start_10
    invoke-super {p0}, Landroid/appwidget/AppWidgetHost;->startListening()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_13} :catch_14

    goto :goto_18

    :catch_14
    move-exception v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isBinderSizeError(Ljava/lang/Exception;)Z

    :goto_18
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_20
    if-ltz v0, :cond_34

    iget-object v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    instance-of v2, v1, Lcom/android/launcher3/widget/DeferredAppWidgetHostView;

    if-eqz v2, :cond_31

    invoke-virtual {v1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->reInflate()V

    :cond_31
    add-int/lit8 v0, v0, -0x1

    goto :goto_20

    :cond_34
    return-void
.end method

.method public doStopListening()V
    .registers 4

    const-string v0, "Widget"

    const-string v1, "LauncherAppWidgetHost"

    const-string/jumbo v2, "real doStopListening..."

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mFlags:I

    :try_start_10
    invoke-super {p0}, Landroid/appwidget/AppWidgetHost;->stopListening()V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_14

    goto :goto_1a

    :catchall_14
    move-exception p0

    const-string v0, "doStopListening: "

    invoke-static {v0, p0, v1}, Lcom/android/common/util/f;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_1a
    return-void
.end method

.method public isListening()Z
    .registers 2

    iget p0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mFlags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public onAppWidgetRemoved(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mAppWidgetRemovedCallback:Ljava/util/function/IntConsumer;

    if-nez p0, :cond_d

    const-string p0, "LauncherAppWidgetHost"

    const-string/jumbo p1, "onAppWidgetRemoved mAppWidgetRemovedCallback is null"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d
    invoke-interface {p0, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method

.method public bridge synthetic onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    move-result-object p0

    return-object p0
.end method

.method public onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    .registers 4

    iget-object p3, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mPendingViews:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_16

    iget-object p1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mPendingViews:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    iget-object p3, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mPendingViews:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_21

    :cond_16
    new-instance p3, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    invoke-direct {p3, p1}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mAppWidgetInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    invoke-virtual {p3, p1}, Landroid/appwidget/AppWidgetHostView;->setInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)V

    move-object p1, p3

    :goto_21
    iget-object p0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p1
.end method

.method public onProviderChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object p2

    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetHost;->onProviderChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V

    iget-object p1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object p1

    if-nez p1, :cond_23

    const-string p1, "LauncherAppWidgetHost"

    const-string v0, "LauncherAppState  getIDP is null "

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/InvariantDeviceProfile;->getCurrentGridName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/android/launcher3/OplusInvariantDeviceProfile;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :cond_23
    iget-object p0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p0, p1}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->initSpans(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;)V

    return-void
.end method

.method public onProvidersChanged()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mProviderChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mProviderChangeListeners:Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/LauncherAppWidgetHost$ProviderChangedListener;

    invoke-interface {v0}, Lcom/android/launcher3/widget/LauncherAppWidgetHost$ProviderChangedListener;->notifyWidgetProvidersChanged()V

    goto :goto_13

    :cond_23
    return-void
.end method

.method public removeProviderChangeListener(Lcom/android/launcher3/widget/LauncherAppWidgetHost$ProviderChangedListener;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mProviderChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setActivityResumed(Z)V
    .registers 3

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->setShouldListenFlag(IZ)V

    return-void
.end method

.method public setActivityStarted(Z)V
    .registers 3

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->setShouldListenFlag(IZ)V

    return-void
.end method

.method public setInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mAppWidgetInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHost;->setInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)V

    return-void
.end method

.method public setStateIsNormal(Z)V
    .registers 3

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->setShouldListenFlag(IZ)V

    return-void
.end method

.method public startBindFlow(Lcom/android/launcher3/BaseActivity;ILandroid/appwidget/AppWidgetProviderInfo;I)V
    .registers 6

    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.appwidget.action.APPWIDGET_BIND"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "appWidgetId"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    iget-object p2, p3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    const-string v0, "appWidgetProvider"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p3}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object p2

    const-string p3, "appWidgetProviderProfile"

    invoke-virtual {p0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p0

    :try_start_1f
    invoke-virtual {p1, p0, p4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_22
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_22} :catch_23

    goto :goto_3b

    :catch_23
    move-exception p0

    const-string/jumbo p1, "message = "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LauncherAppWidgetHost"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3b
    return-void
.end method

.method public startConfigActivity(Lcom/android/launcher3/BaseDraggingActivity;II)V
    .registers 12

    :try_start_0
    const-string v0, "Main"

    const-string/jumbo v1, "start: startConfigActivity"

    invoke-static {v0, v1}, Lcom/android/launcher3/testing/TestLogging;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->getConfigurationActivityOptions(Lcom/android/launcher3/BaseDraggingActivity;I)Landroid/os/Bundle;

    move-result-object v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v6, p3

    invoke-virtual/range {v2 .. v7}, Landroid/appwidget/AppWidgetHost;->startAppWidgetConfigureActivityForResult(Landroid/app/Activity;IIILandroid/os/Bundle;)V
    :try_end_14
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_14} :catch_2e
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_14} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    goto :goto_3c

    :catch_15
    move-exception p0

    const-string/jumbo p1, "message = "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LauncherAppWidgetHost"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c

    :catch_2e
    const p2, 0x7f1200b5

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    invoke-direct {p0, p1, p3}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->sendActionCancelled(Lcom/android/launcher3/BaseActivity;I)V

    :goto_3c
    return-void
.end method

.method public startListening()V
    .registers 4

    const-string/jumbo v0, "startListening, mFlags = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Widget"

    const-string v2, "LauncherAppWidgetHost"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->isListening()Z

    move-result v0

    if-nez v0, :cond_29

    new-instance v0, Landroidx/core/location/a;

    invoke-direct {v0, p0}, Landroidx/core/location/a;-><init>(Lcom/android/launcher3/widget/LauncherAppWidgetHost;)V

    invoke-static {}, Lcom/android/launcher/widget/AppWidgetListenHelper;->getInstance()Lcom/android/launcher/widget/AppWidgetListenHelper;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/launcher/widget/AppWidgetListenHelper;->inject(Ljava/util/function/Consumer;)V

    :cond_29
    return-void
.end method

.method public stopListening()V
    .registers 4

    const-string/jumbo v0, "stopListening, mFlags = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Widget"

    const-string v2, "LauncherAppWidgetHost"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->isListening()Z

    move-result v0

    if-eqz v0, :cond_2c

    new-instance v0, Lcom/android/launcher/guide/side/e;

    invoke-direct {v0, p0}, Lcom/android/launcher/guide/side/e;-><init>(Lcom/android/launcher3/widget/LauncherAppWidgetHost;)V

    invoke-static {}, Lcom/android/launcher/widget/AppWidgetListenHelper;->getInstance()Lcom/android/launcher/widget/AppWidgetListenHelper;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/launcher/widget/AppWidgetListenHelper;->inject(Ljava/util/function/Consumer;)V

    invoke-static {}, Lcom/android/launcher/freeze/OplusFreezeManager;->updateInVisibleWidgets()V

    :cond_2c
    return-void
.end method
