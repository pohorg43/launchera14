.class public final Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightLauncherContentAnimation$1;
.super Lcom/android/quickstep/util/MultiValueUpdateListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/anim/light/AppLaunchAnimUtil;->getLightLauncherContentAnimation(Landroid/view/View;ZFLcom/android/launcher3/Launcher;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $launcher:Lcom/android/launcher3/Launcher;

.field public final synthetic $minScale:F

.field public final synthetic $view:Landroid/view/View;

.field private final mAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field private final mDepth:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field private final mScale:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;


# direct methods
.method public constructor <init>(ZFJLandroid/view/animation/PathInterpolator;FLandroid/view/View;Lcom/android/launcher3/Launcher;)V
    .registers 20

    move-object v7, p0

    move-wide v8, p3

    move v3, p2

    iput v3, v7, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightLauncherContentAnimation$1;->$minScale:F

    move-object/from16 v0, p7

    iput-object v0, v7, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightLauncherContentAnimation$1;->$view:Landroid/view/View;

    move-object/from16 v0, p8

    iput-object v0, v7, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightLauncherContentAnimation$1;->$launcher:Lcom/android/launcher3/Launcher;

    invoke-direct {p0}, Lcom/android/quickstep/util/MultiValueUpdateListener;-><init>()V

    if-eqz p1, :cond_21

    new-instance v10, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    const/high16 v2, 0x3f800000  # 1.0f

    const/4 v4, 0x0

    long-to-float v5, v8

    move-object v0, v10

    move-object v1, p0

    move v3, p2

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    goto :goto_32

    :cond_21
    new-instance v10, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    const/high16 v4, 0x3f800000  # 1.0f

    const/4 v5, 0x0

    long-to-float v6, v8

    move-object v0, v10

    move-object v1, p0

    move v2, p2

    move v3, v4

    move v4, v5

    move v5, v6

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    :goto_32
    iput-object v10, v7, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightLauncherContentAnimation$1;->mScale:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    if-eqz p1, :cond_45

    new-instance v10, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    const/high16 v2, 0x3f800000  # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    long-to-float v5, v8

    move-object v0, v10

    move-object v1, p0

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    goto :goto_53

    :cond_45
    new-instance v10, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000  # 1.0f

    const/4 v4, 0x0

    long-to-float v5, v8

    move-object v0, v10

    move-object v1, p0

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    :goto_53
    iput-object v10, v7, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightLauncherContentAnimation$1;->mAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    if-eqz p1, :cond_69

    new-instance v10, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    invoke-static {}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->getAppDepth()F

    move-result v3

    const/4 v4, 0x0

    long-to-float v5, v8

    move-object v0, v10

    move-object v1, p0

    move/from16 v2, p6

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    goto :goto_7a

    :cond_69
    new-instance v10, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    invoke-static {}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->getAppDepth()F

    move-result v2

    const/4 v4, 0x0

    long-to-float v5, v8

    move-object v0, v10

    move-object v1, p0

    move/from16 v3, p6

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    :goto_7a
    iput-object v10, v7, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightLauncherContentAnimation$1;->mDepth:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    return-void
.end method


# virtual methods
.method public final getMAlpha()Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightLauncherContentAnimation$1;->mAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    return-object p0
.end method

.method public final getMDepth()Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightLauncherContentAnimation$1;->mDepth:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    return-object p0
.end method

.method public final getMScale()Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightLauncherContentAnimation$1;->mScale:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    return-object p0
.end method

.method public onUpdate(FZ)V
    .registers 4

    iget-object p1, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightLauncherContentAnimation$1;->mScale:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget p1, p1, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    iget p2, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightLauncherContentAnimation$1;->$minScale:F

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-static {p1, p2, v0}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result p1

    iget-object p2, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightLauncherContentAnimation$1;->$view:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setScaleX(F)V

    iget-object p2, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightLauncherContentAnimation$1;->$view:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setScaleY(F)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isRLMDomesticLightOS()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2f

    iget-object p1, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightLauncherContentAnimation$1;->$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/Workspace;->isOverlayShown()Z

    move-result p1

    if-eqz p1, :cond_2f

    iget-object p0, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightLauncherContentAnimation$1;->$view:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_5b

    :cond_2f
    iget-object p1, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightLauncherContentAnimation$1;->mAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget p1, p1, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-static {p1, p2, v0}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result p1

    iget-object p2, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightLauncherContentAnimation$1;->$view:Landroid/view/View;

    instance-of p2, p2, Lcom/android/launcher3/OplusDragLayer;

    if-eqz p2, :cond_56

    iget-object p2, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightLauncherContentAnimation$1;->$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/Workspace;->isOverlayShown()Z

    move-result p2

    if-eqz p2, :cond_56

    iget-object p0, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightLauncherContentAnimation$1;->$view:Landroid/view/View;

    check-cast p0, Lcom/android/launcher3/OplusDragLayer;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/android/launcher3/views/BaseDragLayer;->getAlphaProperty(I)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->setValue(F)V

    goto :goto_5b

    :cond_56
    iget-object p0, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightLauncherContentAnimation$1;->$view:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_5b
    return-void
.end method
