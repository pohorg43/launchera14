.class public abstract Lcom/android/quickstep/util/OplusRemoteAnimationProvider;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/util/OplusRemoteAnimationProvider;Landroid/content/Context;I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V
    .registers 7

    invoke-static/range {p0 .. p6}, Lcom/android/quickstep/util/OplusRemoteAnimationProvider;->toActivityOptions$lambda$0(Lcom/android/quickstep/util/OplusRemoteAnimationProvider;Landroid/content/Context;I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V

    return-void
.end method

.method private static final toActivityOptions$lambda$0(Lcom/android/quickstep/util/OplusRemoteAnimationProvider;Landroid/content/Context;I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V
    .registers 7

    const-string/jumbo p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p2, "result"

    invoke-static {p6, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p3, p4, p5}, Lcom/android/quickstep/util/OplusRemoteAnimationProvider;->createWindowAnimation([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;

    move-result-object p0

    invoke-virtual {p6, p0, p1}, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->setAnimation(Landroid/animation/AnimatorSet;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public abstract createWindowAnimation([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;
.end method

.method public final toActivityOptions(Landroid/os/Handler;JLandroid/content/Context;)Landroid/app/ActivityOptions;
    .registers 22

    move-object/from16 v0, p4

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/android/quickstep/util/o;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lcom/android/quickstep/util/o;-><init>(Lcom/android/quickstep/util/OplusRemoteAnimationProvider;Landroid/content/Context;)V

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result v2

    if-eqz v2, :cond_22

    new-instance v2, Lcom/android/launcher3/LauncherAnimationRunner;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x0

    move-object/from16 v5, p1

    invoke-direct {v2, v5, v3, v1}, Lcom/android/launcher3/LauncherAnimationRunner;-><init>(Landroid/os/Handler;Ljava/lang/ref/Reference;Z)V

    goto :goto_33

    :cond_22
    move-object/from16 v5, p1

    new-instance v2, Lcom/android/launcher3/LauncherAnimationRunner;

    new-instance v6, Ljava/lang/ref/SoftReference;

    invoke-direct {v6, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v9, Lcom/android/launcher3/LauncherAnimationRunner$Scenes;->APP_TO_OVERVIEW_BY_VIRTUAL_KEY:Lcom/android/launcher3/LauncherAnimationRunner$Scenes;

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher3/LauncherAnimationRunner;-><init>(Landroid/os/Handler;Ljava/lang/ref/Reference;ZZLcom/android/launcher3/LauncherAnimationRunner$Scenes;)V

    :goto_33
    new-instance v1, Landroid/view/RemoteAnimationAdapter;

    const-wide/16 v14, 0x0

    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v16

    move-object v10, v1

    move-object v11, v2

    move-wide/from16 v12, p2

    invoke-direct/range {v10 .. v16}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJLandroid/app/IApplicationThread;)V

    new-instance v3, Landroid/window/RemoteTransition;

    invoke-virtual {v2}, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;->toRemoteTransition()Landroid/window/IRemoteTransition;

    move-result-object v2

    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v0

    const-string v4, "AnimationProvider"

    invoke-direct {v3, v2, v0, v4}, Landroid/window/RemoteTransition;-><init>(Landroid/window/IRemoteTransition;Landroid/app/IApplicationThread;Ljava/lang/String;)V

    invoke-static {v1, v3}, Landroid/app/ActivityOptions;->makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;Landroid/window/RemoteTransition;)Landroid/app/ActivityOptions;

    move-result-object v0

    const-string/jumbo v1, "makeRemoteAnimation(\n   …ationProvider\")\n        )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
