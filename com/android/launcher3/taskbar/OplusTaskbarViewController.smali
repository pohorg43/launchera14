.class public final Lcom/android/launcher3/taskbar/OplusTaskbarViewController;
.super Lcom/android/launcher3/taskbar/TaskbarViewController;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/OplusTaskbarViewController$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOplusTaskbarViewController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OplusTaskbarViewController.kt\ncom/android/launcher3/taskbar/OplusTaskbarViewController\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt\n*L\n1#1,213:1\n94#2,14:214\n*S KotlinDebug\n*F\n+ 1 OplusTaskbarViewController.kt\ncom/android/launcher3/taskbar/OplusTaskbarViewController\n*L\n108#1:214,14\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/taskbar/OplusTaskbarViewController$Companion;

.field private static final TAG:Ljava/lang/String; = "OplusTaskbarViewController"


# instance fields
.field private mIconAlignmentRunner:Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;

.field private mIconAlphaForHome:Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

.field private final mNavbarDarkChangeListener:Lcom/oplus/quickstep/common/IObserverListener;

.field private final subscribeIconRunningTaskChangedListener:Lcom/android/launcher3/taskbar/TaskbarSubscribeIconRunningTaskChangedListener;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/taskbar/OplusTaskbarViewController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/OplusTaskbarViewController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/taskbar/OplusTaskbarViewController;->Companion:Lcom/android/launcher3/taskbar/OplusTaskbarViewController$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/taskbar/TaskbarView;)V
    .registers 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "taskbarView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarViewController;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/taskbar/TaskbarView;)V

    new-instance p1, Lcom/android/launcher3/taskbar/OplusTaskbarViewController$subscribeIconRunningTaskChangedListener$1;

    invoke-direct {p1}, Lcom/android/launcher3/taskbar/OplusTaskbarViewController$subscribeIconRunningTaskChangedListener$1;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarViewController;->subscribeIconRunningTaskChangedListener:Lcom/android/launcher3/taskbar/TaskbarSubscribeIconRunningTaskChangedListener;

    new-instance p1, Lcom/android/launcher3/taskbar/OplusTaskbarViewController$mNavbarDarkChangeListener$1;

    invoke-direct {p1, p2}, Lcom/android/launcher3/taskbar/OplusTaskbarViewController$mNavbarDarkChangeListener$1;-><init>(Lcom/android/launcher3/taskbar/TaskbarView;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarViewController;->mNavbarDarkChangeListener:Lcom/oplus/quickstep/common/IObserverListener;

    return-void
.end method

.method public static final synthetic access$getMIconAlignmentRunner$p(Lcom/android/launcher3/taskbar/OplusTaskbarViewController;)Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarViewController;->mIconAlignmentRunner:Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;

    return-object p0
.end method

.method private static final createIconAlignmentController$lambda$3(Lcom/android/launcher3/taskbar/OplusTaskbarViewController;Landroid/animation/ValueAnimator;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarViewController;->mIconAlignmentRunner:Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;

    if-eqz p0, :cond_1d

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->onUpdate(F)V

    :cond_1d
    return-void
.end method

.method private static final createIconAlignmentController$lambda$4(Lcom/android/launcher3/anim/AnimatorPlaybackController;)V
    .registers 2

    const-string v0, "$controller"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    invoke-virtual {p0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnEnd()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    return-void
.end method

.method private final createIconAlphaForHomeConsumer(Z)Ljava/util/function/Consumer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_8

    new-instance p1, Lcom/android/common/a;

    invoke-direct {p1, p0}, Lcom/android/common/a;-><init>(Lcom/android/launcher3/taskbar/OplusTaskbarViewController;)V

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return-object p1
.end method

.method private static final createIconAlphaForHomeConsumer$lambda$0(Lcom/android/launcher3/taskbar/OplusTaskbarViewController;Ljava/lang/Float;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mLauncher:Lcom/android/launcher3/Launcher;

    if-eqz p0, :cond_14

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p0

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    if-nez p0, :cond_18

    goto :goto_27

    :cond_18
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_22

    goto :goto_24

    :cond_22
    const/high16 v0, 0x3f800000  # 1.0f

    :goto_24
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Hotseat;->setIconsAlpha(F)V

    :goto_27
    return-void
.end method

.method private static final createIconTranslationYController$lambda$5(Lcom/android/launcher3/anim/AnimatorPlaybackController;)V
    .registers 2

    const-string v0, "$controller"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    invoke-virtual {p0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnEnd()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    return-void
.end method

.method public static synthetic g(Lcom/android/launcher3/anim/AnimatorPlaybackController;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarViewController;->createIconAlignmentController$lambda$4(Lcom/android/launcher3/anim/AnimatorPlaybackController;)V

    return-void
.end method

.method public static synthetic h(Lcom/android/launcher3/taskbar/OplusTaskbarViewController;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarViewController;->createIconAlignmentController$lambda$3(Lcom/android/launcher3/taskbar/OplusTaskbarViewController;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic i(Lcom/android/launcher3/anim/AnimatorPlaybackController;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarViewController;->createIconTranslationYController$lambda$5(Lcom/android/launcher3/anim/AnimatorPlaybackController;)V

    return-void
.end method

.method public static synthetic j(Lcom/android/launcher3/taskbar/OplusTaskbarViewController;Ljava/lang/Float;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarViewController;->createIconAlphaForHomeConsumer$lambda$0(Lcom/android/launcher3/taskbar/OplusTaskbarViewController;Ljava/lang/Float;)V

    return-void
.end method


# virtual methods
.method public createIconAlignmentController(Lcom/android/launcher3/DeviceProfile;Ljava/lang/Float;Ljava/lang/Float;)Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .registers 6

    const-string v0, "launcherDp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createIconAlignmentController. curTransYForHome = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconTranslationYForHome:Lcom/android/quickstep/AnimatedFloat;

    iget v0, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", curTransYForStash = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconTranslationYForStash:Lcom/android/quickstep/AnimatedFloat;

    iget v0, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    const-string v1, "OplusTaskbarViewController"

    invoke-static {p1, v0, v1}, Lcom/android/common/util/v;->a(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mOnControllerPreCreateCallback:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarViewController;->mIconAlphaForHome:Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    if-eqz p1, :cond_31

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->setConsumer(Ljava/util/function/Consumer;)V

    :cond_31
    new-instance p1, Lcom/android/launcher3/anim/PendingAnimation;

    const-wide/16 v0, 0x190

    invoke-direct {p1, v0, v1}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_6c

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-string v1, "animator"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/android/launcher3/taskbar/OplusTaskbarViewController$createIconAlignmentController$$inlined$addListener$default$1;

    invoke-direct {v1, p0, p0, p2, p3}, Lcom/android/launcher3/taskbar/OplusTaskbarViewController$createIconAlignmentController$$inlined$addListener$default$1;-><init>(Lcom/android/launcher3/taskbar/OplusTaskbarViewController;Lcom/android/launcher3/taskbar/OplusTaskbarViewController;Ljava/lang/Float;Ljava/lang/Float;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p2, Lcom/android/keyguardservice/b;

    invoke-direct {p2, p0}, Lcom/android/keyguardservice/b;-><init>(Lcom/android/launcher3/taskbar/OplusTaskbarViewController;)V

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;)V

    invoke-virtual {p1}, Lcom/android/launcher3/anim/PendingAnimation;->createPlaybackController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p1

    const-string/jumbo p2, "pendingAnimation.createPlaybackController()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/android/launcher3/pullup/controller/a;

    invoke-direct {p2, p1}, Lcom/android/launcher3/pullup/controller/a;-><init>(Lcom/android/launcher3/anim/AnimatorPlaybackController;)V

    iput-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mOnControllerPreCreateCallback:Ljava/lang/Runnable;

    return-object p1

    :array_6c
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public final createIconTransYAnimForEnableChange(ZFF)Landroid/animation/Animator;
    .registers 5

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconTranslationYForEnableChange:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v0, p2}, Lcom/android/quickstep/AnimatedFloat;->updateValue(F)V

    :cond_7
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconTranslationYForEnableChange:Lcom/android/quickstep/AnimatedFloat;

    const-string/jumbo v0, "mTaskbarIconTranslationYForEnableChange"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2, p3, p0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->createTaskbarTransYAnimForEnableChange(ZFFLcom/android/quickstep/AnimatedFloat;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public createIconTranslationYController()Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .registers 10

    const-string v0, "createIconTranslationYController. curTransYForHome = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconTranslationYForHome:Lcom/android/quickstep/AnimatedFloat;

    iget v1, v1, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", curTransYForStash = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconTranslationYForStash:Lcom/android/quickstep/AnimatedFloat;

    iget v1, v1, Lcom/android/quickstep/AnimatedFloat;->value:F

    const-string v2, "OplusTaskbarViewController"

    invoke-static {v0, v1, v2}, Lcom/android/common/util/v;->a(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mOnControllerPreCreateCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarViewController;->mIconAlphaForHome:Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    if-eqz v0, :cond_28

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->setConsumer(Ljava/util/function/Consumer;)V

    :cond_28
    new-instance v0, Lcom/android/launcher3/anim/PendingAnimation;

    const-wide/16 v1, 0x190

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v1, v1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    iget-boolean v8, v1, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIsImeShowing:Z

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconTranslationYForHome:Lcom/android/quickstep/AnimatedFloat;

    sget-object v4, Lcom/android/quickstep/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    const/4 v5, 0x0

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->getMaxTransY()I

    move-result v1

    int-to-float v6, v1

    sget-object v7, Lcom/android/launcher3/anim/Interpolators;->MOVE_EASE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    move-object v2, v0

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/launcher3/taskbar/OplusTaskbarViewController$createIconTranslationYController$1;

    invoke-direct {v1, v8, p0}, Lcom/android/launcher3/taskbar/OplusTaskbarViewController$createIconTranslationYController$1;-><init>(ZLcom/android/launcher3/taskbar/OplusTaskbarViewController;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/PendingAnimation;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Lcom/android/launcher3/anim/PendingAnimation;->createPlaybackController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    const-string/jumbo v1, "pendingAnimation.createPlaybackController()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/android/launcher3/taskbar/p0;

    invoke-direct {v1, v0}, Lcom/android/launcher3/taskbar/p0;-><init>(Lcom/android/launcher3/anim/AnimatorPlaybackController;)V

    iput-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mOnControllerPreCreateCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method public dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6

    const-string/jumbo v0, "prefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "pw"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarViewController;->dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V

    const/16 v0, 0x9

    invoke-static {p1, v0}, Landroidx/exifinterface/media/a;->a(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Animators:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tmTaskbarIconScaleForStash:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconScaleForStash:Lcom/android/quickstep/AnimatedFloat;

    iget v1, v1, Lcom/android/quickstep/AnimatedFloat;->value:F

    const-string v2, "\tmTaskbarIconTranslationYForHome:"

    invoke-static {v0, v1, p2, p1, v2}, Lcom/android/launcher3/k;->a(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconTranslationYForHome:Lcom/android/quickstep/AnimatedFloat;

    iget v1, v1, Lcom/android/quickstep/AnimatedFloat;->value:F

    const-string v2, "\tmTaskbarIconTranslationYForStash:"

    invoke-static {v0, v1, p2, p1, v2}, Lcom/android/launcher3/k;->a(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconTranslationYForStash:Lcom/android/quickstep/AnimatedFloat;

    iget v1, v1, Lcom/android/quickstep/AnimatedFloat;->value:F

    const-string v2, "\tmTaskbarIconTranslationYForStashHandle:"

    invoke-static {v0, v1, p2, p1, v2}, Lcom/android/launcher3/k;->a(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconTranslationYForStashHandle:Lcom/android/quickstep/AnimatedFloat;

    iget v1, v1, Lcom/android/quickstep/AnimatedFloat;->value:F

    const-string v2, "\tmTaskbarIconTranslationYForEnableChange:"

    invoke-static {v0, v1, p2, p1, v2}, Lcom/android/launcher3/k;->a(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconTranslationYForEnableChange:Lcom/android/quickstep/AnimatedFloat;

    iget v1, v1, Lcom/android/quickstep/AnimatedFloat;->value:F

    const-string v2, "\tmTaskbarNavButtonTranslationY:"

    invoke-static {v0, v1, p2, p1, v2}, Lcom/android/launcher3/k;->a(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarNavButtonTranslationY:Lcom/android/quickstep/AnimatedFloat;

    iget v1, v1, Lcom/android/quickstep/AnimatedFloat;->value:F

    const-string v2, "\tmTaskbarNavButtonTranslationYForInAppDisplay:"

    invoke-static {v0, v1, p2, p1, v2}, Lcom/android/launcher3/k;->a(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarNavButtonTranslationYForInAppDisplay:Lcom/android/quickstep/AnimatedFloat;

    iget v1, v1, Lcom/android/quickstep/AnimatedFloat;->value:F

    const-string v2, "\tmTaskbarAlphaForBg:"

    invoke-static {v0, v1, p2, p1, v2}, Lcom/android/launcher3/k;->a(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarAlphaForBg:Lcom/android/quickstep/AnimatedFloat;

    iget v1, v1, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tmTaskbarIconAlpha:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\t\tALPHA_INDEX_HOME: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MultiValueAlpha;->getProperty(I)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->getValue()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\t\tALPHA_INDEX_KEYGUARD: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MultiValueAlpha;->getProperty(I)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->getValue()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\t\tALPHA_INDEX_STASH: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MultiValueAlpha;->getProperty(I)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->getValue()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\t\tALPHA_INDEX_RECENTS_DISABLED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MultiValueAlpha;->getProperty(I)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->getValue()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\t\tALPHA_INDEX_NOTIFICATION_EXPANDED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MultiValueAlpha;->getProperty(I)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->getValue()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\t\tALPHA_INDEX_DIALOG_SHOWING: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MultiValueAlpha;->getProperty(I)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->getValue()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\t\tALPHA_INDEX_HIDE_TASKBAR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MultiValueAlpha;->getProperty(I)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->getValue()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\t\tALPHA_INDEX_HIDE_TASKBAR_ZEN_MODE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MultiValueAlpha;->getProperty(I)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->getValue()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\t\tTASKBAR VIEW PROPERTY: Alpha: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", TransitionY:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", Width: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Height:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getIconAlignmentRunner()Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarViewController;->mIconAlignmentRunner:Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;

    return-object p0
.end method

.method public final getSubscribeIconRunningTaskChangedListener()Lcom/android/launcher3/taskbar/TaskbarSubscribeIconRunningTaskChangedListener;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarViewController;->subscribeIconRunningTaskChangedListener:Lcom/android/launcher3/taskbar/TaskbarSubscribeIconRunningTaskChangedListener;

    return-object p0
.end method

.method public init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarViewController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarViewController;->mNavbarDarkChangeListener:Lcom/oplus/quickstep/common/IObserverListener;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->addNavbarDarkChangeListener(Lcom/oplus/quickstep/common/IObserverListener;)V

    sget-object p1, Lcom/android/quickstep/TopTaskTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/TopTaskTracker;

    invoke-virtual {p1}, Lcom/android/quickstep/TopTaskTracker;->getExt()Lcom/android/quickstep/ITopTaskTrackerExt;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarViewController;->subscribeIconRunningTaskChangedListener:Lcom/android/launcher3/taskbar/TaskbarSubscribeIconRunningTaskChangedListener;

    invoke-interface {p1, v0}, Lcom/android/quickstep/ITopTaskTrackerExt;->addOnRunningTaskChangedListener(Lcom/android/quickstep/ITopTaskTrackerExt$OnRunningTaskChangedListener;)V

    sget-object p1, Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper;->Companion:Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper$Companion;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper$Companion;->getInstance()Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.taskbar.OplusTaskbarView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/taskbar/OplusTaskbarView;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper;->registerListener(Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper$FileManagerVisibilityChangeListener;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    const-string/jumbo v0, "mTaskbarView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$OnTaskbarAllAppsVisibilityChangeListener;

    invoke-static {p1, p0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->addAllAppsVisibilityChangeListener(Lcom/android/launcher3/views/ActivityContext;Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$OnTaskbarAllAppsVisibilityChangeListener;)V

    return-void
.end method

.method public final initIconAlignmentRunner(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;)V
    .registers 6

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconAlphaForHome"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/launcher3/taskbar/OplusTaskbarViewController;->mIconAlphaForHome:Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mLauncher:Lcom/android/launcher3/Launcher;

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    const-string v2, "mActivity"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarViewController;->mIconAlignmentRunner:Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;

    return-void
.end method

.method public onConfigurationChanged(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    instance-of v1, v0, Lcom/android/launcher3/taskbar/OplusTaskbarView;

    if-eqz v1, :cond_b

    check-cast v0, Lcom/android/launcher3/taskbar/OplusTaskbarView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->onConfigurationChanged(I)V

    :cond_b
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_22

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_22

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    const-string/jumbo p1, "null cannot be cast to non-null type com.android.launcher3.taskbar.OplusTaskbarView"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->updateTaskbarSpacing()V

    :cond_22
    return-void
.end method

.method public onDestroy()V
    .registers 4

    invoke-super {p0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->onDestroy()V

    sget-object v0, Lcom/android/quickstep/TopTaskTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/TopTaskTracker;

    invoke-virtual {v0}, Lcom/android/quickstep/TopTaskTracker;->getExt()Lcom/android/quickstep/ITopTaskTrackerExt;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarViewController;->subscribeIconRunningTaskChangedListener:Lcom/android/launcher3/taskbar/TaskbarSubscribeIconRunningTaskChangedListener;

    invoke-interface {v0, v1}, Lcom/android/quickstep/ITopTaskTrackerExt;->removeOnRunningTaskChangedListener(Lcom/android/quickstep/ITopTaskTrackerExt$OnRunningTaskChangedListener;)V

    sget-object v0, Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper;->Companion:Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper$Companion;->getInstance()Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    const-string/jumbo v2, "null cannot be cast to non-null type com.android.launcher3.taskbar.OplusTaskbarView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/android/launcher3/taskbar/OplusTaskbarView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper;->unRegisterListener(Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper$FileManagerVisibilityChangeListener;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    const-string/jumbo v2, "mTaskbarView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$OnTaskbarAllAppsVisibilityChangeListener;

    invoke-static {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarUtils;->removeAllAppsVisibilityChangeListener(Lcom/android/launcher3/views/ActivityContext;Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$OnTaskbarAllAppsVisibilityChangeListener;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarViewController;->mNavbarDarkChangeListener:Lcom/oplus/quickstep/common/IObserverListener;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->removeNavbarDarkChangeListener(Lcom/oplus/quickstep/common/IObserverListener;)V

    return-void
.end method
