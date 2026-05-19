.class public final Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EntrySpringAnimation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation$Companion;
    }
.end annotation


# static fields
.field private static final BLUR_RADIUS:F = 150.0f

.field public static final Companion:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation$Companion;

.field private static final DAMPING_RATIO_CLOSE:F = 0.8f

.field private static final DAMPING_RATIO_OPEN:F = 0.74f

.field private static final ENTRY_ANIM_PROGRESS:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation$Companion$ENTRY_ANIM_PROGRESS$1;

.field private static final STIFFNESS_CLOSE_ANIM:F = 200.0f

.field private static final STIFFNESS_OPEN_ANIM:F = 92.0f


# instance fields
.field private mEndAlpha:F

.field private mEndBlurRadius:F

.field private mEndDepth:F

.field private mEndListener:Lcom/oplus/animation/DynamicAnimation$OnAnimationEndListener;

.field private mEndScale:F

.field private mLauncher:Lcom/android/launcher/Launcher;

.field private mOpenApp:Z

.field private mSpringAnimation:Lcom/oplus/animation/SpringAnimation;

.field private mSpringProgress:F

.field private mStartAlpha:F

.field private mStartBlurRadius:F

.field private mStartDepth:F

.field private mStartScale:F


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->Companion:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation$Companion;

    new-instance v0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation$Companion$ENTRY_ANIM_PROGRESS$1;

    invoke-direct {v0}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation$Companion$ENTRY_ANIM_PROGRESS$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->ENTRY_ANIM_PROGRESS:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation$Companion$ENTRY_ANIM_PROGRESS$1;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/Launcher;Z)V
    .registers 5

    const-string/jumbo v0, "mLauncher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    iput-boolean p2, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mOpenApp:Z

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mStartAlpha:F

    iget-boolean p1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mOpenApp:Z

    const/high16 p2, 0x3f800000  # 1.0f

    const/4 v0, 0x0

    if-eqz p1, :cond_20

    move p1, v0

    goto :goto_21

    :cond_20
    move p1, p2

    :goto_21
    iput p1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mEndAlpha:F

    iget-object p1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mStartScale:F

    iget-boolean p1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mOpenApp:Z

    if-eqz p1, :cond_36

    const p2, 0x3f6b851f  # 0.92f

    :cond_36
    iput p2, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mEndScale:F

    iget-object p1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->getCurrentDepth()F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mStartDepth:F

    iget-boolean p1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mOpenApp:Z

    if-eqz p1, :cond_4d

    invoke-static {}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->getAppDepth()F

    move-result p1

    goto :goto_4e

    :cond_4d
    move p1, v0

    :goto_4e
    iput p1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mEndDepth:F

    iget-boolean p1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mOpenApp:Z

    const/high16 p2, 0x43160000  # 150.0f

    if-eqz p1, :cond_58

    move v1, v0

    goto :goto_59

    :cond_58
    move v1, p2

    :goto_59
    iput v1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mStartBlurRadius:F

    if-eqz p1, :cond_5e

    move v0, p2

    :cond_5e
    iput v0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mEndBlurRadius:F

    return-void
.end method

.method public static final synthetic access$getMSpringProgress$p(Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mSpringProgress:F

    return p0
.end method

.method public static final synthetic access$onUpdate(Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->onUpdate(F)V

    return-void
.end method

.method private final onUpdate(F)V
    .registers 5

    iput p1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mSpringProgress:F

    iget v0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mStartAlpha:F

    iget v1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mEndAlpha:F

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v0

    iget v1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mStartScale:F

    iget v2, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mEndScale:F

    invoke-static {p1, v1, v2}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/launcher3/OplusDragLayer;->setAlpha(F)V

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getBlurScrimWindowController()Lcom/android/launcher/touch/BlurScrimWindowController;

    move-result-object v0

    if-eqz v0, :cond_35

    iget v1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mStartBlurRadius:F

    iget p0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mEndBlurRadius:F

    invoke-static {p1, v1, p0}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {v0, p0}, Lcom/android/launcher/touch/BlurScrimWindowController;->blurBackground(I)V

    :cond_35
    return-void
.end method


# virtual methods
.method public final addEndListener(Lcom/oplus/animation/DynamicAnimation$OnAnimationEndListener;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mEndListener:Lcom/oplus/animation/DynamicAnimation$OnAnimationEndListener;

    return-void
.end method

.method public final cancel()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mSpringAnimation:Lcom/oplus/animation/SpringAnimation;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/oplus/animation/SpringAnimation;->cancel()V

    :cond_7
    return-void
.end method

.method public final isRunning()Z
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mSpringAnimation:Lcom/oplus/animation/SpringAnimation;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Lcom/oplus/animation/SpringAnimation;->isRunning()Z

    move-result p0

    if-ne p0, v0, :cond_d

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    return v0
.end method

.method public final start()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mOpenApp:Z

    const/high16 v1, 0x3f800000  # 1.0f

    if-eqz v0, :cond_19

    new-instance v0, Lcom/oplus/animation/SpringForce;

    invoke-direct {v0, v1}, Lcom/oplus/animation/SpringForce;-><init>(F)V

    const v1, 0x3f3d70a4  # 0.74f

    invoke-virtual {v0, v1}, Lcom/oplus/animation/SpringForce;->setDampingRatio(F)Lcom/oplus/animation/SpringForce;

    move-result-object v0

    const/high16 v1, 0x42b80000  # 92.0f

    invoke-virtual {v0, v1}, Lcom/oplus/animation/SpringForce;->setStiffness(F)Lcom/oplus/animation/SpringForce;

    move-result-object v0

    goto :goto_2b

    :cond_19
    new-instance v0, Lcom/oplus/animation/SpringForce;

    invoke-direct {v0, v1}, Lcom/oplus/animation/SpringForce;-><init>(F)V

    const v1, 0x3f4ccccd  # 0.8f

    invoke-virtual {v0, v1}, Lcom/oplus/animation/SpringForce;->setDampingRatio(F)Lcom/oplus/animation/SpringForce;

    move-result-object v0

    const/high16 v1, 0x43480000  # 200.0f

    invoke-virtual {v0, v1}, Lcom/oplus/animation/SpringForce;->setStiffness(F)Lcom/oplus/animation/SpringForce;

    move-result-object v0

    :goto_2b
    new-instance v1, Lcom/oplus/animation/SpringAnimation;

    sget-object v2, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->ENTRY_ANIM_PROGRESS:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation$Companion$ENTRY_ANIM_PROGRESS$1;

    invoke-direct {v1, p0, v2}, Lcom/oplus/animation/SpringAnimation;-><init>(Ljava/lang/Object;Lcom/oplus/animation/FloatPropertyCompat;)V

    invoke-virtual {v1, v0}, Lcom/oplus/animation/SpringAnimation;->setSpring(Lcom/oplus/animation/SpringForce;)Lcom/oplus/animation/SpringAnimation;

    move-result-object v0

    const v1, 0x3b03126f  # 0.002f

    invoke-virtual {v0, v1}, Lcom/oplus/animation/SpringAnimation;->setMinimumVisibleChange(F)Lcom/oplus/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Lcom/oplus/animation/SpringAnimation;

    iput-object v0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mSpringAnimation:Lcom/oplus/animation/SpringAnimation;

    iget-object v1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mEndListener:Lcom/oplus/animation/DynamicAnimation$OnAnimationEndListener;

    if-eqz v1, :cond_4d

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mEndListener:Lcom/oplus/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {v0, v1}, Lcom/oplus/animation/SpringAnimation;->addEndListener(Lcom/oplus/animation/DynamicAnimation$OnAnimationEndListener;)Lcom/oplus/animation/DynamicAnimation;

    :cond_4d
    iget-object p0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mSpringAnimation:Lcom/oplus/animation/SpringAnimation;

    if-eqz p0, :cond_54

    invoke-virtual {p0}, Lcom/oplus/animation/SpringAnimation;->start()V

    :cond_54
    return-void
.end method
