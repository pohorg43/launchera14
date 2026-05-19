.class public final Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;
.super Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/oplus/flexiblewindow/FlexibleWindowManager$IEmbeddedWindowCallback;
.implements Lcom/oplus/quickstep/dynamictask/flexible/IFakeEmbeddedWindowCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher$WhenMappings;,
        Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFlexibleTaskDispatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FlexibleTaskDispatcher.kt\ncom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,315:1\n1#2:316\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher$Companion;

.field private static final DELAY_SHOW_MSG_WHAT:I = 0x0

.field public static final SUPPORT:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "RFT_Dispatcher"

.field private static final isFwkSupport:Z


# instance fields
.field private ignoreNotified:Z

.field private isShowMsgDispatching:Z

.field private final mainHandler:Landroid/os/Handler;

.field private final systemListener:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher$systemListener$1;

.field private final wrapper:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->Companion:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher$Companion;

    :try_start_8
    const-class v0, Lcom/oplus/flexiblewindow/FlexibleTaskView;

    const-string v1, "KEY_SUPER_LOCK"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_12

    goto :goto_17

    :catchall_12
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_17
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_24

    const-string v2, "isFwkSupport, e="

    const-string v3, "RFT_Dispatcher"

    invoke-static {v2, v1, v3}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_24
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    instance-of v2, v0, Lh4/k$a;

    if-eqz v2, :cond_2b

    move-object v0, v1

    :cond_2b
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->isFwkSupport:Z

    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isFlexibleTaskSupport()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_51

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v2

    if-nez v2, :cond_51

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v2

    if-nez v2, :cond_51

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isLightWeightOS()Z

    move-result v1

    if-nez v1, :cond_51

    move v1, v3

    goto :goto_52

    :cond_51
    move v1, v4

    :goto_52
    if-eqz v1, :cond_57

    if-eqz v0, :cond_57

    goto :goto_58

    :cond_57
    move v3, v4

    :goto_58
    sput-boolean v3, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->SUPPORT:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->mainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    invoke-direct {v0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->wrapper:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    new-instance v0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher$systemListener$1;

    invoke-direct {v0, p0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher$systemListener$1;-><init>(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;)V

    iput-object v0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->systemListener:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher$systemListener$1;

    return-void
.end method

.method public static synthetic a(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->notifyTaskEmbeddedStatus$lambda$2$lambda$1(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    return-void
.end method

.method public static final synthetic access$getMRecentsView(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;)Lcom/android/quickstep/views/OplusRecentsViewImpl;
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getWrapper$p(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;)Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->wrapper:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    return-object p0
.end method

.method public static final synthetic access$isShowMsgDispatching$p(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->isShowMsgDispatching:Z

    return p0
.end method

.method private static final notifyTaskEmbeddedStatus$lambda$2$lambda$1(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;->SYSTEM_NOTIFIED:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    invoke-virtual {p0, p1, v0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->release(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;)Z

    return-void
.end method


# virtual methods
.method public adjustFlexiblePositionForIme(ZI)V
    .registers 3

    return-void
.end method

.method public autoScaleToOriginPosition()V
    .registers 1

    return-void
.end method

.method public cancelPreparingTask()V
    .registers 3

    iget-boolean v0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->isShowMsgDispatching:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string v0, "RFT_Dispatcher"

    const-string v1, "cancelPreparingTask()"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->mainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->isShowMsgDispatching:Z

    return-void
.end method

.method public getDynamicTaskView()Lcom/android/quickstep/views/OplusTaskViewImpl;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->wrapper:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    invoke-virtual {p0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->getAttachedTaskView()Lcom/android/quickstep/views/OplusTaskViewImpl;

    move-result-object p0

    return-object p0
.end method

.method public getReleaseScene(Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;)Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease;
    .registers 3

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_68

    new-instance p1, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->wrapper:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    invoke-direct {p1, p0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;-><init>(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;)V

    goto :goto_67

    :pswitch_18  #0xa
    new-instance p1, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneContentProtected;

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->wrapper:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    invoke-direct {p1, p0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneContentProtected;-><init>(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;)V

    goto :goto_67

    :pswitch_20  #0x9
    new-instance p1, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneRecentDetach;

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->wrapper:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    invoke-direct {p1, p0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneRecentDetach;-><init>(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;)V

    goto :goto_67

    :pswitch_28  #0x8
    new-instance p1, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneNotified;

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->wrapper:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    invoke-direct {p1, p0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneNotified;-><init>(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;)V

    goto :goto_67

    :pswitch_30  #0x7
    new-instance p1, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneClearAll;

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->wrapper:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    invoke-direct {p1, p0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneClearAll;-><init>(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;)V

    goto :goto_67

    :pswitch_38  #0x6
    new-instance p1, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneWindowModeChanged;

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->wrapper:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    invoke-direct {p1, p0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneWindowModeChanged;-><init>(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;)V

    goto :goto_67

    :pswitch_40  #0x5
    new-instance p1, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneRemoveTask;

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->wrapper:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    invoke-direct {p1, p0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneRemoveTask;-><init>(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;)V

    goto :goto_67

    :pswitch_48  #0x4
    new-instance p1, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneExitRecentStart;

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->wrapper:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    invoke-direct {p1, p0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneExitRecentStart;-><init>(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;)V

    goto :goto_67

    :pswitch_50  #0x3
    new-instance p1, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseScenePullLaunch;

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->wrapper:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    invoke-direct {p1, p0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseScenePullLaunch;-><init>(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;)V

    goto :goto_67

    :pswitch_58  #0x2
    new-instance p1, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneLaunchTask;

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->wrapper:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    invoke-direct {p1, p0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneLaunchTask;-><init>(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;)V

    goto :goto_67

    :pswitch_60  #0x1
    new-instance p1, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask;

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->wrapper:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    invoke-direct {p1, p0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask;-><init>(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;)V

    :goto_67
    return-object p1

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_60  #00000001
        :pswitch_58  #00000002
        :pswitch_50  #00000003
        :pswitch_48  #00000004
        :pswitch_40  #00000005
        :pswitch_38  #00000006
        :pswitch_30  #00000007
        :pswitch_28  #00000008
        :pswitch_20  #00000009
        :pswitch_18  #0000000a
    .end packed-switch
.end method

.method public getShowScene(Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;)Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow;
    .registers 3

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_39

    const/4 v0, 0x2

    if-eq p1, v0, :cond_31

    const/4 v0, 0x3

    if-eq p1, v0, :cond_29

    const/4 v0, 0x4

    if-eq p1, v0, :cond_21

    new-instance p1, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskShowScene;

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->wrapper:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    invoke-direct {p1, p0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskShowScene;-><init>(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;)V

    goto :goto_40

    :cond_21
    new-instance p1, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ShowSceneUnprotect;

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->wrapper:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    invoke-direct {p1, p0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ShowSceneUnprotect;-><init>(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;)V

    goto :goto_40

    :cond_29
    new-instance p1, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ShowSceneAttachRecent;

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->wrapper:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    invoke-direct {p1, p0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ShowSceneAttachRecent;-><init>(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;)V

    goto :goto_40

    :cond_31
    new-instance p1, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ShowSceneEnterRecent;

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->wrapper:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    invoke-direct {p1, p0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ShowSceneEnterRecent;-><init>(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;)V

    goto :goto_40

    :cond_39
    new-instance p1, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ShowSceneZoomHide;

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->wrapper:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    invoke-direct {p1, p0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ShowSceneZoomHide;-><init>(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;)V

    :goto_40
    return-object p1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 10

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    move v0, v2

    :goto_e
    iget-object v3, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->wrapper:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    invoke-virtual {v3}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->isReleasing()Z

    move-result v3

    iget-object v4, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->wrapper:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    invoke-virtual {v4}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->isShowing()Z

    move-result v4

    const-string v5, "handleMessage(), "

    const-string v6, ", "

    invoke-static {v5, v0, v6, v3, v6}, Lcom/android/common/config/h;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->isShowMsgDispatching:Z

    const-string v7, "RFT_Dispatcher"

    invoke-static {v5, v6, v7}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    if-eqz v0, :cond_33

    iput-boolean v2, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->isShowMsgDispatching:Z

    :cond_33
    if-eqz v0, :cond_7b

    if-nez v3, :cond_7b

    if-nez v4, :cond_7b

    invoke-virtual {p0}, Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object v0

    if-nez v0, :cond_40

    return v2

    :cond_40
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, p1, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;

    if-eqz v3, :cond_49

    check-cast p1, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;

    goto :goto_4a

    :cond_49
    const/4 p1, 0x0

    :goto_4a
    if-nez p1, :cond_4d

    return v2

    :cond_4d
    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->getShowScene(Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;)Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow;->allow(Lcom/android/quickstep/views/OplusRecentsViewImpl;)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage(), show("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "), allow="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_7a

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->getShowScene(Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;)Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow;->show(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    :cond_7a
    return v1

    :cond_7b
    return v2
.end method

.method public isDynamicShowing()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->wrapper:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    invoke-virtual {p0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->isShowing()Z

    move-result p0

    return p0
.end method

.method public isDynamicTask(Lcom/android/quickstep/views/OplusTaskViewImpl;)Z
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->wrapper:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    invoke-virtual {p0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->getAttachedTaskView()Lcom/android/quickstep/views/OplusTaskViewImpl;

    move-result-object p0

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isDynamicTask(Lcom/android/systemui/shared/recents/model/Task;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_14

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz p1, :cond_14

    iget-object v2, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->wrapper:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    invoke-virtual {v2}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->getFlexibleTaskId()I

    move-result v2

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne v2, p1, :cond_14

    move p1, v0

    goto :goto_15

    :cond_14
    move p1, v1

    :goto_15
    if-eqz p1, :cond_21

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->wrapper:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    invoke-virtual {p0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->getFlexibleTaskId()I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_21

    goto :goto_22

    :cond_21
    move v0, v1

    :goto_22
    return v0
.end method

.method public notifyCanvasContainerReleaseTasks()V
    .registers 1

    return-void
.end method

.method public notifyDragStart()V
    .registers 1

    return-void
.end method

.method public notifyFlexibleTaskVanish(I)V
    .registers 2

    return-void
.end method

.method public notifyFlexibleTaskVanish(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 2

    return-void
.end method

.method public notifyTaskEmbeddedStatus(Landroid/app/ActivityManager$RunningTaskInfo;Z)V
    .registers 5
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    const-string v0, "notifyTaskEmbeddedStatus(), isBind="

    const-string v1, ", ignore="

    invoke-static {v0, p2, v1}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->ignoreNotified:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1b

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RFT_Dispatcher"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->ignoreNotified:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    iput-boolean v1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->ignoreNotified:Z

    return-void

    :cond_30
    invoke-virtual {p0}, Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;->getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object v0

    if-eqz v0, :cond_51

    if-nez p2, :cond_51

    if-eqz p1, :cond_45

    iget-object p2, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->wrapper:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    invoke-virtual {p2}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->getFlexibleTaskId()I

    move-result p2

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne p2, p1, :cond_45

    const/4 v1, 0x1

    :cond_45
    if-eqz v1, :cond_51

    iget-object p1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->mainHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/shared/navigationbar/a;

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/shared/navigationbar/a;-><init>(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_51
    return-void
.end method

.method public notifyTaskToFullScreen(I)V
    .registers 2

    return-void
.end method

.method public onCanvasPositionChanged()V
    .registers 1

    return-void
.end method

.method public onOrientedStateChanged(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/util/RecentsOrientedState;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/android/quickstep/util/RecentsOrientedState;",
            ")V"
        }
    .end annotation

    const-string v0, "recentsView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "orientationState"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->wrapper:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    invoke-virtual {p1}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->isShowing()Z

    move-result p1

    if-nez p1, :cond_13

    return-void

    :cond_13
    iget-object p1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->wrapper:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    invoke-virtual {p1}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->getFlexibleView()Lcom/oplus/flexiblewindow/FlexibleTaskView;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_21

    invoke-virtual {p1}, Lcom/oplus/flexiblewindow/FlexibleTaskView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    goto :goto_22

    :cond_21
    move-object p1, v0

    :goto_22
    instance-of v1, p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_29

    move-object v0, p1

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    :cond_29
    if-nez v0, :cond_2c

    return-void

    :cond_2c
    iget-object p1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->wrapper:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    invoke-virtual {p1}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->getAttachedTaskView()Lcom/android/quickstep/views/OplusTaskViewImpl;

    move-result-object p1

    if-nez p1, :cond_35

    return-void

    :cond_35
    invoke-virtual {p2}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getThumbnailTopMargin()I

    move-result p1

    invoke-interface {p2, v0, p1}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->setLayoutParamsForSnapshotView(Landroid/widget/FrameLayout$LayoutParams;I)V

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->wrapper:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    invoke-virtual {p0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->getFlexibleView()Lcom/oplus/flexiblewindow/FlexibleTaskView;

    move-result-object p0

    if-nez p0, :cond_49

    goto :goto_4c

    :cond_49
    invoke-virtual {p0, v0}, Lcom/oplus/flexiblewindow/FlexibleTaskView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_4c
    return-void
.end method

.method public onRecentsAnimationExecuting(ZI)V
    .registers 3

    return-void
.end method

.method public onRecentsViewAttached(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;)V"
        }
    .end annotation

    const-string v0, "recentsView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "RFT_Dispatcher"

    const-string v1, "onRecentsViewAttached"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;->onRecentsViewAttached(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    sget-object v0, Lcom/oplus/quickstep/dynamictask/sys/SystemDetectorCamp;->INSTANCE:Lcom/oplus/quickstep/dynamictask/sys/SystemDetectorCamp;

    invoke-virtual {v0}, Lcom/oplus/quickstep/dynamictask/sys/SystemDetectorCamp;->init()V

    iget-object v1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->systemListener:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher$systemListener$1;

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/dynamictask/sys/SystemDetectorCamp;->addListener(Lcom/oplus/quickstep/dynamictask/sys/SystemDetectorCamp$ISystemListener;)V

    iget-object v0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->wrapper:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    invoke-virtual {v0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->getSystemNotifier()Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v1, v1, v2}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->notifyDynamicExit(IIIZ)V

    invoke-static {}, Lcom/oplus/flexiblewindow/FlexibleWindowManager;->getInstance()Lcom/oplus/flexiblewindow/FlexibleWindowManager;

    move-result-object v0

    iget-object v1, p1, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getTaskId()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/oplus/flexiblewindow/FlexibleWindowManager;->registerEmbeddedWindowContainerCallback(Lcom/oplus/flexiblewindow/FlexibleWindowManager$IEmbeddedWindowCallback;I)V

    sget-object v0, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;->ATTACH_RECENT:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;

    invoke-virtual {p0, p1, v0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->show(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;)V

    return-void
.end method

.method public onRecentsViewDetached(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;)V"
        }
    .end annotation

    const-string v0, "recentsView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "RFT_Dispatcher"

    const-string v1, "onRecentsViewDetached"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;->onRecentsViewDetached(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    sget-object v0, Lcom/oplus/quickstep/dynamictask/sys/SystemDetectorCamp;->INSTANCE:Lcom/oplus/quickstep/dynamictask/sys/SystemDetectorCamp;

    iget-object v1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->systemListener:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher$systemListener$1;

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/dynamictask/sys/SystemDetectorCamp;->removeListener(Lcom/oplus/quickstep/dynamictask/sys/SystemDetectorCamp$ISystemListener;)V

    invoke-static {}, Lcom/oplus/flexiblewindow/FlexibleWindowManager;->getInstance()Lcom/oplus/flexiblewindow/FlexibleWindowManager;

    move-result-object v0

    iget-object p1, p1, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Lcom/oplus/flexiblewindow/FlexibleWindowManager;->unregisterEmbeddedWindowContainerCallback(Lcom/oplus/flexiblewindow/FlexibleWindowManager$IEmbeddedWindowCallback;I)V

    return-void
.end method

.method public release(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;",
            ")Z"
        }
    .end annotation

    const-string v0, "recentsView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;->EXIT_RECENT:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_12

    move v0, v1

    goto :goto_13

    :cond_12
    move v0, v2

    :goto_13
    if-eqz v0, :cond_1e

    iget-object v3, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->wrapper:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    invoke-virtual {v3}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->getSystemNotifier()Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->notifyDynamicFreeze(Z)V

    :cond_1e
    invoke-virtual {p0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->cancelPreparingTask()V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    if-eqz v3, :cond_59

    const-string v3, "release(), reason="

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;->getDesc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", isShowing="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->wrapper:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    invoke-virtual {v4}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->isShowing()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isReleasing="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->wrapper:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    invoke-virtual {v4}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->isReleasing()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RFT_Dispatcher"

    invoke-static {v4, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_59
    iget-object v3, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->wrapper:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    invoke-virtual {v3}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_76

    iget-object v3, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->wrapper:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    invoke-virtual {v3}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->isReleasing()Z

    move-result v3

    if-nez v3, :cond_76

    sget-object v0, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;->PULL_LAUNCH_TASK:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    if-ne p2, v0, :cond_6e

    goto :goto_6f

    :cond_6e
    move v1, v2

    :goto_6f
    iput-boolean v1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->ignoreNotified:Z

    invoke-super {p0, p1, p2}, Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;->release(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;)Z

    move-result p0

    return p0

    :cond_76
    if-eqz v0, :cond_8d

    iget-object p0, p1, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of p1, p0, Lcom/android/launcher/Launcher;

    if-eqz p1, :cond_81

    check-cast p0, Lcom/android/launcher/Launcher;

    goto :goto_82

    :cond_81
    const/4 p0, 0x0

    :goto_82
    if-eqz p0, :cond_8d

    invoke-virtual {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object p0

    if-eqz p0, :cond_8d

    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->hideBlurSurface()V

    :cond_8d
    return v2
.end method

.method public show(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;",
            ")V"
        }
    .end annotation

    const-string v0, "recentsView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->getShowScene(Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;)Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow;

    move-result-object v0

    sget-object v1, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;->ENTER_RECENT:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;

    const/4 v2, 0x1

    if-ne p2, v1, :cond_28

    sget-object v1, Lcom/oplus/quickstep/applock/OplusLockManager;->Companion:Lcom/oplus/quickstep/applock/OplusLockManager$Companion;

    invoke-virtual {v1}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;->getInstance()Lcom/oplus/quickstep/applock/OplusLockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/quickstep/applock/OplusLockManager;->hasSuperLockingApp()Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->wrapper:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    invoke-virtual {v1}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->getSystemNotifier()Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->notifyDynamicFreeze(Z)V

    :cond_28
    invoke-interface {v0}, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow;->verifyAllowFirst()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0, p1}, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow;->allow(Lcom/android/quickstep/views/OplusRecentsViewImpl;)Z

    move-result p1

    if-nez p1, :cond_35

    return-void

    :cond_35
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_51

    const-string p1, "show(), reason="

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "RFT_Dispatcher"

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_51
    const-string p1, "RFT_Dispatcher#show#"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v3, 0x8

    invoke-static {v3, v4, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->cancelPreparingTask()V

    iget-object p1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->mainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->isShowMsgDispatching:Z

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->mainHandler:Landroid/os/Handler;

    invoke-interface {v0}, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow;->delayMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public startReplaceSplitWhenNormalSplit(ILandroid/content/Intent;II)V
    .registers 5

    return-void
.end method

.method public startThreeSplitFromNormalSplit(Landroid/content/Intent;I)V
    .registers 3

    return-void
.end method

.method public support()Z
    .registers 1

    sget-boolean p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->SUPPORT:Z

    return p0
.end method
