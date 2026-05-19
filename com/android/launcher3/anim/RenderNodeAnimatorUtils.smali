.class public Lcom/android/launcher3/anim/RenderNodeAnimatorUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final CLASS_NAME_RENDER_NODE_ANIMATOR:Ljava/lang/String; = "com.oplus.view.OplusRenderNodeAnimator"

.field private static final TAG:Ljava/lang/String; = "RenderNodeAnimatorUtils"

.field private static sIsAvailable:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/view/View;IFFLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;
    .registers 5
    .param p0  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Landroid/animation/TimeInterpolator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1, p3, p4}, Lcom/oplus/view/OplusRenderNodeAnimator;->createInterpolatorAnimator(IFLandroid/animation/TimeInterpolator;)Lcom/oplus/view/OplusRenderNodeAnimator;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/oplus/view/OplusRenderNodeAnimator;->setTarget(Landroid/view/View;)V

    invoke-virtual {p1, p2}, Lcom/oplus/view/OplusRenderNodeAnimator;->setStartValue(F)V

    invoke-virtual {p1}, Lcom/oplus/view/OplusRenderNodeAnimator;->getRenderNodeAnimator()Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static createOSpringInterpolator(DDDF)Landroid/animation/TimeInterpolator;
    .registers 15
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v7, 0x453b8000  # 3000.0f

    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/oplus/view/OplusRenderNodeAnimator;->createOSpringInterpolator(DDDFF)Landroid/animation/TimeInterpolator;

    move-result-object p0

    return-object p0
.end method

.method private static hasRenderNodeAnimatorClass()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isAvailable()Z
    .registers 4

    sget-object v0, Lcom/android/launcher3/anim/RenderNodeAnimatorUtils;->sIsAvailable:Ljava/lang/Boolean;

    const-string v1, "RenderNodeAnimatorUtils"

    if-nez v0, :cond_39

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    const-string v0, "isAvailable, disabled on tablet"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/android/launcher3/anim/RenderNodeAnimatorUtils;->sIsAvailable:Ljava/lang/Boolean;

    return v2

    :cond_17
    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    if-eqz v0, :cond_29

    const-string v0, "isAvailable, disabled on fold screen"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/android/launcher3/anim/RenderNodeAnimatorUtils;->sIsAvailable:Ljava/lang/Boolean;

    return v2

    :cond_29
    invoke-static {}, Lcom/android/launcher3/anim/RenderNodeAnimatorUtils;->hasRenderNodeAnimatorClass()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/android/launcher3/anim/RenderNodeAnimatorUtils;->sIsAvailable:Ljava/lang/Boolean;

    const-string v2, "isAvailable, hasRenderNodeAnimatorClass: "

    invoke-static {v2, v0, v1}, Lcom/android/common/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    return v0

    :cond_39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAvailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isEnabledByRusConfig()Z
    .registers 3

    invoke-static {}, Lcom/oplus/quickstep/utils/AnimationFeatureHelper;->getInstance()Lcom/oplus/quickstep/utils/AnimationFeatureHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/AnimationFeatureHelper;->getRTUnlockEnable()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEnabledByRusConfig, rus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RenderNodeAnimatorUtils"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    return v0
.end method
