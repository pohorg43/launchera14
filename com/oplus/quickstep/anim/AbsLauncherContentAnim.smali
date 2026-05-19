.class public abstract Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;,
        Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$Companion;

.field public static final MIN_SCALE:F = 0.9f

.field private static final TAG:Ljava/lang/String; = "AbsLauncherContentAnim"

.field private static final mCurrentContentAnimParam:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;


# instance fields
.field private mContentAnimParam:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

.field private mInitParam:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

.field private mIsRecentReverseScene:Z

.field private mIsReversing:Z

.field private mLauncher:Lcom/android/launcher3/Launcher;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->Companion:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$Companion;

    new-instance v0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

    invoke-direct {v0}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->mCurrentContentAnimParam:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .registers 3

    const-string v0, "mLauncher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getScroller()Lcom/android/launcher3/util/OverScroller;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/OverScroller;->forceFinished(Z)V

    new-instance p1, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

    invoke-direct {p1}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->mContentAnimParam:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

    new-instance p1, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

    invoke-direct {p1}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->mInitParam:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

    return-void
.end method

.method public static final synthetic access$getMCurrentContentAnimParam$cp()Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;
    .registers 1

    sget-object v0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->mCurrentContentAnimParam:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

    return-object v0
.end method

.method public static final getLauncherContentAnim(Lcom/android/launcher3/Launcher;)Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->Companion:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$Companion;

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$Companion;->getLauncherContentAnim(Lcom/android/launcher3/Launcher;)Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;

    move-result-object p0

    return-object p0
.end method

.method public static final getLauncherContentAnimType()Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->Companion:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$Companion;

    invoke-virtual {v0}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$Companion;->getLauncherContentAnimType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static final isWorkspaceContentAnim()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->Companion:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$Companion;

    invoke-virtual {v0}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$Companion;->isWorkspaceContentAnim()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final copyFromLastParam(Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;)V
    .registers 5

    const-string v0, "AbsLauncherContentAnim"

    if-nez p1, :cond_1e

    const-string p1, "Copy from null param"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->mInitParam:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->setAlpha(F)V

    const p1, 0x3f666666  # 0.9f

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->setScale(F)V

    const/high16 p1, 0x3f800000  # 1.0f

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->setDepth(F)V

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->setBlur(F)V

    return-void

    :cond_1e
    iget-object v1, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->mInitParam:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

    invoke-virtual {p1}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->getAlpha()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->setAlpha(F)V

    invoke-virtual {p1}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->getScale()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->setScale(F)V

    invoke-virtual {p1}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->getDepth()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->setDepth(F)V

    invoke-virtual {p1}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->getBlur()F

    move-result p1

    invoke-virtual {v1, p1}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->setBlur(F)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "copyFromLastParam, "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->mInitParam:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public abstract createAnimListenerForLayerType()Landroid/animation/AnimatorListenerAdapter;
.end method

.method public abstract createAnimatorListener()Landroid/animation/AnimatorListenerAdapter;
.end method

.method public final getAnimParamAlpha(F)F
    .registers 4

    iget-boolean v0, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->mIsReversing:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->mInitParam:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

    invoke-virtual {v1}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->getAlpha()F

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p1

    goto :goto_1c

    :cond_10
    iget-object v0, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->mInitParam:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

    invoke-virtual {v0}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p1

    :goto_1c
    iget-object p0, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->mContentAnimParam:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->setAlpha(F)V

    return p1
.end method

.method public final getAnimParamBlur(F)F
    .registers 5

    iget-boolean v0, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->mIsReversing:Z

    const/high16 v1, 0x3f800000  # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->mInitParam:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

    invoke-virtual {v0}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->getBlur()F

    move-result v0

    invoke-static {p1, v1, v0}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p1

    invoke-static {p1, v2, v1}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result p1

    goto :goto_24

    :cond_16
    iget-object v0, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->mInitParam:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

    invoke-virtual {v0}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->getBlur()F

    move-result v0

    invoke-static {p1, v0, v2}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p1

    invoke-static {p1, v2, v1}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result p1

    :goto_24
    iget-object p0, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->mContentAnimParam:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->setBlur(F)V

    return p1
.end method

.method public final getAnimParamScale(F)F
    .registers 4

    iget-boolean v0, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->mIsReversing:Z

    if-eqz v0, :cond_12

    const v0, 0x3f666666  # 0.9f

    iget-object v1, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->mInitParam:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

    invoke-virtual {v1}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->getScale()F

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p1

    goto :goto_1e

    :cond_12
    iget-object v0, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->mInitParam:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

    invoke-virtual {v0}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->getScale()F

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p1

    :goto_1e
    iget-object p0, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->mContentAnimParam:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->setScale(F)V

    return p1
.end method

.method public final getAnimParams(F)Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;
    .registers 8

    iget-boolean v0, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->mIsReversing:Z

    const/high16 v1, 0x3f800000  # 1.0f

    if-eqz v0, :cond_14

    const v0, 0x3f666666  # 0.9f

    iget-object v2, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->mInitParam:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

    invoke-virtual {v2}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->getScale()F

    move-result v2

    invoke-static {p1, v0, v2}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v0

    goto :goto_1e

    :cond_14
    iget-object v0, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->mInitParam:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

    invoke-virtual {v0}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->getScale()F

    move-result v0

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v0

    :goto_1e
    iget-boolean v2, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->mIsReversing:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->mInitParam:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

    invoke-virtual {v2}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->getAlpha()F

    move-result v2

    invoke-static {p1, v3, v2}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v2

    goto :goto_38

    :cond_2e
    iget-object v2, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->mInitParam:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

    invoke-virtual {v2}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->getAlpha()F

    move-result v2

    invoke-static {p1, v2, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v2

    :goto_38
    iget-boolean v4, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->mIsReversing:Z

    if-eqz v4, :cond_4b

    iget-object v4, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->mInitParam:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

    invoke-virtual {v4}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->getDepth()F

    move-result v4

    invoke-static {p1, v1, v4}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v4

    invoke-static {v4, v3, v1}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v4

    goto :goto_59

    :cond_4b
    iget-object v4, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->mInitParam:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

    invoke-virtual {v4}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->getDepth()F

    move-result v4

    invoke-static {p1, v4, v3}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v4

    invoke-static {v4, v3, v1}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v4

    :goto_59
    iget-boolean v5, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->mIsReversing:Z

    if-eqz v5, :cond_6c

    iget-object v5, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->mInitParam:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

    invoke-virtual {v5}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->getBlur()F

    move-result v5

    invoke-static {p1, v1, v5}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p1

    invoke-static {p1, v3, v1}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result p1

    goto :goto_7a

    :cond_6c
    iget-object v5, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->mInitParam:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

    invoke-virtual {v5}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->getBlur()F

    move-result v5

    invoke-static {p1, v5, v3}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p1

    invoke-static {p1, v3, v1}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result p1

    :goto_7a
    iget-object v1, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->mContentAnimParam:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

    invoke-virtual {v1, v0}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->setScale(F)V

    invoke-virtual {v1, v2}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->setAlpha(F)V

    invoke-virtual {v1, v4}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->setDepth(F)V

    invoke-virtual {v1, p1}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->setBlur(F)V

    sget-object p1, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->mCurrentContentAnimParam:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

    iget-object v0, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->mContentAnimParam:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

    invoke-virtual {v0}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->getScale()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->setScale(F)V

    iget-object v0, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->mContentAnimParam:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

    invoke-virtual {v0}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->getAlpha()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->setAlpha(F)V

    iget-object v0, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->mContentAnimParam:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

    invoke-virtual {v0}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->getDepth()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->setDepth(F)V

    iget-object v0, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->mContentAnimParam:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

    invoke-virtual {v0}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->getBlur()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->setBlur(F)V

    iget-object p0, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->mContentAnimParam:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

    return-object p0
.end method

.method public final getContentAnimParam()Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->mContentAnimParam:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

    return-object p0
.end method

.method public final getMInitParam()Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->mInitParam:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

    return-object p0
.end method

.method public final getMIsRecentReverseScene()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->mIsRecentReverseScene:Z

    return p0
.end method

.method public final getMIsReversing()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->mIsReversing:Z

    return p0
.end method

.method public final setMInitParam(Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->mInitParam:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

    return-void
.end method

.method public final setMIsRecentReverseScene(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->mIsRecentReverseScene:Z

    sget-object p0, Lcom/android/launcher3/taskbar/TaskbarUtils;->INSTANCE:Lcom/android/launcher3/taskbar/TaskbarUtils;

    sput-boolean p1, Lcom/android/launcher3/taskbar/TaskbarUtils;->isRecentReverseScene:Z

    return-void
.end method

.method public final setMIsReversing(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->mIsReversing:Z

    return-void
.end method

.method public final setReverseSceneState(Z)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setReverseSceneState, reverseScene = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbsLauncherContentAnim"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->setMIsRecentReverseScene(Z)V

    return-void
.end method

.method public setReversing(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->mIsReversing:Z

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->setMIsRecentReverseScene(Z)V

    :cond_8
    iget-object p1, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->mInitParam:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

    iget-object v0, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->mContentAnimParam:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

    invoke-virtual {v0}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->getScale()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->setScale(F)V

    iget-object v0, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->mContentAnimParam:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

    invoke-virtual {v0}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->getAlpha()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->setAlpha(F)V

    iget-object v0, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->mContentAnimParam:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

    invoke-virtual {v0}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->getDepth()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->setDepth(F)V

    iget-object v0, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->mContentAnimParam:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

    invoke-virtual {v0}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->getBlur()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->setBlur(F)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Reversing occur, mInitParam = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;->mInitParam:Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AbsLauncherContentAnim"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public abstract update(FZ)V
.end method

.method public abstract updateBlur(F)V
.end method

.method public abstract updateScale(F)V
.end method
