.class public Lcom/oplus/splitscreen/util/SplitScreenUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/splitscreen/util/SplitScreenUtils$Record;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.android.launcher.OplusFavoritesProvider"

.field public static final ENABLE_SHELL_TRANSITIONS_IN_SPLIT_SIDE:Z

.field public static final ENABLE_SHELL_TRANSITIONS_SWITCH:Z = false

.field private static final METHOD_UPDATE_DOCKER_EXTRA_ITEM:Ljava/lang/String; = "update_docker_extra_item"

.field private static final RECOMMEND_APPS:Ljava/lang/String; = "recommendApps_"

.field private static final RECOMMEND_APP_LIST:[Ljava/lang/String;

.field private static final SIZE_OF_LIST_SEND_TO_LAUNCHER:I = 0x9

.field private static final TAG:Ljava/lang/String; = "SplitScreenUtils"

.field private static mRecommendMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/oplus/splitscreen/util/SplitScreenUtils$Record;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mShouldUpdateRecommendAppLIst:Z

.field private static sPendingUpdateRecommendAppPair:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 18

    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    :cond_5
    sput-boolean v0, Lcom/oplus/splitscreen/util/SplitScreenUtils;->ENABLE_SHELL_TRANSITIONS_IN_SPLIT_SIDE:Z

    const-string v1, "com.tencent.mm"

    const-string v2, "com.ss.android.ugc.aweme"

    const-string v3, "com.tencent.mobileqq"

    const-string v4, "com.coloros.gallery3d"

    const-string v5, "com.coloros.calculator"

    const-string v6, "com.taobao.taobao"

    const-string v7, "com.heytap.browser"

    const-string v8, "com.tencent.qqlive"

    const-string v9, "com.qiyi.video"

    const-string v10, "com.google.android.youtube"

    const-string v11, "com.whatsapp"

    const-string v12, "com.facebook.katana"

    const-string v13, "com.android.chrome"

    const-string v14, "com.google.android.apps.messaging"

    const-string v15, "com.android.mms"

    const-string v16, "com.coloros.note"

    const-string v17, "com.coloros.filemanager"

    filled-new-array/range {v1 .. v17}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/splitscreen/util/SplitScreenUtils;->RECOMMEND_APP_LIST:[Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/oplus/splitscreen/util/SplitScreenUtils;->mRecommendMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(ZLandroid/window/TransitionInfo$Change;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->lambda$wrapNonApps$1(ZLandroid/window/TransitionInfo$Change;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$000(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)[Landroid/view/RemoteAnimationTarget;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->wrapApps(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)[Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Landroid/window/TransitionInfo;ZLandroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)[Landroid/view/RemoteAnimationTarget;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->wrapNonApps(Landroid/window/TransitionInfo;ZLandroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)[Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    return-object p0
.end method

.method public static addExtraBundle(Landroid/os/Bundle;)V
    .registers 3
    .param p0  # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "SPLIT_SCREEN_TRANSITION_NONE"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic b(Lcom/oplus/splitscreen/util/SplitScreenUtils$Record;Lcom/oplus/splitscreen/util/SplitScreenUtils$Record;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->lambda$sendRecommendAppListToLauncher$0(Lcom/oplus/splitscreen/util/SplitScreenUtils$Record;Lcom/oplus/splitscreen/util/SplitScreenUtils$Record;)I

    move-result p0

    return p0
.end method

.method public static containsRotationActionInTransition(Landroid/window/TransitionInfo;)Z
    .registers 5
    .param p0  # Landroid/window/TransitionInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/systemui/animation/j;->a(Landroid/window/TransitionInfo;I)I

    move-result v1

    :goto_5
    if-ltz v1, :cond_1f

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    move-result v3

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    move-result v2

    if-eq v3, v2, :cond_1c

    return v0

    :cond_1c
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method

.method public static findLeashByToken(Landroid/window/TransitionInfo;Landroid/window/WindowContainerToken;)Landroid/view/SurfaceControl;
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_11

    if-nez p1, :cond_6

    goto :goto_11

    :cond_6
    invoke-virtual {p0, p1}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object p0

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0

    :cond_11
    :goto_11
    return-object v0
.end method

.method public static getAllTopAppInfo()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/app/OplusAppInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/app/OplusActivityManager;

    invoke-direct {v0}, Landroid/app/OplusActivityManager;-><init>()V

    :try_start_5
    invoke-virtual {v0}, Landroid/app/OplusActivityManager;->getAllTopAppInfos()Ljava/util/List;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_a

    goto :goto_22

    :catchall_a
    move-exception v0

    const-string v1, "getAllTopAppInfo t:"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SplitScreenUtils"

    invoke-static {v1, v0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_22
    return-object v0
.end method

.method public static getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->setDarkFilter(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_10} :catch_11

    return-object p1

    :catch_11
    move-exception p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCouiDimColor(Landroid/content/Context;)I
    .registers 2

    sget v0, Lcom/android/wm/shell/R$attr;->couiColorBackgroundWithCard:I

    invoke-static {p0, v0}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->a(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static getCurrentTopActivityNameInActivityStack(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    new-instance p0, Landroid/app/OplusActivityManager;

    invoke-direct {p0}, Landroid/app/OplusActivityManager;-><init>()V

    :try_start_5
    invoke-virtual {p0}, Landroid/app/OplusActivityManager;->getTopActivityComponentName()Landroid/content/ComponentName;

    move-result-object p0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_9} :catch_a

    goto :goto_22

    :catch_a
    move-exception p0

    const-string v0, "getCurrentTopActivityNameInActivityStack: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SplitScreenUtils"

    invoke-static {v0, p0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_22
    if-eqz p0, :cond_29

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    goto :goto_2b

    :cond_29
    const-string p0, ""

    :goto_2b
    return-object p0
.end method

.method public static getCurrentTopAppLabel(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    invoke-static {}, Lcom/oplus/splitscreen/util/OplusActivityManagerWrapper;->getInstance()Lcom/oplus/splitscreen/util/OplusActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/util/OplusActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_d

    return-object v1

    :cond_d
    :try_start_d
    iget v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3e

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    if-nez p0, :cond_21

    goto :goto_3e

    :cond_21
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_25} :catch_27

    move-object v1, p0

    goto :goto_3e

    :catch_27
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentTopAppLabel"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SplitScreenUtils"

    invoke-static {v0, p0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3e
    :goto_3e
    return-object v1
.end method

.method public static getCurrentTopPackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    new-instance p0, Landroid/app/OplusActivityManager;

    invoke-direct {p0}, Landroid/app/OplusActivityManager;-><init>()V

    :try_start_5
    invoke-virtual {p0}, Landroid/app/OplusActivityManager;->getTopActivityComponentName()Landroid/content/ComponentName;

    move-result-object p0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_9} :catch_a

    goto :goto_22

    :catch_a
    move-exception p0

    const-string v0, "getCurrentTopPackageName: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SplitScreenUtils"

    invoke-static {v0, p0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_22
    if-eqz p0, :cond_29

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    goto :goto_2b

    :cond_29
    const-string p0, ""

    :goto_2b
    return-object p0
.end method

.method public static getPendingUpdateRecommendAppPair()Landroid/util/Pair;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/oplus/splitscreen/util/SplitScreenUtils;->sPendingUpdateRecommendAppPair:Landroid/util/Pair;

    return-object v0
.end method

.method public static getReplaceByZoomDragType(I)I
    .registers 2

    invoke-static {p0}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->getTaskIdForZoomDrag(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    sub-int/2addr p0, v0

    return p0
.end method

.method public static getRunningTaskLabel(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;
    .registers 5

    const-string v0, ""

    if-nez p1, :cond_5

    return-object v0

    :cond_5
    :try_start_5
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_36

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    if-nez p0, :cond_19

    goto :goto_36

    :cond_19
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1d} :catch_1f

    move-object v0, p0

    goto :goto_36

    :catch_1f
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRunningTaskLabel"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SplitScreenUtils"

    invoke-static {p1, p0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_36
    :goto_36
    return-object v0
.end method

.method public static getScreenRect(Landroid/content/Context;)Landroid/graphics/Rect;
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static getTaskIdForZoomDrag(I)I
    .registers 1

    shr-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static getToTopLeashWhenDismissUncheck(Landroid/window/TransitionInfo;)Landroid/view/SurfaceControl;
    .registers 5
    .param p0  # Landroid/window/TransitionInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :cond_12
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_34

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_12

    const/high16 v2, 0x100000

    invoke-virtual {v1, v2}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0

    :cond_34
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getToTopTaskInfoFromTransitionInfo(Landroid/window/TransitionInfo;)Ljava/util/ArrayList;
    .registers 6
    .param p0  # Landroid/window/TransitionInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/TransitionInfo;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :cond_d
    :goto_d
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_32

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_d

    const/high16 v3, 0x100000

    invoke-virtual {v2, v3}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_32
    return-object v0
.end method

.method public static hasRotationTransition(Landroid/window/TransitionInfo;)Z
    .registers 6
    .param p0  # Landroid/window/TransitionInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/systemui/animation/j;->a(Landroid/window/TransitionInfo;I)I

    move-result v1

    :goto_5
    if-ltz v1, :cond_2e

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_2b

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    move-result v3

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    move-result v2

    if-eq v3, v2, :cond_2b

    return v0

    :cond_2b
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    :cond_2e
    const/4 p0, 0x0

    return p0
.end method

.method public static initRecommendAppList(Landroid/content/Context;)V
    .registers 11

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->hasLargeScreenFeature()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    const-string v0, "initRecommendAppList in user "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SplitScreenUtils"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/oplus/splitscreen/util/SplitScreenUtils;->mRecommendMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recommendApps_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_99

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4d

    goto :goto_99

    :cond_4d
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_55
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_99

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_70
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_55

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x3

    const-string v7, "\\|"

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/oplus/splitscreen/util/SplitScreenUtils$Record;

    aget-object v7, v5, v1

    const/4 v8, 0x1

    aget-object v8, v5, v8

    const/4 v9, 0x2

    aget-object v5, v5, v9

    invoke-direct {v6, v7, v8, v5}, Lcom/oplus/splitscreen/util/SplitScreenUtils$Record;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/oplus/splitscreen/util/SplitScreenUtils;->mRecommendMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_70

    :cond_99
    :goto_99
    return-void
.end method

.method private static isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_1e

    :cond_a
    const/4 v1, 0x0

    :try_start_b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_13} :catch_14

    goto :goto_1b

    :catch_14
    const-string p0, "SplitScreenUtils"

    const-string p1, "package name not found"

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1b
    if-eqz v1, :cond_1e

    const/4 v0, 0x1

    :cond_1e
    :goto_1e
    return v0
.end method

.method public static isChangingFocusedTaskTransition(Landroid/window/TransitionRequestInfo;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/window/TransitionRequestInfo;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1b

    invoke-virtual {p0}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Landroid/window/TransitionRequestInfo;->getRemoteTransition()Landroid/window/RemoteTransition;

    move-result-object v0

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Landroid/window/TransitionRequestInfo;->getDisplayChange()Landroid/window/TransitionRequestInfo$DisplayChange;

    move-result-object p0

    if-nez p0, :cond_1b

    const/4 p0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    return p0
.end method

.method public static isEnterMinimizedBySplitBarMenu(I)Z
    .registers 2

    const/4 v0, 0x7

    if-eq p0, v0, :cond_a

    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    goto :goto_a

    :cond_8
    const/4 p0, 0x0

    goto :goto_b

    :cond_a
    :goto_a
    const/4 p0, 0x1

    :goto_b
    return p0
.end method

.method public static isEnterMinimizedTransition(I)Z
    .registers 2

    const/16 v0, 0x44e

    if-eq p0, v0, :cond_b

    const/16 v0, 0x44f

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public static isLayoutDirectionRtl()Z
    .registers 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method public static isLeashValid(Landroid/view/SurfaceControl;)Z
    .registers 1

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static isReplaceByZoomDrag(I)Z
    .registers 2

    invoke-static {p0}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->getReplaceByZoomDragType(I)I

    move-result p0

    const/16 v0, 0xc

    if-eq p0, v0, :cond_f

    const/16 v0, 0xd

    if-ne p0, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public static isUserSetup(Landroid/content/Context;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "device_provisioned"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "user_setup_complete"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1
.end method

.method private static synthetic lambda$sendRecommendAppListToLauncher$0(Lcom/oplus/splitscreen/util/SplitScreenUtils$Record;Lcom/oplus/splitscreen/util/SplitScreenUtils$Record;)I
    .registers 7

    iget-wide v0, p0, Lcom/oplus/splitscreen/util/SplitScreenUtils$Record;->count:J

    iget-wide v2, p1, Lcom/oplus/splitscreen/util/SplitScreenUtils$Record;->count:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_d

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0

    :cond_d
    iget-wide v0, p1, Lcom/oplus/splitscreen/util/SplitScreenUtils$Record;->accessTime:J

    iget-wide p0, p0, Lcom/oplus/splitscreen/util/SplitScreenUtils$Record;->accessTime:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$wrapNonApps$1(ZLandroid/window/TransitionInfo$Change;)Z
    .registers 2

    if-eqz p0, :cond_7

    invoke-static {p1}, Lcom/android/wm/shell/util/TransitionUtil;->isWallpaper(Landroid/window/TransitionInfo$Change;)Z

    move-result p0

    goto :goto_b

    :cond_7
    invoke-static {p1}, Lcom/android/wm/shell/util/TransitionUtil;->isNonApp(Landroid/window/TransitionInfo$Change;)Z

    move-result p0

    :goto_b
    return p0
.end method

.method public static saveRecommendAppList(Landroid/content/Context;)V
    .registers 10

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->hasLargeScreenFeature()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    const-string v0, "recommendApps_"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_e1

    sget-object v0, Lcom/oplus/splitscreen/util/SplitScreenUtils;->mRecommendMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_e1

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2f

    goto/16 :goto_e1

    :cond_2f
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sget-object v0, Lcom/oplus/splitscreen/util/SplitScreenUtils;->mRecommendMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_de

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    sget-object v3, Lcom/oplus/splitscreen/util/SplitScreenUtils;->mRecommendMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_de

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_60

    goto/16 :goto_de

    :cond_60
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_64
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/splitscreen/util/SplitScreenUtils$Record;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v4, Lcom/oplus/splitscreen/util/SplitScreenUtils$Record;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v4, Lcom/oplus/splitscreen/util/SplitScreenUtils$Record;->count:J

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v4, Lcom/oplus/splitscreen/util/SplitScreenUtils$Record;->accessTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "save in user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " sidepkg = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " record is mainpkg is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/oplus/splitscreen/util/SplitScreenUtils$Record;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "  count is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v4, Lcom/oplus/splitscreen/util/SplitScreenUtils$Record;->count:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " accesstime is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v4, Lcom/oplus/splitscreen/util/SplitScreenUtils$Record;->accessTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " to  xml"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SplitScreenUtils"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    :cond_d9
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_3d

    :cond_de
    :goto_de
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_e1
    :goto_e1
    return-void
.end method

.method public static sendRecommendAppListToLauncher(Ljava/lang/String;Landroid/content/Context;)V
    .registers 10

    const-string v0, "SplitScreenUtils"

    sget-object v1, Lcom/oplus/splitscreen/util/SplitScreenUtils;->mRecommendMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_7

    return-void

    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/oplus/splitscreen/util/SplitScreenUtils;->mRecommendMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2c

    sget-object v2, Lcom/oplus/splitscreen/util/SplitScreenUtils;->mRecommendMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    sget-object v1, Lcom/oplus/splitscreen/util/SplitScreenUtils;->mRecommendMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_27

    return-void

    :cond_27
    sget-object v2, Lcom/oplus/splitscreen/util/a;->a:Lcom/oplus/splitscreen/util/a;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_33
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0x9

    if-ge v4, v5, :cond_66

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oplus/splitscreen/util/SplitScreenUtils$Record;

    iget-object v5, v5, Lcom/oplus/splitscreen/util/SplitScreenUtils$Record;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5c

    invoke-static {p1, v5}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5c

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_5c

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v5, v6, :cond_63

    goto :goto_66

    :cond_63
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    :cond_66
    :goto_66
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v6, :cond_95

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v6, v1

    move v1, v3

    :goto_72
    sget-object v4, Lcom/oplus/splitscreen/util/SplitScreenUtils;->RECOMMEND_APP_LIST:[Ljava/lang/String;

    array-length v5, v4

    if-ge v1, v5, :cond_95

    aget-object v4, v4, v1

    invoke-static {p1, v4}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_92

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_92

    if-lez v6, :cond_92

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_92

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, -0x1

    :cond_92
    add-int/lit8 v1, v1, 0x1

    goto :goto_72

    :cond_95
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    :goto_9f
    :try_start_9f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_b9

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "package"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_9f

    :cond_b9
    const-string v2, "source"

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "receive_click_event"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "data"

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_ca
    .catch Lorg/json/JSONException; {:try_start_9f .. :try_end_ca} :catch_ef

    const-string v1, " jsondata is "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "com.android.launcher.OplusFavoritesProvider"

    const-string v2, "update_docker_extra_item"

    invoke-virtual {p1, v1, v2, p0, v0}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void

    :catch_ef
    const-string p0, "error in jsonobject"

    invoke-static {v0, p0}, Lcom/oplus/splitscreen/util/LogUtil;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static setDarkFilter(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .registers 10

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, v0}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/4 v1, 0x1

    const/16 v2, 0x20

    if-ne p0, v2, :cond_21

    move p0, v1

    goto :goto_22

    :cond_21
    move p0, v0

    :goto_22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDarkFilter: isDarkMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SplitScreenUtils"

    invoke-static {v3, v2}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_3f

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    :cond_3f
    :try_start_3f
    const-string v2, "android.app.OplusUXIconLoader"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "setDarkFilterToDrawable"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/graphics/drawable/Drawable;

    aput-object v7, v6, v0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v1

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-static {}, Landroid/app/OplusUXIconLoader;->getLoader()Landroid/app/OplusUXIconLoader;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v5, v1

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_6a} :catch_6b

    goto :goto_80

    :catch_6b
    move-exception p0

    const-string p1, "setDarkFilter: Exception = "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    :goto_80
    return-void
.end method

.method public static setPendingUpdateRecommendAppPair(Landroid/util/Pair;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->hasLargeScreenFeature()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    sput-object p0, Lcom/oplus/splitscreen/util/SplitScreenUtils;->sPendingUpdateRecommendAppPair:Landroid/util/Pair;

    return-void
.end method

.method public static setShouldUpdateRecommendAppList(Z)V
    .registers 2

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->hasLargeScreenFeature()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    sput-boolean p0, Lcom/oplus/splitscreen/util/SplitScreenUtils;->mShouldUpdateRecommendAppLIst:Z

    return-void
.end method

.method public static setTransitionNone(Landroid/app/ActivityOptions;)V
    .registers 1
    .param p0  # Landroid/app/ActivityOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->setTransitionNone(Landroid/os/Bundle;)V

    return-void
.end method

.method public static setTransitionNone(Landroid/os/Bundle;)V
    .registers 4
    .param p0  # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "SPLIT_SCREEN_TRANSITION_NONE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "androidx.activity.extra"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static shouldupdateRecommendAppList()Z
    .registers 1

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->hasLargeScreenFeature()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    return v0

    :cond_c
    sget-boolean v0, Lcom/oplus/splitscreen/util/SplitScreenUtils;->mShouldUpdateRecommendAppLIst:Z

    return v0
.end method

.method public static toRemoteTransition(Landroid/view/IRemoteAnimationRunner;)Landroid/window/IRemoteTransition;
    .registers 1

    invoke-static {p0}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->wrap(Landroid/view/IRemoteAnimationRunner;)Landroid/window/IRemoteTransition$Stub;

    move-result-object p0

    return-object p0
.end method

.method public static updateRecommendAppList(Ljava/lang/String;Ljava/lang/String;)V
    .registers 18

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->hasLargeScreenFeature()Z

    move-result v0

    if-eqz v0, :cond_126

    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_126

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto/16 :goto_126

    :cond_1c
    sget-object v0, Lcom/oplus/splitscreen/util/SplitScreenUtils;->mRecommendMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_21

    return-void

    :cond_21
    invoke-virtual/range {p0 .. p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    return-void

    :cond_28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sget-object v0, Lcom/oplus/splitscreen/util/SplitScreenUtils;->mRecommendMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    const-wide/16 v11, 0x1

    const-string v14, "update record"

    const-string v15, "create new record"

    const-string v4, "SplitScreenUtils"

    if-nez v0, :cond_93

    sget-object v0, Lcom/oplus/splitscreen/util/SplitScreenUtils;->mRecommendMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    goto :goto_93

    :cond_45
    invoke-static {v4, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/oplus/splitscreen/util/SplitScreenUtils;->mRecommendMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_92

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5a

    goto :goto_92

    :cond_5a
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/splitscreen/util/SplitScreenUtils$Record;

    iget-object v2, v1, Lcom/oplus/splitscreen/util/SplitScreenUtils$Record;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    iget-wide v2, v1, Lcom/oplus/splitscreen/util/SplitScreenUtils$Record;->count:J

    add-long/2addr v2, v11

    iput-wide v2, v1, Lcom/oplus/splitscreen/util/SplitScreenUtils$Record;->count:J

    iput-wide v8, v1, Lcom/oplus/splitscreen/util/SplitScreenUtils$Record;->accessTime:J

    const/4 v0, 0x1

    goto :goto_7c

    :cond_7b
    const/4 v0, 0x0

    :goto_7c
    if-nez v0, :cond_90

    const-wide/16 v2, 0x1

    new-instance v1, Lcom/oplus/splitscreen/util/SplitScreenUtils$Record;

    move-object v0, v1

    move-object v10, v1

    move-object/from16 v1, p0

    move-object v11, v4

    move-object v13, v5

    move-wide v4, v8

    invoke-direct/range {v0 .. v5}, Lcom/oplus/splitscreen/util/SplitScreenUtils$Record;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_af

    :cond_90
    move-object v11, v4

    goto :goto_af

    :cond_92
    :goto_92
    return-void

    :cond_93
    :goto_93
    move-object v11, v4

    invoke-static {v11, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x1

    new-instance v10, Lcom/oplus/splitscreen/util/SplitScreenUtils$Record;

    move-object v0, v10

    move-object/from16 v1, p0

    move-wide v4, v8

    invoke-direct/range {v0 .. v5}, Lcom/oplus/splitscreen/util/SplitScreenUtils$Record;-><init>(Ljava/lang/String;JJ)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/oplus/splitscreen/util/SplitScreenUtils;->mRecommendMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v7, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_af
    sget-object v0, Lcom/oplus/splitscreen/util/SplitScreenUtils;->mRecommendMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10b

    sget-object v0, Lcom/oplus/splitscreen/util/SplitScreenUtils;->mRecommendMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c0

    goto :goto_10b

    :cond_c0
    invoke-static {v11, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/oplus/splitscreen/util/SplitScreenUtils;->mRecommendMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/List;

    if-eqz v6, :cond_10a

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d5

    goto :goto_10a

    :cond_d5
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/splitscreen/util/SplitScreenUtils$Record;

    iget-object v2, v1, Lcom/oplus/splitscreen/util/SplitScreenUtils$Record;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d9

    iget-wide v2, v1, Lcom/oplus/splitscreen/util/SplitScreenUtils$Record;->count:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/oplus/splitscreen/util/SplitScreenUtils$Record;->count:J

    iput-wide v8, v1, Lcom/oplus/splitscreen/util/SplitScreenUtils$Record;->accessTime:J

    const/4 v10, 0x1

    goto :goto_f9

    :cond_f8
    const/4 v10, 0x0

    :goto_f9
    if-nez v10, :cond_126

    const-wide/16 v2, 0x1

    new-instance v10, Lcom/oplus/splitscreen/util/SplitScreenUtils$Record;

    move-object v0, v10

    move-object/from16 v1, p1

    move-wide v4, v8

    invoke-direct/range {v0 .. v5}, Lcom/oplus/splitscreen/util/SplitScreenUtils$Record;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_126

    :cond_10a
    :goto_10a
    return-void

    :cond_10b
    :goto_10b
    invoke-static {v11, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x1

    new-instance v10, Lcom/oplus/splitscreen/util/SplitScreenUtils$Record;

    move-object v0, v10

    move-object/from16 v1, p1

    move-wide v4, v8

    invoke-direct/range {v0 .. v5}, Lcom/oplus/splitscreen/util/SplitScreenUtils$Record;-><init>(Ljava/lang/String;JJ)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/oplus/splitscreen/util/SplitScreenUtils;->mRecommendMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v6, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_126
    :goto_126
    return-void
.end method

.method private static wrap(Landroid/view/IRemoteAnimationRunner;)Landroid/window/IRemoteTransition$Stub;
    .registers 2

    new-instance v0, Lcom/oplus/splitscreen/util/SplitScreenUtils$1;

    invoke-direct {v0, p0}, Lcom/oplus/splitscreen/util/SplitScreenUtils$1;-><init>(Landroid/view/IRemoteAnimationRunner;)V

    return-object v0
.end method

.method private static wrap(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;Ljava/util/function/Predicate;)[Landroid/view/RemoteAnimationTarget;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/TransitionInfo;",
            "Landroid/view/SurfaceControl$Transaction;",
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Landroid/view/SurfaceControl;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Landroid/window/TransitionInfo$Change;",
            ">;)[",
            "Landroid/view/RemoteAnimationTarget;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3a

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    invoke-static {v2}, Lcom/android/wm/shell/util/TransitionUtil;->isOrderOnly(Landroid/window/TransitionInfo$Change;)Z

    move-result v3

    if-eqz v3, :cond_21

    goto :goto_37

    :cond_21
    invoke-interface {p3, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-static {v2, v3, p0, p1, p2}, Lcom/android/wm/shell/util/TransitionUtil;->newTarget(Landroid/window/TransitionInfo$Change;ILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)Landroid/view/RemoteAnimationTarget;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_37
    :goto_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_3a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroid/view/RemoteAnimationTarget;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/view/RemoteAnimationTarget;

    return-object p0
.end method

.method private static wrapApps(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)[Landroid/view/RemoteAnimationTarget;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/TransitionInfo;",
            "Landroid/view/SurfaceControl$Transaction;",
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Landroid/view/SurfaceControl;",
            ">;)[",
            "Landroid/view/RemoteAnimationTarget;"
        }
    .end annotation

    new-instance v0, Lcom/android/wm/shell/util/TransitionUtil$LeafTaskFilter;

    invoke-direct {v0}, Lcom/android/wm/shell/util/TransitionUtil$LeafTaskFilter;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->wrap(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;Ljava/util/function/Predicate;)[Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    return-object p0
.end method

.method private static wrapNonApps(Landroid/window/TransitionInfo;ZLandroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)[Landroid/view/RemoteAnimationTarget;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/TransitionInfo;",
            "Z",
            "Landroid/view/SurfaceControl$Transaction;",
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Landroid/view/SurfaceControl;",
            ">;)[",
            "Landroid/view/RemoteAnimationTarget;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/shared/system/b;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/shared/system/b;-><init>(ZI)V

    invoke-static {p0, p2, p3, v0}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->wrap(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;Ljava/util/function/Predicate;)[Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    return-object p0
.end method
