.class public final Lcom/oplus/quickstep/anim/SwipeUpIconBlurAnim;
.super Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/anim/SwipeUpIconBlurAnim$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/anim/SwipeUpIconBlurAnim$Companion;

.field private static final TAG:Ljava/lang/String; = "SwipeUpIconBlurAnim"


# instance fields
.field private mDepthController:Lcom/android/launcher3/uioverrides/states/OplusDepthController;

.field private mLauncher:Lcom/android/launcher3/Launcher;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/anim/SwipeUpIconBlurAnim$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/anim/SwipeUpIconBlurAnim$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/anim/SwipeUpIconBlurAnim;->Companion:Lcom/oplus/quickstep/anim/SwipeUpIconBlurAnim$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .registers 3

    const-string v0, "mLauncher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object p1, p0, Lcom/oplus/quickstep/anim/SwipeUpIconBlurAnim;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/quickstep/anim/SwipeUpIconBlurAnim;->mDepthController:Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    return-void
.end method


# virtual methods
.method public createAnimListenerForLayerType()Landroid/animation/AnimatorListenerAdapter;
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/quickstep/anim/SwipeUpIconBlurAnim;->createAnimatorListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object p0

    return-object p0
.end method

.method public createAnimatorListener()Landroid/animation/AnimatorListenerAdapter;
    .registers 1

    new-instance p0, Lcom/oplus/quickstep/anim/SwipeUpIconBlurAnim$createAnimatorListener$1;

    invoke-direct {p0}, Lcom/oplus/quickstep/anim/SwipeUpIconBlurAnim$createAnimatorListener$1;-><init>()V

    return-object p0
.end method

.method public update(FZ)V
    .registers 3

    if-eqz p2, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->getAnimParams(F)Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

    move-result-object p1

    iget-object p2, p0, Lcom/oplus/quickstep/anim/SwipeUpIconBlurAnim;->mDepthController:Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    iget-object p0, p0, Lcom/oplus/quickstep/anim/SwipeUpIconBlurAnim;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->getBlur()F

    move-result p1

    invoke-static {p0, p1}, Lcom/android/launcher3/views/WorkSpaceScrimViewKt;->getDynamicBlurProgress(Landroid/content/Context;F)F

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setIconBlurWithoutAnim(F)V

    return-void
.end method

.method public updateBlur(F)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/quickstep/anim/SwipeUpIconBlurAnim;->mDepthController:Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    iget-object v1, p0, Lcom/oplus/quickstep/anim/SwipeUpIconBlurAnim;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->getAnimParamBlur(F)F

    move-result p0

    invoke-static {v1, p0}, Lcom/android/launcher3/views/WorkSpaceScrimViewKt;->getDynamicBlurProgress(Landroid/content/Context;F)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setIconBlurWithoutAnim(F)V

    return-void
.end method

.method public updateScale(F)V
    .registers 2

    return-void
.end method
