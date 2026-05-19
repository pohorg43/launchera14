.class public final Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/flexiblewindow/FlexibleTaskView$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFlexibleTaskViewWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FlexibleTaskViewWrapper.kt\ncom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,408:1\n1#2:409\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper$Companion;

.field private static final KEY_ALLOW_TASK_DETACH_FROM_EMBEDDING:Ljava/lang/String; = "allow_task_detach_from_embedding"

.field private static final KEY_BOUNDS:Ljava/lang/String; = "launchBounds"

.field private static final KEY_DEFAULT_BG:Ljava/lang/String; = "use_default_background_color"

.field private static final KEY_INTENT:Ljava/lang/String; = "intent"

.field private static final KEY_INTERCEPT_INPUT:Ljava/lang/String; = "intercept_input_event"

.field private static final KEY_IS_SUPERLOCK:Ljava/lang/String; = "super_locked"

.field private static final KEY_NEED_ROTATE:Ljava/lang/String; = "need_rotate_task_leash"

.field private static final KEY_ON_TOP:Ljava/lang/String; = "zorder_on_top"

.field private static final KEY_RADIUS:Ljava/lang/String; = "cornerRadius"

.field private static final KEY_SCENARIO:Ljava/lang/String; = "scenario"

.field private static final KEY_SHOW_SURFACE_CORNER_RADIUS:Ljava/lang/String; = "show_surface_corner_radius"

.field private static final KEY_SMART_BACKEND_CARD_ROTATION:Ljava/lang/String; = "smart_backend_card_rotation"

.field private static final KEY_TASKID:Ljava/lang/String; = "taskId"

.field private static final KEY_USERID:Ljava/lang/String; = "userId"

.field private static final TAG:Ljava/lang/String; = "RFT_FlexibleWrapper"

.field private static final THUMBNAIL_HIDE_DURATION:J = 0x12cL

.field private static final UNIT_NS_TO_S:F = 1.0E9f


# instance fields
.field private attachedTaskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

.field private containerTaskId:I

.field private disassociateTask:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleDisassociateTask;

.field private flexiblePid:I

.field private flexibleTaskId:I

.field private flexibleTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field private flexibleUid:I

.field private flexibleView:Lcom/oplus/flexiblewindow/FlexibleTaskView;

.field private isLandscape:Z

.field private isReleasing:Z

.field private final mainExecutor:Landroid/os/HandlerExecutor;

.field private final mainHandler:Landroid/os/Handler;

.field private skipDisassociate:Z

.field private startShowTimeMillis:J

.field private final systemNotifier$delegate:Lh4/f;

.field private thumbnailHideAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->Companion:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->flexibleTaskId:I

    sget-object v1, Lkotlin/a;->c:Lkotlin/a;

    sget-object v2, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper$systemNotifier$2;->INSTANCE:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper$systemNotifier$2;

    invoke-static {v1, v2}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->systemNotifier$delegate:Lh4/f;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->mainHandler:Landroid/os/Handler;

    new-instance v1, Landroid/os/HandlerExecutor;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->mainExecutor:Landroid/os/HandlerExecutor;

    iput v0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->containerTaskId:I

    iput v0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->flexiblePid:I

    iput v0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->flexibleUid:I

    return-void
.end method

.method public static synthetic a(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->onTaskRemovalStarted$lambda$4$lambda$3(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;)V

    return-void
.end method

.method public static final synthetic access$setThumbnailHideAnimator$p(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;Landroid/animation/ObjectAnimator;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->thumbnailHideAnimator:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method public static synthetic detach$default(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;ZZILjava/lang/Object;)V
    .registers 6

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x1

    if-eqz p4, :cond_6

    move p1, v0

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_b

    move p2, v0

    :cond_b
    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->detach(ZZ)V

    return-void
.end method

.method private final initFlexibleView(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/OplusTaskViewImpl;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/android/quickstep/views/OplusTaskViewImpl;",
            ")V"
        }
    .end annotation

    const-string v0, "RFT_FlexibleWrapper"

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    if-nez v2, :cond_d

    return-void

    :cond_d
    new-instance v3, Lcom/oplus/flexiblewindow/FlexibleTaskView;

    invoke-direct {v3, v1}, Lcom/oplus/flexiblewindow/FlexibleTaskView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->flexibleView:Lcom/oplus/flexiblewindow/FlexibleTaskView;

    sget-object v3, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v4}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v4

    iget-object v4, v4, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    invoke-virtual {v3, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v3}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_34
    iget-object v7, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->attachedTaskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    const/4 v8, -0x1

    if-eqz v7, :cond_46

    invoke-virtual {v7}, Lcom/android/quickstep/views/TaskView;->getThumbnail()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v7

    if-eqz v7, :cond_46

    iget-object v7, v7, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-eqz v7, :cond_46

    iget v7, v7, Lcom/android/systemui/shared/recents/model/ThumbnailData;->orientation:I

    goto :goto_47

    :cond_46
    move v7, v8

    :goto_47
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "initFlexibleView(), orientation, fromThumbnail: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v7, v8, :cond_86

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task;->getTopComponent()Landroid/content/ComponentName;

    move-result-object v7

    const/16 v8, 0x80

    invoke-virtual {v1, v7, v8}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initFlexibleView(), orientation, fromActivityInfo: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    move-result v1

    goto :goto_8c

    :cond_86
    const/4 v1, 0x2

    if-ne v7, v1, :cond_8b

    move v1, v5

    goto :goto_8c

    :cond_8b
    move v1, v6

    :goto_8c
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_90
    .catchall {:try_start_34 .. :try_end_90} :catchall_91

    goto :goto_96

    :catchall_91
    move-exception v1

    invoke-static {v1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    :goto_96
    invoke-static {v1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v7

    if-eqz v7, :cond_a1

    const-string v8, "initFlexibleView(), screenOrientation, e="

    invoke-static {v8, v7, v0}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_a1
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    instance-of v8, v1, Lh4/k$a;

    if-eqz v8, :cond_a8

    move-object v1, v7

    :cond_a8
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->isLandscape:Z

    if-eqz v1, :cond_c0

    new-instance v1, Landroid/graphics/Rect;

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-direct {v1, v6, v6, v7, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_cd

    :cond_c0
    new-instance v1, Landroid/graphics/Rect;

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v1, v6, v6, v7, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_cd
    iget-object v3, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->flexibleView:Lcom/oplus/flexiblewindow/FlexibleTaskView;

    const/4 v4, 0x0

    if-nez v3, :cond_d3

    goto :goto_e1

    :cond_d3
    iget-object v7, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->attachedTaskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-eqz v7, :cond_dd

    new-instance v8, Lcom/oplus/quickstep/dynamictask/DynamicTaskThumbnailDrawable;

    invoke-direct {v8, v7}, Lcom/oplus/quickstep/dynamictask/DynamicTaskThumbnailDrawable;-><init>(Lcom/android/quickstep/views/OplusTaskViewImpl;)V

    goto :goto_de

    :cond_dd
    move-object v8, v4

    :goto_de
    invoke-virtual {v3, v8}, Lcom/oplus/flexiblewindow/FlexibleTaskView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_e1
    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView;->getThumbnail()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object p2

    instance-of v3, p2, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    if-eqz v3, :cond_ec

    check-cast p2, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    goto :goto_ed

    :cond_ec
    move-object p2, v4

    :goto_ed
    if-eqz p2, :cond_f4

    invoke-virtual {p2}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMCurrentCornerRadius()F

    move-result p2

    goto :goto_f5

    :cond_f4
    const/4 p2, 0x0

    :goto_f5
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v7, "scenario"

    invoke-virtual {v3, v7, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v7, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object v7, v7, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    const-string v8, "intent"

    invoke-virtual {v3, v8, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v7, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v7, v7, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    const-string v8, "taskId"

    invoke-virtual {v3, v8, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v7}, Landroid/os/UserHandle;->hashCode()I

    move-result v7

    const-string v8, "userId"

    invoke-virtual {v3, v8, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p1, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {p1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getRotation()I

    move-result p1

    const-string v7, "smart_backend_card_rotation"

    invoke-virtual {v3, v7, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "super_locked"

    invoke-virtual {v3, p1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "cornerRadius"

    invoke-virtual {v3, p1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string p1, "launchBounds"

    invoke-virtual {v3, p1, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "zorder_on_top"

    invoke-virtual {v3, p1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "intercept_input_event"

    invoke-virtual {v3, p1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "use_default_background_color"

    invoke-virtual {v3, p1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "show_surface_corner_radius"

    invoke-virtual {v3, p1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean p1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->isLandscape:Z

    const-string p2, "need_rotate_task_leash"

    invoke-virtual {v3, p2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "allow_task_detach_from_embedding"

    invoke-virtual {v3, p1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_19d

    const-string p1, "initFlexibleView(), flexibleView="

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->flexibleView:Lcom/oplus/flexiblewindow/FlexibleTaskView;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", bundle="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", task:["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz p2, :cond_17f

    iget p2, p2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_180

    :cond_17f
    move-object p2, v4

    :goto_180
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz p2, :cond_18e

    iget-object v4, p2, Lcom/oplus/systemui/shared/system/OplusBaseTaskKey;->topComponent:Landroid/content/ComponentName;

    :cond_18e
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p2, 0x5d

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19d
    iget-object p1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->flexibleView:Lcom/oplus/flexiblewindow/FlexibleTaskView;

    if-eqz p1, :cond_1a6

    iget-object p2, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->mainExecutor:Landroid/os/HandlerExecutor;

    invoke-virtual {p1, p2, p0}, Lcom/oplus/flexiblewindow/FlexibleTaskView;->setListener(Ljava/util/concurrent/Executor;Lcom/oplus/flexiblewindow/FlexibleTaskView$Listener;)V

    :cond_1a6
    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->flexibleView:Lcom/oplus/flexiblewindow/FlexibleTaskView;

    if-eqz p0, :cond_1ad

    invoke-virtual {p0, v3}, Lcom/oplus/flexiblewindow/FlexibleTaskView;->init(Landroid/os/Bundle;)V

    :cond_1ad
    return-void
.end method

.method private static final onTaskRemovalStarted$lambda$4$lambda$3(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p0, v0, v0, v1, v2}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->detach$default(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;ZZILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic prepareDisassociateTask$default(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;ZILjava/lang/Object;)Lcom/oplus/quickstep/dynamictask/flexible/FlexibleDisassociateTask;
    .registers 4

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_5

    move p1, p3

    :cond_5
    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->prepareDisassociateTask(Z)Lcom/oplus/quickstep/dynamictask/flexible/FlexibleDisassociateTask;

    move-result-object p0

    return-object p0
.end method

.method private final reset()V
    .registers 7

    iget-object v0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->attachedTaskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    if-eqz v0, :cond_d

    iget v0, v0, Lcom/oplus/systemui/shared/system/OplusBaseTask;->pid:I

    goto :goto_22

    :cond_d
    sget-object v0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleReflection;->INSTANCE:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleReflection;

    iget-object v1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->flexibleTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    const-string v2, "pid"

    invoke-virtual {v0, v1, v2}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleReflection;->getTaskInfoField(Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_22

    :cond_20
    iget v0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->flexiblePid:I

    :goto_22
    iget-object v1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->attachedTaskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-eqz v1, :cond_2f

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    if-eqz v1, :cond_2f

    iget v1, v1, Lcom/oplus/systemui/shared/system/OplusBaseTask;->uid:I

    goto :goto_44

    :cond_2f
    sget-object v1, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleReflection;->INSTANCE:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleReflection;

    iget-object v2, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->flexibleTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    const-string v3, "uid"

    invoke-virtual {v1, v2, v3}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleReflection;->getTaskInfoField(Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_42

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_44

    :cond_42
    iget v1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->flexibleUid:I

    :goto_44
    const-string v2, "reset(), flexible: ["

    const-string v3, ", "

    const-string v4, "], "

    invoke-static {v2, v0, v3, v1, v4}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->flexibleView:Lcom/oplus/flexiblewindow/FlexibleTaskView;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->flexibleTaskId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->thumbnailHideAnimator:Landroid/animation/ObjectAnimator;

    const/4 v4, 0x0

    if-eqz v3, :cond_6c

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_6d

    :cond_6c
    move-object v3, v4

    :goto_6d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RFT_FlexibleWrapper"

    invoke-static {v3, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->getSystemNotifier()Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;

    move-result-object v2

    iget v3, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->flexibleTaskId:I

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v1, v3, v5}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->notifyDynamicExit(IIIZ)V

    iget-object v0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->thumbnailHideAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_8a

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_8a
    iput-object v4, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->thumbnailHideAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->attachedTaskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-eqz v0, :cond_95

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getThumbnail()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v0

    goto :goto_96

    :cond_95
    move-object v0, v4

    :goto_96
    if-nez v0, :cond_99

    goto :goto_9e

    :cond_99
    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :goto_9e
    iput-boolean v5, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->skipDisassociate:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->flexiblePid:I

    iput v0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->flexibleUid:I

    iput v0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->flexibleTaskId:I

    iput-object v4, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->attachedTaskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    iput-object v4, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->disassociateTask:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleDisassociateTask;

    iput-object v4, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->flexibleView:Lcom/oplus/flexiblewindow/FlexibleTaskView;

    iput-boolean v5, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->isReleasing:Z

    iput-boolean v5, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->isLandscape:Z

    iput-object v4, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->flexibleTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    sget-object p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->Companion:Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$Companion;

    invoke-virtual {p0}, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$Companion;->getRunningDynamicPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$Companion;->setDetachingDynamicPkgName(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$Companion;->setRunningDynamicPkgName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final attach(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/OplusTaskViewImpl;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/android/quickstep/views/OplusTaskViewImpl;",
            ")V"
        }
    .end annotation

    const-string v0, "recentsView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_14

    iget v0, v0, Lcom/oplus/systemui/shared/system/OplusBaseTask;->pid:I

    goto :goto_15

    :cond_14
    move v0, v1

    :goto_15
    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    if-eqz v2, :cond_1e

    iget v2, v2, Lcom/oplus/systemui/shared/system/OplusBaseTask;->uid:I

    goto :goto_1f

    :cond_1e
    move v2, v1

    :goto_1f
    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    if-eqz v3, :cond_2c

    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v3, :cond_2c

    iget v3, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    goto :goto_2d

    :cond_2c
    move v3, v1

    :goto_2d
    if-eq v0, v1, :cond_3e

    if-eq v2, v1, :cond_3e

    if-eq v3, v1, :cond_3e

    invoke-virtual {p0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->getSystemNotifier()Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;

    move-result-object v4

    invoke-virtual {v4, v0, v2, v3}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->notifyDynamicEnter(III)V

    iput v0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->flexiblePid:I

    iput v2, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->flexibleUid:I

    :cond_3e
    iput-object p2, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->attachedTaskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    iput v3, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->flexibleTaskId:I

    sget-object v3, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;->Companion:Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$Companion;

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_50

    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/model/Task;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_51

    :cond_50
    move-object v4, v5

    :goto_51
    invoke-virtual {v3, v4}, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$Companion;->setRunningDynamicPkgName(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView;->getThumbnail()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v3

    instance-of v4, v3, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    if-eqz v4, :cond_5f

    check-cast v3, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    goto :goto_60

    :cond_5f
    move-object v3, v5

    :goto_60
    if-eqz v3, :cond_11b

    invoke-virtual {v3}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getMCurrentCornerRadius()F

    move-result v3

    iget-object v4, p1, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v6, v4, Lcom/android/launcher/Launcher;

    if-eqz v6, :cond_6f

    move-object v5, v4

    check-cast v5, Lcom/android/launcher/Launcher;

    :cond_6f
    if-eqz v5, :cond_7b

    invoke-virtual {v5}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object v4

    if-eqz v4, :cond_7b

    const/4 v5, -0x3

    invoke-virtual {v4, v5}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->showBlurSurface(I)V

    :cond_7b
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_80
    const-string v6, "RFT_FlexibleWrapper"

    if-ge v5, v4, :cond_ae

    invoke-virtual {p2, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    instance-of v8, v7, Lcom/oplus/flexiblewindow/FlexibleTaskView;

    if-eqz v8, :cond_ab

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "attach(), i="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", remove "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v7}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_ab
    add-int/lit8 v5, v5, 0x1

    goto :goto_80

    :cond_ae
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getPagedViewOrientedState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getThumbnailTopMargin()I

    move-result v5

    invoke-interface {v1, v4, v5}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->setLayoutParamsForSnapshotView(Landroid/widget/FrameLayout$LayoutParams;I)V

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView;->getThumbnail()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-direct {p0, p1, p2}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->initFlexibleView(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/OplusTaskViewImpl;)V

    iget-object v5, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->flexibleView:Lcom/oplus/flexiblewindow/FlexibleTaskView;

    add-int/lit8 v7, v1, -0x1

    invoke-virtual {p2, v5, v7, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p1, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result p1

    iput p1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->containerTaskId:I

    const-string p1, "attach(), containerTaskId="

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v4, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->containerTaskId:I

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", task="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    const-string v4, "], thumbnailDepth="

    invoke-static {p1, v0, p2, v2, v4}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", radius="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", flexibleView="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->flexibleView:Lcom/oplus/flexiblewindow/FlexibleTaskView;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11b
    return-void
.end method

.method public final detach(ZZ)V
    .registers 9

    invoke-virtual {p0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->isShowing()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->reset()V

    return-void

    :cond_a
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_51

    const-string v0, "detach(), ["

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->containerTaskId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->flexibleTaskId:I

    const-string v4, "], layoutParent="

    const-string v5, ", skip["

    invoke-static {v0, v3, v4, p1, v5}, Lcom/android/launcher/k0;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ZLjava/lang/String;)V

    iget-boolean v3, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->skipDisassociate:Z

    const-string v4, "], flexibleView: "

    invoke-static {v0, v3, v2, p2, v4}, Lcom/android/launcher/m0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget-object v2, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->flexibleView:Lcom/oplus/flexiblewindow/FlexibleTaskView;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", parent="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->flexibleView:Lcom/oplus/flexiblewindow/FlexibleTaskView;

    if-eqz v2, :cond_44

    invoke-virtual {v2}, Lcom/oplus/flexiblewindow/FlexibleTaskView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_45

    :cond_44
    move-object v2, v1

    :goto_45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RFT_FlexibleWrapper"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_51
    iget-boolean v0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->skipDisassociate:Z

    if-nez v0, :cond_5b

    invoke-virtual {p0, p2}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->prepareDisassociateTask(Z)Lcom/oplus/quickstep/dynamictask/flexible/FlexibleDisassociateTask;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->disassociateTask:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleDisassociateTask;

    :cond_5b
    if-eqz p1, :cond_77

    iget-object p1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->flexibleView:Lcom/oplus/flexiblewindow/FlexibleTaskView;

    if-eqz p1, :cond_66

    invoke-virtual {p1}, Lcom/oplus/flexiblewindow/FlexibleTaskView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_67

    :cond_66
    move-object p1, v1

    :goto_67
    instance-of p2, p1, Landroid/view/ViewGroup;

    if-eqz p2, :cond_6e

    check-cast p1, Landroid/view/ViewGroup;

    goto :goto_6f

    :cond_6e
    move-object p1, v1

    :goto_6f
    if-eqz p1, :cond_90

    iget-object p2, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->flexibleView:Lcom/oplus/flexiblewindow/FlexibleTaskView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_90

    :cond_77
    iget-object p1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->flexibleView:Lcom/oplus/flexiblewindow/FlexibleTaskView;

    if-eqz p1, :cond_80

    invoke-virtual {p1}, Lcom/oplus/flexiblewindow/FlexibleTaskView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_81

    :cond_80
    move-object p1, v1

    :goto_81
    instance-of p2, p1, Landroid/view/ViewGroup;

    if-eqz p2, :cond_88

    check-cast p1, Landroid/view/ViewGroup;

    goto :goto_89

    :cond_88
    move-object p1, v1

    :goto_89
    if-eqz p1, :cond_90

    iget-object p2, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->flexibleView:Lcom/oplus/flexiblewindow/FlexibleTaskView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    :cond_90
    :goto_90
    iget-object p1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->disassociateTask:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleDisassociateTask;

    if-eqz p1, :cond_99

    sget-object p2, Lcom/oplus/util/OplusExecutors;->DYNAMIC_TASK_EXECUTOR:Lcom/oplus/util/OplusLooperExecutor;

    invoke-virtual {p2, p1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_99
    iget-wide p1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->startShowTimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-gtz p1, :cond_c6

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p1

    iget-object p2, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->attachedTaskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-eqz p2, :cond_b7

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p2

    if-eqz p2, :cond_b7

    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/model/Task;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :cond_b7
    invoke-static {}, Landroid/os/SystemClock;->uptimeNanos()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->startShowTimeMillis:J

    sub-long/2addr v2, v4

    long-to-float p2, v2

    const v0, 0x4e6e6b28  # 1.0E9f

    div-float/2addr p2, v0

    invoke-virtual {p1, v1, p2}, Lcom/android/statistics/LauncherStatistics;->statFlexibleTaskUsageDuration(Ljava/lang/String;F)V

    :cond_c6
    invoke-direct {p0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->reset()V

    return-void
.end method

.method public final getAttachedTaskView()Lcom/android/quickstep/views/OplusTaskViewImpl;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->attachedTaskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    return-object p0
.end method

.method public final getFlexibleTaskId()I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->flexibleTaskId:I

    return p0
.end method

.method public final getFlexibleTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->flexibleTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    return-object p0
.end method

.method public final getFlexibleView()Lcom/oplus/flexiblewindow/FlexibleTaskView;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->flexibleView:Lcom/oplus/flexiblewindow/FlexibleTaskView;

    return-object p0
.end method

.method public final getMainHandler()Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->mainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public final getSkipDisassociate()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->skipDisassociate:Z

    return p0
.end method

.method public final getStartShowTimeMillis()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->startShowTimeMillis:J

    return-wide v0
.end method

.method public final getSystemNotifier()Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->systemNotifier$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;

    return-object p0
.end method

.method public final getThumbnailHideAnimator()Landroid/animation/ObjectAnimator;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->thumbnailHideAnimator:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method public final isLandscape()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->isLandscape:Z

    return p0
.end method

.method public final isReleasing()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->isReleasing:Z

    return p0
.end method

.method public final isShowing()Z
    .registers 4

    iget-object v0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->flexibleView:Lcom/oplus/flexiblewindow/FlexibleTaskView;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/oplus/flexiblewindow/FlexibleTaskView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    instance-of v0, v0, Lcom/android/quickstep/views/OplusTaskViewImpl;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1f

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->flexibleView:Lcom/oplus/flexiblewindow/FlexibleTaskView;

    if-eqz p0, :cond_1c

    invoke-virtual {p0}, Lcom/oplus/flexiblewindow/FlexibleTaskView;->isAttachedToWindow()Z

    move-result p0

    if-ne p0, v2, :cond_1c

    move p0, v2

    goto :goto_1d

    :cond_1c
    move p0, v1

    :goto_1d
    if-eqz p0, :cond_20

    :cond_1f
    move v1, v2

    :cond_20
    return v1
.end method

.method public onTaskChanged(ILandroid/content/ComponentName;Landroid/graphics/Rect;)V
    .registers 11

    sget-object v0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleReflection;->INSTANCE:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleReflection;

    iget-object v1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->flexibleView:Lcom/oplus/flexiblewindow/FlexibleTaskView;

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleReflection;->getFlexibleTaskInfo(Lcom/oplus/flexiblewindow/FlexibleTaskView;)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    const-string v2, "RFT_FlexibleWrapper"

    if-nez v1, :cond_12

    const-string p0, "onTaskChanged(), getFlexibleTaskInfo null, return."

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_12
    const-string v3, "pid"

    invoke-virtual {v0, v1, v3}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleReflection;->getTaskInfoField(Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    const/4 v4, -0x1

    if-eqz v3, :cond_22

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_23

    :cond_22
    move v3, v4

    :goto_23
    const-string v5, "uid"

    invoke-virtual {v0, v1, v5}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleReflection;->getTaskInfoField(Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_33

    :cond_32
    move v0, v4

    :goto_33
    iget v1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->flexiblePid:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v1, v4, :cond_3d

    if-eq v1, v3, :cond_3d

    move v1, v5

    goto :goto_3e

    :cond_3d
    move v1, v6

    :goto_3e
    if-eqz v1, :cond_47

    if-eq v0, v4, :cond_47

    iget v1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->flexibleTaskId:I

    if-ne v1, p1, :cond_47

    goto :goto_48

    :cond_47
    move v5, v6

    :goto_48
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_76

    const-string v1, "onTaskChanged(), ["

    const-string v4, ", "

    invoke-static {v1, p1, v4, v3, v4}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "], "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", notifyAgain="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_76
    if-eqz v5, :cond_83

    iput v3, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->flexiblePid:I

    iput v0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->flexibleUid:I

    invoke-virtual {p0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->getSystemNotifier()Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;

    move-result-object p0

    invoke-virtual {p0, v3, v0, p1}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->notifyDynamicEnter(III)V

    :cond_83
    return-void
.end method

.method public onTaskCreated(ILandroid/content/ComponentName;)V
    .registers 6

    const-string p2, "onTaskCreated(), taskId="

    const-string v0, ", flexibleTaskId="

    invoke-static {p2, p1, v0}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->flexibleTaskId:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", skip="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->skipDisassociate:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", flexibleView="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->flexibleView:Lcom/oplus/flexiblewindow/FlexibleTaskView;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "RFT_FlexibleWrapper"

    invoke-static {v0, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->flexibleView:Lcom/oplus/flexiblewindow/FlexibleTaskView;

    if-nez p2, :cond_41

    const/4 p2, -0x1

    if-eq p1, p2, :cond_40

    iget v0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->containerTaskId:I

    if-eq v0, p2, :cond_40

    new-instance p2, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleDisassociateTask;

    iget p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->containerTaskId:I

    const/4 v0, 0x1

    invoke-direct {p2, p1, p0, v0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleDisassociateTask;-><init>(IIZ)V

    invoke-virtual {p2}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleDisassociateTask;->run()V

    :cond_40
    return-void

    :cond_41
    iget v0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->flexibleTaskId:I

    if-ne p1, v0, :cond_4a

    iget-object v0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->flexibleTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_4a

    return-void

    :cond_4a
    iput p1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->flexibleTaskId:I

    sget-object v0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleReflection;->INSTANCE:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleReflection;

    invoke-virtual {v0, p2}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleReflection;->getFlexibleTaskInfo(Lcom/oplus/flexiblewindow/FlexibleTaskView;)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->flexibleTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {}, Landroid/os/SystemClock;->uptimeNanos()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->startShowTimeMillis:J

    iget-object p2, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->flexibleTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    const-string v1, "pid"

    invoke-virtual {v0, p2, v1}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleReflection;->getTaskInfoField(Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_6b

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_6d

    :cond_6b
    iget p2, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->flexiblePid:I

    :goto_6d
    iget-object v1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->flexibleTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    const-string v2, "uid"

    invoke-virtual {v0, v1, v2}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleReflection;->getTaskInfoField(Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_7e

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_80

    :cond_7e
    iget v0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->flexibleUid:I

    :goto_80
    iget v1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->flexiblePid:I

    if-ne p2, v1, :cond_88

    iget v1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->flexibleUid:I

    if-eq v0, v1, :cond_93

    :cond_88
    iput p2, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->flexiblePid:I

    iput v0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->flexibleUid:I

    invoke-virtual {p0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->getSystemNotifier()Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;

    move-result-object v1

    invoke-virtual {v1, p2, v0, p1}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->notifyDynamicEnter(III)V

    :cond_93
    iget-object p1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->attachedTaskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    const/4 p2, 0x0

    if-eqz p1, :cond_9d

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getThumbnail()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object p1

    goto :goto_9e

    :cond_9d
    move-object p1, p2

    :goto_9e
    instance-of v0, p1, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    if-eqz v0, :cond_a5

    move-object p2, p1

    check-cast p2, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    :cond_a5
    if-nez p2, :cond_a8

    return-void

    :cond_a8
    sget-object p1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_d0

    invoke-static {p2, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-instance v0, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper$onTaskCreated$1$1;

    invoke-direct {v0, p2, p0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper$onTaskCreated$1$1;-><init>(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    iput-object p1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->thumbnailHideAnimator:Landroid/animation/ObjectAnimator;

    return-void

    nop

    :array_d0
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method public onTaskRemovalStarted(I)V
    .registers 5

    const-string v0, "onTaskRemovalStarted(), taskId="

    const-string v1, ", flexibleTaskId="

    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->flexibleTaskId:I

    const-string v2, "RFT_FlexibleWrapper"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->flexibleTaskId:I

    if-ne p1, v0, :cond_45

    iget-object p1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->attachedTaskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    const/4 v0, 0x0

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getThumbnail()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object p1

    goto :goto_1e

    :cond_1d
    move-object p1, v0

    :goto_1e
    instance-of v1, p1, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    if-eqz v1, :cond_25

    move-object v0, p1

    check-cast v0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    :cond_25
    if-eqz v0, :cond_45

    const-wide/16 v1, 0x8

    const-string p1, "onTaskRemovalStarted"

    invoke-static {v1, v2, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->setOnlyDrawDimming(Z)V

    const/high16 p1, 0x3f800000  # 1.0f

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    new-instance p1, Lcom/coui/appcompat/reddot/a;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/reddot/a;-><init>(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_45
    return-void
.end method

.method public final prepareDisassociateTask(Z)Lcom/oplus/quickstep/dynamictask/flexible/FlexibleDisassociateTask;
    .registers 4

    iget v0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->flexibleTaskId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_13

    iget v0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->containerTaskId:I

    if-eq v0, v1, :cond_13

    new-instance v0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleDisassociateTask;

    iget v1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->flexibleTaskId:I

    iget p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->containerTaskId:I

    invoke-direct {v0, v1, p0, p1}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleDisassociateTask;-><init>(IIZ)V

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return-object v0
.end method

.method public final setFlexibleTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->flexibleTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    return-void
.end method

.method public final setLandscape(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->isLandscape:Z

    return-void
.end method

.method public final setReleasing(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->isReleasing:Z

    return-void
.end method

.method public final setSkipDisassociate(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->skipDisassociate:Z

    return-void
.end method

.method public final setStartShowTimeMillis(J)V
    .registers 3

    iput-wide p1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->startShowTimeMillis:J

    return-void
.end method
