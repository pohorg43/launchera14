.class public final Lcom/android/launcher3/views/WorkSpaceScrimView;
.super Landroid/view/View;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/views/WorkSpaceScrimView$Companion;
    }
.end annotation


# static fields
.field private static final CLASS_BG_RENDER_EFFECT:Ljava/lang/String; = "com.oplus.view.OplusViewBackgroundRenderEffect"

.field public static final Companion:Lcom/android/launcher3/views/WorkSpaceScrimView$Companion;

.field private static final ICON_BLUR_CHANGE_THRESHOLD:F = 1.0f

.field private static final ICON_BLUR_CLOSE_EXECUTOR:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final ICON_BLUR_CLOSE_SCALE_VALUE:F = 0.1f

.field public static final ICON_BLUR_MAX_VALUE:F = 80.0f

.field private static final ICON_BLUR_OPEN_EXECUTOR:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final ICON_BLUR_OPEN_SCALE_VALUE:F = 0.02f

.field private static final METHOD_SET_BG_RENDER_EFFECT:Ljava/lang/String; = "setBackgroundRenderEffect"

.field public static final SETTING_KEY_IS_SUPPORT_ICON_BLUR:Ljava/lang/String; = "com.android.launcher.is_support_icon_blur"

.field private static final STRING_FALSE:Ljava/lang/String; = "false"

.field private static final STRING_TRUE:Ljava/lang/String; = "true"

.field private static final TAG:Ljava/lang/String; = "WorkSpaceScrimView"


# instance fields
.field private isSupportIconBlur:Z

.field private final mEnableReflectToGetMethod$delegate:Lh4/f;

.field private mIconBlurExecutor:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mIconBlurMaxRadius:F

.field private mIconBlurRadius:F

.field private mIsInterruptScene:Z

.field private mIsOpening:Z

.field private mLauncher:Lcom/android/launcher/Launcher;

.field private final mWorkspaceScrim:Lcom/android/launcher3/graphics/Scrim;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/views/WorkSpaceScrimView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/views/WorkSpaceScrimView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/views/WorkSpaceScrimView;->Companion:Lcom/android/launcher3/views/WorkSpaceScrimView$Companion;

    sget-object v0, Lcom/android/launcher3/views/WorkSpaceScrimView$Companion$ICON_BLUR_OPEN_EXECUTOR$1;->INSTANCE:Lcom/android/launcher3/views/WorkSpaceScrimView$Companion$ICON_BLUR_OPEN_EXECUTOR$1;

    sput-object v0, Lcom/android/launcher3/views/WorkSpaceScrimView;->ICON_BLUR_OPEN_EXECUTOR:Lkotlin/jvm/functions/Function1;

    sget-object v0, Lcom/android/launcher3/views/WorkSpaceScrimView$Companion$ICON_BLUR_CLOSE_EXECUTOR$1;->INSTANCE:Lcom/android/launcher3/views/WorkSpaceScrimView$Companion$ICON_BLUR_CLOSE_EXECUTOR$1;

    sput-object v0, Lcom/android/launcher3/views/WorkSpaceScrimView;->ICON_BLUR_CLOSE_EXECUTOR:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/views/WorkSpaceScrimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/views/WorkSpaceScrimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Lcom/android/launcher3/graphics/Scrim;

    invoke-direct {p2, p0}, Lcom/android/launcher3/graphics/Scrim;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/launcher3/views/WorkSpaceScrimView;->mWorkspaceScrim:Lcom/android/launcher3/graphics/Scrim;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/launcher3/views/WorkSpaceScrimView;->mIsOpening:Z

    const/high16 p2, 0x42a00000  # 80.0f

    iput p2, p0, Lcom/android/launcher3/views/WorkSpaceScrimView;->mIconBlurMaxRadius:F

    new-instance p2, Lcom/android/launcher3/views/WorkSpaceScrimView$mEnableReflectToGetMethod$2;

    invoke-direct {p2, p0}, Lcom/android/launcher3/views/WorkSpaceScrimView$mEnableReflectToGetMethod$2;-><init>(Lcom/android/launcher3/views/WorkSpaceScrimView;)V

    invoke-static {p2}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/views/WorkSpaceScrimView;->mEnableReflectToGetMethod$delegate:Lh4/f;

    invoke-direct {p0}, Lcom/android/launcher3/views/WorkSpaceScrimView;->supportIconBlur()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/launcher3/views/WorkSpaceScrimView;->isSupportIconBlur:Z

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/view/View;->setFocusable(Z)V

    invoke-static {p1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object p1

    const-string p2, "fromContext(context)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher/Launcher;

    iput-object p1, p0, Lcom/android/launcher3/views/WorkSpaceScrimView;->mLauncher:Lcom/android/launcher/Launcher;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/views/WorkSpaceScrimView;F)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/views/WorkSpaceScrimView;->setIconBlur$lambda$0(Lcom/android/launcher3/views/WorkSpaceScrimView;F)V

    return-void
.end method

.method public static final synthetic access$enableReflectToGetMethod(Lcom/android/launcher3/views/WorkSpaceScrimView;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/views/WorkSpaceScrimView;->enableReflectToGetMethod()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getICON_BLUR_CLOSE_EXECUTOR$cp()Lkotlin/jvm/functions/Function1;
    .registers 1

    sget-object v0, Lcom/android/launcher3/views/WorkSpaceScrimView;->ICON_BLUR_CLOSE_EXECUTOR:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final synthetic access$getICON_BLUR_OPEN_EXECUTOR$cp()Lkotlin/jvm/functions/Function1;
    .registers 1

    sget-object v0, Lcom/android/launcher3/views/WorkSpaceScrimView;->ICON_BLUR_OPEN_EXECUTOR:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method private final enableReflectToGetMethod()Z
    .registers 7

    const-string p0, "WorkSpaceScrimView"

    const/4 v0, 0x0

    :try_start_3
    const-string v1, "com.oplus.view.OplusViewBackgroundRenderEffect"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "setBackgroundRenderEffect"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/graphics/RenderEffect;

    aput-object v4, v3, v0

    const-class v4, Landroid/view/View;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_1c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_1c} :catch_4c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_1c} :catch_36
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_1c} :catch_20

    if-eqz p0, :cond_1f

    move v0, v5

    :cond_1f
    return v0

    :catch_20
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SecurityException Can\'t support icon blur cause by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :catch_36
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NoSuchMethodException Can\'t support icon blur cause by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :catch_4c
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClassNotFoundException Can\'t support icon blur cause by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private final getMEnableReflectToGetMethod()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/views/WorkSpaceScrimView;->mEnableReflectToGetMethod$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final setIconBlur$lambda$0(Lcom/android/launcher3/views/WorkSpaceScrimView;F)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/views/WorkSpaceScrimView;->setIconBlurInner(F)V

    return-void
.end method

.method private final setIconBlurInner(F)V
    .registers 4

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_18

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const/high16 v0, 0x42a00000  # 80.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/views/WorkSpaceScrimView;->mIconBlurRadius:F

    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-static {p1, p1, v0}, Landroid/graphics/RenderEffect;->createBlurEffect(FFLandroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    move-result-object p1

    goto :goto_20

    :cond_18
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    iput v0, p0, Lcom/android/launcher3/views/WorkSpaceScrimView;->mIconBlurRadius:F

    const/4 p1, 0x0

    :goto_20
    invoke-static {p1, p0}, Lcom/oplus/view/OplusViewBackgroundRenderEffect;->setBackgroundRenderEffect(Landroid/graphics/RenderEffect;Landroid/view/View;)V

    return-void
.end method

.method private final supportIconBlur()Z
    .registers 4

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isIconBlurDisabled()Z

    move-result v0

    if-eqz v0, :cond_e

    return v1

    :cond_e
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v0

    if-eqz v0, :cond_15

    return v1

    :cond_15
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "com.android.launcher.is_support_icon_blur"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "false"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    goto :goto_47

    :cond_2a
    invoke-direct {p0}, Lcom/android/launcher3/views/WorkSpaceScrimView;->getMEnableReflectToGetMethod()Z

    move-result v2

    if-nez v2, :cond_31

    goto :goto_47

    :cond_31
    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/4 v1, 0x1

    goto :goto_47

    :cond_3c
    iget-object p0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v0, "mContext"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/common/util/PlatformLevelUtils;->isIconBlurAvailable(Landroid/content/Context;)Z

    move-result v1

    :goto_47
    return v1
.end method


# virtual methods
.method public final getDynamicBlurProgress(F)F
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/views/WorkSpaceScrimView;->mIconBlurExecutor:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_12

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p1

    :cond_12
    return p1
.end method

.method public final getMWorkspaceScrim()Lcom/android/launcher3/graphics/Scrim;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/views/WorkSpaceScrimView;->mWorkspaceScrim:Lcom/android/launcher3/graphics/Scrim;

    return-object p0
.end method

.method public final isSupportIconBlur()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/views/WorkSpaceScrimView;->isSupportIconBlur:Z

    return p0
.end method

.method public pointInView(FFF)Z
    .registers 4

    const/4 p0, 0x0

    return p0
.end method

.method public final resetIconBlur()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/views/WorkSpaceScrimView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setIconBlurWithoutAnim(F)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/views/WorkSpaceScrimView;->mIconBlurExecutor:Lkotlin/jvm/functions/Function1;

    const-string/jumbo p0, "resetIconBlur: caller = "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0xa

    const-string v1, "WorkSpaceScrimView"

    invoke-static {v0, p0, v1}, Lcom/android/common/util/k;->a(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public final setIconBlur(F)V
    .registers 10

    iget v0, p0, Lcom/android/launcher3/views/WorkSpaceScrimView;->mIconBlurMaxRadius:F

    mul-float v1, p1, v0

    iget v2, p0, Lcom/android/launcher3/views/WorkSpaceScrimView;->mIconBlurRadius:F

    cmpg-float v3, v2, v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_e

    move v3, v4

    goto :goto_f

    :cond_e
    move v3, v5

    :goto_f
    if-nez v3, :cond_7c

    const/4 v3, 0x0

    cmpg-float v6, v1, v3

    if-nez v6, :cond_18

    move v6, v4

    goto :goto_19

    :cond_18
    move v6, v5

    :goto_19
    const/high16 v7, 0x3f800000  # 1.0f

    if-nez v6, :cond_30

    cmpg-float v0, v1, v0

    if-nez v0, :cond_23

    move v0, v4

    goto :goto_24

    :cond_23
    move v0, v5

    :goto_24
    if-nez v0, :cond_30

    sub-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v7

    if-gtz v0, :cond_30

    goto :goto_7c

    :cond_30
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v0

    if-nez v0, :cond_47

    cmpg-float v0, p1, v3

    if-nez v0, :cond_3c

    move v0, v4

    goto :goto_3d

    :cond_3c
    move v0, v5

    :goto_3d
    if-nez v0, :cond_47

    cmpg-float v0, p1, v7

    if-nez v0, :cond_44

    goto :goto_45

    :cond_44
    move v4, v5

    :goto_45
    if-eqz v4, :cond_60

    :cond_47
    const-string/jumbo v0, "setIconBlur: progress="

    const-string v2, ", blur="

    invoke-static {v0, p1, v2}, Lc0/a;->a(Ljava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/android/launcher3/views/WorkSpaceScrimView;->mIconBlurRadius:F

    const-string v2, "->"

    const-string v3, ", threshold=1.0, caller="

    invoke-static {p1, v0, v2, v1, v3}, Lcom/android/launcher/folder/recommend/view/c;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    const/16 v0, 0xa

    const-string v2, "WorkSpaceScrimView"

    invoke-static {v0, p1, v2}, Lcom/android/common/util/k;->a(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_60
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_72

    invoke-direct {p0, v1}, Lcom/android/launcher3/views/WorkSpaceScrimView;->setIconBlurInner(F)V

    goto :goto_7c

    :cond_72
    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Lcom/android/launcher3/graphics/h;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/graphics/h;-><init>(Lcom/android/launcher3/views/WorkSpaceScrimView;F)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_7c
    :goto_7c
    return-void
.end method

.method public final setIconBlurMaxValue(I)V
    .registers 2

    int-to-float p1, p1

    iput p1, p0, Lcom/android/launcher3/views/WorkSpaceScrimView;->mIconBlurMaxRadius:F

    return-void
.end method

.method public final setIsOpeningIconBlur(Z)V
    .registers 4

    iput-boolean p1, p0, Lcom/android/launcher3/views/WorkSpaceScrimView;->mIsOpening:Z

    iget v0, p0, Lcom/android/launcher3/views/WorkSpaceScrimView;->mIconBlurRadius:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    if-nez v0, :cond_c

    move v0, v1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/launcher3/views/WorkSpaceScrimView;->mIsInterruptScene:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/launcher3/views/WorkSpaceScrimView;->mIconBlurExecutor:Lkotlin/jvm/functions/Function1;

    if-nez v0, :cond_25

    if-eqz p1, :cond_1b

    sget-object v0, Lcom/android/launcher3/views/WorkSpaceScrimView;->ICON_BLUR_CLOSE_EXECUTOR:Lkotlin/jvm/functions/Function1;

    goto :goto_25

    :cond_1b
    sget-object v0, Lcom/android/launcher3/views/WorkSpaceScrimView;->ICON_BLUR_OPEN_EXECUTOR:Lkotlin/jvm/functions/Function1;

    goto :goto_25

    :cond_1e
    if-eqz p1, :cond_23

    sget-object v0, Lcom/android/launcher3/views/WorkSpaceScrimView;->ICON_BLUR_OPEN_EXECUTOR:Lkotlin/jvm/functions/Function1;

    goto :goto_25

    :cond_23
    sget-object v0, Lcom/android/launcher3/views/WorkSpaceScrimView;->ICON_BLUR_CLOSE_EXECUTOR:Lkotlin/jvm/functions/Function1;

    :cond_25
    :goto_25
    iput-object v0, p0, Lcom/android/launcher3/views/WorkSpaceScrimView;->mIconBlurExecutor:Lkotlin/jvm/functions/Function1;

    const-string/jumbo p1, "setIsOpeningIconBlur: isOpening = "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/launcher3/views/WorkSpaceScrimView;->mIsOpening:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isInterrupt = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/launcher3/views/WorkSpaceScrimView;->mIsInterruptScene:Z

    const-string v0, "WorkSpaceScrimView"

    invoke-static {p1, p0, v0}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void
.end method

.method public final setSupportIconBlur(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/views/WorkSpaceScrimView;->isSupportIconBlur:Z

    return-void
.end method
