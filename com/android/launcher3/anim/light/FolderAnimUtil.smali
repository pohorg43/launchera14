.class public final Lcom/android/launcher3/anim/light/FolderAnimUtil;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFolderAnimUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FolderAnimUtil.kt\ncom/android/launcher3/anim/light/FolderAnimUtil\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt\n*L\n1#1,578:1\n42#2:579\n94#2,14:580\n42#2:594\n94#2,14:595\n31#2:609\n94#2,14:610\n42#2:624\n94#2,14:625\n*S KotlinDebug\n*F\n+ 1 FolderAnimUtil.kt\ncom/android/launcher3/anim/light/FolderAnimUtil\n*L\n387#1:579\n387#1:580,14\n518#1:594\n518#1:595,14\n535#1:609\n535#1:610,14\n573#1:624\n573#1:625,14\n*E\n"
    }
.end annotation


# static fields
.field private static final COUI_MOVE_EASE_INTERPOLATOR:Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

.field private static final DURATION_LIGHT_FOLDER_CLOSE:J = 0x1b1L

.field private static final DURATION_LIGHT_FOLDER_OPEN:J = 0x1b1L

.field public static final INSTANCE:Lcom/android/launcher3/anim/light/FolderAnimUtil;

.field private static final INTERPOLATOR_FOLDER_CLOSE:Landroid/view/animation/PathInterpolator;

.field private static final INTERPOLATOR_FOLDER_OPEN:Landroid/view/animation/PathInterpolator;

.field private static final TAG:Ljava/lang/String; = "FolderAnimUtil"

.field private static folderAnimPropsHolder:Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;

.field private static isLastStateEditMode:Z

.field private static isLastStateIconFallMode:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    new-instance v0, Lcom/android/launcher3/anim/light/FolderAnimUtil;

    invoke-direct {v0}, Lcom/android/launcher3/anim/light/FolderAnimUtil;-><init>()V

    sput-object v0, Lcom/android/launcher3/anim/light/FolderAnimUtil;->INSTANCE:Lcom/android/launcher3/anim/light/FolderAnimUtil;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3dcccccd  # 0.1f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/anim/light/FolderAnimUtil;->INTERPOLATOR_FOLDER_OPEN:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a  # 0.3f

    invoke-direct {v0, v1, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/anim/light/FolderAnimUtil;->INTERPOLATOR_FOLDER_CLOSE:Landroid/view/animation/PathInterpolator;

    new-instance v0, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    sput-object v0, Lcom/android/launcher3/anim/light/FolderAnimUtil;->COUI_MOVE_EASE_INTERPOLATOR:Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    new-instance v0, Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1f

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;-><init>(ZIILh4/j;Lh4/j;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/anim/light/FolderAnimUtil;->folderAnimPropsHolder:Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/folder/FolderIcon;Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/anim/light/FolderAnimUtil;->getLightFolderContentAnimation$lambda$10(Lcom/android/launcher3/folder/FolderIcon;Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic access$resetFolderIcon(Lcom/android/launcher3/folder/FolderIcon;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/anim/light/FolderAnimUtil;->resetFolderIcon(Lcom/android/launcher3/folder/FolderIcon;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/folder/FolderIcon;Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/anim/light/FolderAnimUtil;->getLightFolderContentAnimation$lambda$11(Lcom/android/launcher3/folder/FolderIcon;Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher/pageindicators/OplusPageIndicator;Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/anim/light/FolderAnimUtil;->getLightLauncherContentAnim$lambda$1$lambda$0(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher/pageindicators/OplusPageIndicator;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/folder/FolderIcon;Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/anim/light/FolderAnimUtil;->getLightFolderContentAnimation$lambda$9(Lcom/android/launcher3/folder/FolderIcon;Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic e(Landroid/animation/ValueAnimator;Lcom/android/launcher3/OplusHotseat;FFLcom/android/launcher3/OplusWorkspace;FLcom/android/launcher/pageindicators/OplusPageIndicator;FLandroid/animation/ValueAnimator;)V
    .registers 9

    invoke-static/range {p0 .. p8}, Lcom/android/launcher3/anim/light/FolderAnimUtil;->getLightLauncherContentAnim$lambda$3$lambda$2(Landroid/animation/ValueAnimator;Lcom/android/launcher3/OplusHotseat;FFLcom/android/launcher3/OplusWorkspace;FLcom/android/launcher/pageindicators/OplusPageIndicator;FLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/launcher3/folder/FolderIcon;Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/anim/light/FolderAnimUtil;->getLightFolderContentAnimation$lambda$8(Lcom/android/launcher3/folder/FolderIcon;Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic g(Lcom/android/launcher3/OplusHotseat;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/anim/light/FolderAnimUtil;->setHotSeatPositionToNormalState$lambda$6(Lcom/android/launcher3/OplusHotseat;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final getAnimDuration(ZZ)J
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-wide/16 v0, 0x168

    const-wide/16 v2, 0x1b1

    if-eqz p0, :cond_9

    if-eqz p1, :cond_9

    goto :goto_f

    :cond_9
    if-eqz p0, :cond_d

    :cond_b
    move-wide v0, v2

    goto :goto_f

    :cond_d
    if-eqz p1, :cond_b

    :goto_f
    return-wide v0
.end method

.method public static final getCloseFolderDisbandAnimation(Lcom/android/launcher3/folder/Folder;)Landroid/animation/ValueAnimator;
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "folder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v1, v3

    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-string/jumbo v1, "ofPropertyValuesHolder(folder, alpha)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/android/launcher3/anim/light/FolderAnimUtil;->INTERPOLATOR_FOLDER_CLOSE:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/launcher3/anim/light/FolderAnimUtil$getCloseFolderDisbandAnimation$$inlined$doOnStart$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/anim/light/FolderAnimUtil$getCloseFolderDisbandAnimation$$inlined$doOnStart$1;-><init>(Lcom/android/launcher3/folder/Folder;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method private static final getFolderAnimLevel(I)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0}, Lcom/android/common/util/PlatformLevelUtils;->isAnimationLevel(I)Z

    move-result p0

    invoke-static {}, Lcom/android/common/util/PlatformLevelUtils;->isAnimationLevelValid()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_12

    sget-object p0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->isLightFolderAnimation()Z

    move-result p0

    :cond_12
    return p0
.end method

.method public static final getFolderCloseAnimTraceTag()Lcom/oplus/quickstep/utils/TracePrintUtil$Type;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/util/PlatformLevelUtils;->isAnimationLevelValid()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_16

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isLightFolderAnimation()Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->LIGHT_FOLDER_CLOSE:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    goto :goto_2c

    :cond_13
    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->FOLDER_CLOSE:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    goto :goto_2c

    :cond_16
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/common/util/PlatformLevelUtils;->isAnimationLevel(I)Z

    move-result v0

    if-eqz v0, :cond_20

    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->SUPER_LIGHT_FOLDER_CLOSE:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    goto :goto_2c

    :cond_20
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/common/util/PlatformLevelUtils;->isAnimationLevel(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->LIGHT_FOLDER_CLOSE:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    goto :goto_2c

    :cond_2a
    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->FOLDER_CLOSE:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    :goto_2c
    return-object v0
.end method

.method public static final getFolderOpenAnimTraceTag()Lcom/oplus/quickstep/utils/TracePrintUtil$Type;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/util/PlatformLevelUtils;->isAnimationLevelValid()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_16

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isLightFolderAnimation()Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->LIGHT_FOLDER_OPEN:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    goto :goto_2c

    :cond_13
    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->FOLDER_OPEN:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    goto :goto_2c

    :cond_16
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/common/util/PlatformLevelUtils;->isAnimationLevel(I)Z

    move-result v0

    if-eqz v0, :cond_20

    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->SUPER_LIGHT_FOLDER_OPEN:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    goto :goto_2c

    :cond_20
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/common/util/PlatformLevelUtils;->isAnimationLevel(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->LIGHT_FOLDER_OPEN:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    goto :goto_2c

    :cond_2a
    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->FOLDER_OPEN:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    :goto_2c
    return-object v0
.end method

.method public static final getLastLightFolderPropsHolder()Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/anim/light/FolderAnimUtil;->folderAnimPropsHolder:Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;

    return-object v0
.end method

.method public static final getLauncherContentAnim(Lcom/android/launcher/Launcher;Z)Landroid/animation/Animator;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/anim/light/FolderAnimUtil;->isLightOrSuperLightFolderAnim()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/android/launcher3/anim/light/FolderAnimUtil;->isSuperLightFolderAnim()Z

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/android/launcher3/anim/light/FolderAnimUtil;->getLightLauncherContentAnim(Lcom/android/launcher/Launcher;ZZ)Landroid/animation/Animator;

    move-result-object p0

    goto :goto_22

    :cond_14
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/launcher/wallpaper/WallpaperUtil;->getLauncherContentAnimWithGaussian(Lcom/android/launcher/Launcher;Lcom/android/launcher3/OplusDragLayer;Z)Landroid/animation/AnimatorSet;

    move-result-object p0

    const-string/jumbo p1, "{\n            WallpaperU…r, folderClose)\n        }"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_22
    return-object p0
.end method

.method public static final getLightFolderContentAnimation(ZLcom/android/launcher3/folder/Folder;Lcom/android/launcher3/folder/FolderIcon;Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;Z)Landroid/animation/Animator;
    .registers 29
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "folder"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "folderIcon"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "folderAnimPropsHolder"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;->getFolderRelativeCenter()Lh4/j;

    move-result-object v4

    iget-object v4, v4, Lh4/j;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setPivotX(F)V

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;->getFolderRelativeCenter()Lh4/j;

    move-result-object v4

    iget-object v4, v4, Lh4/j;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setPivotY(F)V

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;->getFolderIconRelativeCenter()Lh4/j;

    move-result-object v4

    iget-object v4, v4, Lh4/j;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setPivotX(F)V

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;->getFolderIconRelativeCenter()Lh4/j;

    move-result-object v4

    iget-object v4, v4, Lh4/j;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setPivotY(F)V

    if-eqz v0, :cond_5f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_77

    :cond_5f
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;->getTranslationX()I

    move-result v4

    mul-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;->getTranslationY()I

    move-result v4

    mul-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :goto_77
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v5, 0x0

    move/from16 v6, p4

    invoke-static {v5, v6, v0}, Lcom/android/launcher3/anim/light/animparams/FolderAnimParamsFactory;->getFolderAnimParams(ZZZ)Lcom/android/launcher3/anim/light/animparams/FolderAnimParams;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/launcher3/anim/light/animparams/FolderAnimParams;->getLightFolderAlphaProp(Z)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    invoke-virtual {v6, v0}, Lcom/android/launcher3/anim/light/animparams/FolderAnimParams;->getLightFolderIconAlphaProp(Z)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    invoke-virtual {v6, v0}, Lcom/android/launcher3/anim/light/animparams/FolderAnimParams;->getLightFolderIconScaleProp(Z)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    invoke-virtual {v6, v0}, Lcom/android/launcher3/anim/light/animparams/FolderAnimParams;->getLightFolderScaleProp(Z)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;->getTranslationX()I

    move-result v11

    invoke-virtual {v6, v0, v11}, Lcom/android/launcher3/anim/light/animparams/FolderAnimParams;->getLightFolderTranslationXProp(ZI)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;->getTranslationY()I

    move-result v12

    invoke-virtual {v6, v0, v12}, Lcom/android/launcher3/anim/light/animparams/FolderAnimParams;->getLightFolderTranslationYProp(ZI)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    const-string/jumbo v14, "ofPropertyValuesHolder(f…derIcon, folderIconAlpha)"

    const-string/jumbo v15, "ofPropertyValuesHolder(f…derIcon, folderIconScale)"

    const-string/jumbo v13, "ofPropertyValuesHolder(folder, alpha)"

    const-string/jumbo v5, "ofPropertyValuesHolder(folder, translationY)"

    move-object/from16 v17, v4

    const-string/jumbo v4, "ofPropertyValuesHolder(folder, translationX)"

    move-object/from16 v18, v14

    const-string/jumbo v14, "ofPropertyValuesHolder(folder, scale)"

    const/16 v19, 0x5

    const/16 v20, 0x4

    const/16 v21, 0x3

    move-object/from16 v22, v8

    const/4 v8, 0x1

    if-eqz v0, :cond_176

    new-array v0, v8, [Landroid/animation/PropertyValuesHolder;

    const/4 v8, 0x0

    aput-object v7, v0, v8

    invoke-static {v1, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v16, v9

    invoke-virtual {v6}, Lcom/android/launcher3/anim/light/animparams/FolderAnimParams;->getFolderContentOpenAlphaDuration()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v7, Lcom/android/launcher3/anim/light/FolderAnimUtil;->COUI_MOVE_EASE_INTERPOLATOR:Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-virtual {v0, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v8, 0x1

    new-array v9, v8, [Landroid/animation/PropertyValuesHolder;

    const/4 v13, 0x0

    aput-object v10, v9, v13

    invoke-static {v1, v9}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-static {v9, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/launcher3/anim/light/animparams/FolderAnimParams;->getFolderContentOpenScaleDuration()J

    move-result-wide v13

    invoke-virtual {v9, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v9, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v10, v8, [Landroid/animation/PropertyValuesHolder;

    const/4 v13, 0x0

    aput-object v11, v10, v13

    invoke-static {v1, v10}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v23, v9

    invoke-virtual {v6}, Lcom/android/launcher3/anim/light/animparams/FolderAnimParams;->getFolderContentOpenTransDuration()J

    move-result-wide v8

    invoke-virtual {v10, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v10, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, Lh0/b;

    invoke-direct {v4, v2, v3, v13}, Lh0/b;-><init>(Lcom/android/launcher3/folder/FolderIcon;Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;I)V

    invoke-virtual {v10, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v8, 0x1

    new-array v4, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v12, v4, v13

    invoke-static {v1, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/launcher3/anim/light/animparams/FolderAnimParams;->getFolderContentOpenTransDuration()J

    move-result-wide v11

    invoke-virtual {v4, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v4, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v5, Lh0/a;

    invoke-direct {v5, v2, v3, v13}, Lh0/a;-><init>(Lcom/android/launcher3/folder/FolderIcon;Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;I)V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v3, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v16, v3, v13

    invoke-static {v2, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-static {v3, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/launcher3/anim/light/animparams/FolderAnimParams;->getFolderIconOpenScaleDuration()J

    move-result-wide v11

    invoke-virtual {v3, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v3, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v5, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v22, v5, v13

    invoke-static {v2, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    move-object/from16 v9, v18

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/launcher3/anim/light/animparams/FolderAnimParams;->getFolderIconOpenAlphaDuration()J

    move-result-wide v11

    invoke-virtual {v5, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v5, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v6, 0x6

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v0, v6, v13

    aput-object v23, v6, v8

    const/4 v0, 0x2

    aput-object v10, v6, v0

    aput-object v4, v6, v21

    aput-object v3, v6, v20

    aput-object v5, v6, v19

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_230

    :cond_176
    move-object/from16 v16, v9

    move-object/from16 v9, v18

    move-object/from16 v18, v17

    const/16 v17, 0x0

    new-array v0, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v10, v0, v17

    invoke-static {v1, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v10, v9

    invoke-virtual {v6}, Lcom/android/launcher3/anim/light/animparams/FolderAnimParams;->getFolderContentCloseScaleDuration()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v8, Lcom/android/launcher3/anim/light/FolderAnimUtil;->COUI_MOVE_EASE_INTERPOLATOR:Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-virtual {v0, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v9, 0x1

    new-array v14, v9, [Landroid/animation/PropertyValuesHolder;

    aput-object v11, v14, v17

    invoke-static {v1, v14}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-static {v11, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v10

    invoke-virtual {v6}, Lcom/android/launcher3/anim/light/animparams/FolderAnimParams;->getFolderContentCloseScaleDuration()J

    move-result-wide v9

    invoke-virtual {v11, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v11, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v9, Lh0/b;

    const/4 v10, 0x1

    invoke-direct {v9, v2, v3, v10}, Lh0/b;-><init>(Lcom/android/launcher3/folder/FolderIcon;Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;I)V

    invoke-virtual {v11, v9}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v9, v10, [Landroid/animation/PropertyValuesHolder;

    aput-object v12, v9, v17

    invoke-static {v1, v9}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v11

    invoke-virtual {v6}, Lcom/android/launcher3/anim/light/animparams/FolderAnimParams;->getFolderContentCloseScaleDuration()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v9, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v10, Lh0/a;

    const/4 v11, 0x1

    invoke-direct {v10, v2, v3, v11}, Lh0/a;-><init>(Lcom/android/launcher3/folder/FolderIcon;Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;I)V

    invoke-virtual {v9, v10}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v3, v11, [Landroid/animation/PropertyValuesHolder;

    aput-object v7, v3, v17

    invoke-static {v1, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-static {v3, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/launcher3/anim/light/animparams/FolderAnimParams;->getFolderContentCloseAlphaDuration()J

    move-result-wide v12

    invoke-virtual {v3, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v3, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v7, v11, [Landroid/animation/PropertyValuesHolder;

    aput-object v16, v7, v17

    invoke-static {v2, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-static {v7, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/launcher3/anim/light/animparams/FolderAnimParams;->getFolderIconCloseScaleDuration()J

    move-result-wide v12

    invoke-virtual {v7, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v7, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v10, v11, [Landroid/animation/PropertyValuesHolder;

    aput-object v22, v10, v17

    invoke-static {v2, v10}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/launcher3/anim/light/animparams/FolderAnimParams;->getFolderIconCloseAlphaDuration()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v10, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v6}, Lcom/android/launcher3/anim/light/animparams/FolderAnimParams;->getFolderIconCloseAlphaDelay()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const/4 v4, 0x6

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v0, v4, v17

    aput-object v5, v4, v11

    const/4 v0, 0x2

    aput-object v9, v4, v0

    aput-object v3, v4, v21

    aput-object v7, v4, v20

    aput-object v10, v4, v19

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_230
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/folder/FolderIcon;->isBigFolderIcon()Z

    move-result v3

    if-eqz v3, :cond_274

    move/from16 v3, p0

    if-nez v3, :cond_276

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/PreviewItemManager;

    move-result-object v4

    instance-of v5, v4, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    if-eqz v5, :cond_245

    check-cast v4, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    goto :goto_246

    :cond_245
    const/4 v4, 0x0

    :goto_246
    if-eqz v4, :cond_276

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/folder/Folder;->getContent()Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v5

    if-eqz v5, :cond_276

    move-object v6, v2

    check-cast v6, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v6}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewVerifier()Lcom/android/launcher3/folder/big/BigFolderGridOrganizer;

    move-result-object v6

    if-nez v6, :cond_25c

    goto :goto_260

    :cond_25c
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/launcher3/folder/big/BigFolderGridOrganizer;->setDoClosingAnim(Z)V

    :goto_260
    invoke-virtual {v4}, Lcom/android/launcher3/folder/PreviewItemManager;->getCurrentPageParams()Ljava/util/ArrayList;

    move-result-object v7

    const-string v8, "currentPageParams"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v7, v8}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->buildParamsForPage(ILjava/util/ArrayList;Z)V

    if-nez v6, :cond_270

    goto :goto_276

    :cond_270
    invoke-virtual {v6, v8}, Lcom/android/launcher3/folder/big/BigFolderGridOrganizer;->setDoClosingAnim(Z)V

    goto :goto_276

    :cond_274
    move/from16 v3, p0

    :cond_276
    :goto_276
    new-instance v4, Lcom/android/launcher3/anim/light/FolderAnimUtil$getLightFolderContentAnimation$$inlined$doOnStart$1;

    invoke-direct {v4, v1}, Lcom/android/launcher3/anim/light/FolderAnimUtil$getLightFolderContentAnimation$$inlined$doOnStart$1;-><init>(Lcom/android/launcher3/folder/Folder;)V

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v4, Lcom/android/launcher3/anim/light/FolderAnimUtil$getLightFolderContentAnimation$$inlined$doOnEnd$1;

    invoke-direct {v4, v1, v2, v3}, Lcom/android/launcher3/anim/light/FolderAnimUtil$getLightFolderContentAnimation$$inlined$doOnEnd$1;-><init>(Lcom/android/launcher3/folder/Folder;Lcom/android/launcher3/folder/FolderIcon;Z)V

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method private static final getLightFolderContentAnimation$lambda$10(Lcom/android/launcher3/folder/FolderIcon;Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;Landroid/animation/ValueAnimator;)V
    .registers 4

    const-string v0, "$folderIcon"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$folderAnimPropsHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1}, Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;->getTranslationX()I

    move-result p1

    mul-int/lit8 p1, p1, -0x1

    int-to-float p1, p1

    add-float/2addr p2, p1

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    return-void
.end method

.method private static final getLightFolderContentAnimation$lambda$11(Lcom/android/launcher3/folder/FolderIcon;Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;Landroid/animation/ValueAnimator;)V
    .registers 4

    const-string v0, "$folderIcon"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$folderAnimPropsHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1}, Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;->getTranslationY()I

    move-result p1

    mul-int/lit8 p1, p1, -0x1

    int-to-float p1, p1

    add-float/2addr p2, p1

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method

.method private static final getLightFolderContentAnimation$lambda$8(Lcom/android/launcher3/folder/FolderIcon;Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;Landroid/animation/ValueAnimator;)V
    .registers 4

    const-string v0, "$folderIcon"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$folderAnimPropsHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1}, Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;->getTranslationX()I

    move-result p1

    mul-int/lit8 p1, p1, -0x1

    int-to-float p1, p1

    add-float/2addr p2, p1

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    return-void
.end method

.method private static final getLightFolderContentAnimation$lambda$9(Lcom/android/launcher3/folder/FolderIcon;Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;Landroid/animation/ValueAnimator;)V
    .registers 4

    const-string v0, "$folderIcon"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$folderAnimPropsHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1}, Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;->getTranslationY()I

    move-result p1

    mul-int/lit8 p1, p1, -0x1

    int-to-float p1, p1

    add-float/2addr p2, p1

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method

.method private static final getLightLauncherContentAnim(Lcom/android/launcher/Launcher;ZZ)Landroid/animation/Animator;
    .registers 33
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v1, p0

    move/from16 v5, p1

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static/range {p1 .. p2}, Lcom/android/launcher3/anim/light/FolderAnimUtil;->getAnimDuration(ZZ)J

    move-result-wide v3

    if-eqz v5, :cond_25

    sget-object v6, Lcom/android/launcher3/anim/light/FolderAnimUtil;->INTERPOLATOR_FOLDER_CLOSE:Landroid/view/animation/PathInterpolator;

    goto :goto_27

    :cond_25
    sget-object v6, Lcom/android/launcher3/anim/light/FolderAnimUtil;->INTERPOLATOR_FOLDER_OPEN:Landroid/view/animation/PathInterpolator;

    :goto_27
    move-object v15, v6

    invoke-static/range {p0 .. p1}, Lcom/android/common/config/AnimationConstant;->workspaceScaleRangeForFolderAnim(Lcom/android/launcher3/Launcher;Z)[F

    move-result-object v14

    const-string v6, "hotseat"

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v6, "workspace"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v6

    const-string v7, "launcher.deviceProfile"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v2, v6}, Lcom/android/launcher3/anim/light/FolderAnimUtil;->setPivot(Lcom/android/launcher3/OplusHotseat;Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/OplusDeviceProfile;)V

    const/4 v12, 0x2

    new-array v6, v12, [F

    const/16 v16, 0x0

    aget v7, v14, v16

    aput v7, v6, v16

    const/4 v11, 0x1

    aget v7, v14, v11

    aput v7, v6, v11

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v10

    invoke-virtual {v10, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v10, v15}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v6, Landroidx/core/view/h;

    invoke-direct {v6, v2, v13}, Landroidx/core/view/h;-><init>(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher/pageindicators/OplusPageIndicator;)V

    invoke-virtual {v10, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-static {v1, v5, v3, v4, v15}, Lcom/android/launcher3/anim/light/FolderAnimUtil;->setHotSeatPositionToNormalState(Lcom/android/launcher/Launcher;ZJLandroid/animation/TimeInterpolator;)Landroid/animation/ValueAnimator;

    move-result-object v17

    const/high16 v18, 0x3f800000  # 1.0f

    const/16 v19, 0x0

    if-eqz v5, :cond_70

    move/from16 v20, v18

    goto :goto_72

    :cond_70
    move/from16 v20, v19

    :goto_72
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v21

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v9

    invoke-virtual {v13}, Landroid/view/View;->getAlpha()F

    move-result v22

    sget-object v6, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v6}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v6

    if-nez v6, :cond_92

    sget-object v6, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v6}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v6

    if-eqz v6, :cond_8f

    goto :goto_92

    :cond_8f
    move/from16 v23, v16

    goto :goto_94

    :cond_92
    :goto_92
    move/from16 v23, v11

    :goto_94
    new-array v6, v12, [F

    fill-array-data v6, :array_12e

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    if-eqz v5, :cond_a1

    move-wide v11, v3

    goto :goto_a5

    :cond_a1
    const-wide/16 v24, 0xc8

    move-wide/from16 v11, v24

    :goto_a5
    invoke-virtual {v7, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v7, v15}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v12, Lh0/c;

    move-object v6, v12

    move-object v11, v7

    move-object/from16 v24, v10

    move/from16 v10, v20

    move-wide/from16 v26, v3

    move-object/from16 v25, v15

    const/4 v3, 0x1

    move-object v15, v11

    move-object v11, v2

    move-object v4, v12

    const/16 v28, 0x2

    move/from16 v12, v21

    move-object/from16 v29, v14

    move/from16 v14, v22

    invoke-direct/range {v6 .. v14}, Lh0/c;-><init>(Landroid/animation/ValueAnimator;Lcom/android/launcher3/OplusHotseat;FFLcom/android/launcher3/OplusWorkspace;FLcom/android/launcher/pageindicators/OplusPageIndicator;F)V

    invoke-virtual {v15, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v24, v4, v16

    aput-object v17, v4, v3

    aput-object v15, v4, v28

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object v4

    if-eqz v5, :cond_de

    move/from16 v6, v19

    goto :goto_e0

    :cond_de
    move/from16 v6, v18

    :goto_e0
    if-nez v23, :cond_ee

    sget-object v7, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v7}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v7

    if-eqz v7, :cond_eb

    goto :goto_ee

    :cond_eb
    move/from16 v7, v16

    goto :goto_ef

    :cond_ee
    :goto_ee
    move v7, v3

    :goto_ef
    if-nez v7, :cond_10b

    invoke-virtual {v4, v6}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->createLightFolderBlurAnim(F)Landroid/animation/ValueAnimator;

    move-result-object v4

    move-wide/from16 v8, v26

    invoke-virtual {v4, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-object/from16 v8, v25

    invoke-virtual {v4, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string v8, "depthController.createLi…nterpolator\n            }"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v4, v3, v16

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_10b
    invoke-static {v0, v2}, Lcom/oplus/view/OplusRenderNodeAnimator;->createRenderValueAnimator(Landroid/animation/Animator;Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v8

    const-string/jumbo v0, "renderNodeAnimator"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "scaleRange"

    move-object/from16 v4, v29

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v8

    move-object/from16 v1, p0

    move/from16 v2, v20

    move v3, v6

    move/from16 v5, p1

    move v6, v7

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/anim/light/FolderAnimUtil;->initListener(Landroid/animation/Animator;Lcom/android/launcher/Launcher;FF[FZZ)V

    invoke-virtual {v8}, Landroid/animation/Animator;->start()V

    return-object v8

    nop

    :array_12e
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private static final getLightLauncherContentAnim$lambda$1$lambda$0(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher/pageindicators/OplusPageIndicator;Landroid/animation/ValueAnimator;)V
    .registers 5

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p0, v0}, Lcom/oplus/animation/OplusAsyncAnimatorUtils;->setScaleX(Landroid/view/View;F)Z

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p0, v0}, Lcom/oplus/animation/OplusAsyncAnimatorUtils;->setScaleY(Landroid/view/View;F)Z

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p1, p0}, Lcom/oplus/animation/OplusAsyncAnimatorUtils;->setScaleX(Landroid/view/View;F)Z

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p1, p0}, Lcom/oplus/animation/OplusAsyncAnimatorUtils;->setScaleY(Landroid/view/View;F)Z

    return-void
.end method

.method private static final getLightLauncherContentAnim$lambda$3$lambda$2(Landroid/animation/ValueAnimator;Lcom/android/launcher3/OplusHotseat;FFLcom/android/launcher3/OplusWorkspace;FLcom/android/launcher/pageindicators/OplusPageIndicator;FLandroid/animation/ValueAnimator;)V
    .registers 9

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p8, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p0, p8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0, p2, p3}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p2

    invoke-static {p1, p2}, Lcom/oplus/animation/OplusAsyncAnimatorUtils;->setAlpha(Landroid/view/View;F)Z

    invoke-static {p0, p5, p3}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p1

    invoke-static {p4, p1}, Lcom/oplus/animation/OplusAsyncAnimatorUtils;->setAlpha(Landroid/view/View;F)Z

    invoke-static {p0, p7, p3}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p0

    invoke-static {p6, p0}, Lcom/oplus/animation/OplusAsyncAnimatorUtils;->setAlpha(Landroid/view/View;F)Z

    return-void
.end method

.method public static final getSuperLightFolderContentAnimation(ZLcom/android/launcher3/folder/Folder;)Landroid/animation/Animator;
    .registers 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "folder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v2, p0}, Lcom/android/launcher3/anim/light/animparams/FolderAnimParamsFactory;->getFolderAnimParams(ZZZ)Lcom/android/launcher3/anim/light/animparams/FolderAnimParams;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/launcher3/anim/light/animparams/FolderAnimParams;->getLightFolderAlphaProp(Z)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    invoke-virtual {v3, p0}, Lcom/android/launcher3/anim/light/animparams/FolderAnimParams;->getLightFolderScaleProp(Z)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    const/4 v5, 0x2

    const-wide/16 v6, 0x168

    if-eqz p0, :cond_3d

    new-array p0, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v3, p0, v2

    aput-object v4, p0, v1

    invoke-static {p1, p0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-string/jumbo v1, "ofPropertyValuesHolder(folder, scale, alpha)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/android/launcher3/anim/light/FolderAnimUtil;->COUI_MOVE_EASE_INTERPOLATOR:Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-virtual {p0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_6f

    :cond_3d
    new-array p0, v1, [Landroid/animation/PropertyValuesHolder;

    aput-object v3, p0, v2

    invoke-static {p1, p0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-string/jumbo v3, "ofPropertyValuesHolder(folder, scale)"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-array v3, v1, [Landroid/animation/PropertyValuesHolder;

    aput-object v4, v3, v2

    invoke-static {p1, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-string/jumbo v4, "ofPropertyValuesHolder(folder, alpha)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v6, 0x12c

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-array v4, v5, [Landroid/animation/Animator;

    aput-object p0, v4, v2

    aput-object v3, v4, v1

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    sget-object p0, Lcom/android/launcher3/anim/light/FolderAnimUtil;->COUI_MOVE_EASE_INTERPOLATOR:Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_6f
    new-instance p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$getSuperLightFolderContentAnimation$$inlined$doOnStart$1;

    invoke-direct {p0, p1}, Lcom/android/launcher3/anim/light/FolderAnimUtil$getSuperLightFolderContentAnimation$$inlined$doOnStart$1;-><init>(Lcom/android/launcher3/folder/Folder;)V

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method private static final initListener(Landroid/animation/Animator;Lcom/android/launcher/Launcher;FF[FZZ)V
    .registers 19
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object v6

    new-instance v11, Lcom/android/launcher3/anim/light/FolderAnimUtil$initListener$1;

    move-object v0, v11

    move v2, p2

    move/from16 v5, p6

    move v7, p3

    move/from16 v8, p5

    move-object v9, p1

    move-object/from16 v10, p4

    invoke-direct/range {v0 .. v10}, Lcom/android/launcher3/anim/light/FolderAnimUtil$initListener$1;-><init>(Lcom/android/launcher3/OplusWorkspace;FLcom/android/launcher/pageindicators/OplusPageIndicator;Lcom/android/launcher3/OplusHotseat;ZLcom/android/launcher3/uioverrides/states/OplusDepthController;FZLcom/android/launcher/Launcher;[F)V

    move-object v0, p0

    invoke-virtual {p0, v11}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public static final isLightFolderAnim()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/util/PlatformLevelUtils;->isAnimationLevelValid()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_f

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isLightFolderAnimation()Z

    move-result v0

    goto :goto_14

    :cond_f
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/launcher3/anim/light/FolderAnimUtil;->getFolderAnimLevel(I)Z

    move-result v0

    :goto_14
    return v0
.end method

.method public static final isLightOrSuperLightFolderAnim()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/anim/light/FolderAnimUtil;->isSuperLightFolderAnim()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Lcom/android/launcher3/anim/light/FolderAnimUtil;->isLightFolderAnim()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public static final isSuperLightFolderAnim()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/util/PlatformLevelUtils;->isAnimationLevelValid()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_f

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isLightFolderAnimation()Z

    move-result v0

    goto :goto_14

    :cond_f
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/launcher3/anim/light/FolderAnimUtil;->getFolderAnimLevel(I)Z

    move-result v0

    :goto_14
    return v0
.end method

.method private static final resetFolderIcon(Lcom/android/launcher3/folder/FolderIcon;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setScaleX(F)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setScaleY(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->resetPivot()V

    return-void
.end method

.method public static final setHotSeatPositionToNormalState(Lcom/android/launcher/Launcher;ZJLandroid/animation/TimeInterpolator;)Landroid/animation/ValueAnimator;
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/android/common/config/AnimationConstant;->hotseatScaleRangeForFolderAnim(Lcom/android/launcher3/Launcher;Z)[F

    move-result-object p0

    const/4 p1, 0x2

    new-array p1, p1, [F

    const/4 v1, 0x0

    aget v2, p0, v1

    aput v2, p1, v1

    const/4 v1, 0x1

    aget p0, p0, v1

    aput p0, p1, v1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p1, Lcom/android/launcher/download/s;

    invoke-direct {p1, v0}, Lcom/android/launcher/download/s;-><init>(Lcom/android/launcher3/OplusHotseat;)V

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string p1, "hotSeatScaleAnim"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final setHotSeatPositionToNormalState$lambda$6(Lcom/android/launcher3/OplusHotseat;Landroid/animation/ValueAnimator;)V
    .registers 4

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->isIconAlignmentAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "null cannot be cast to non-null type kotlin.Float"

    if-nez v0, :cond_39

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p0, v0}, Lcom/oplus/animation/OplusAsyncAnimatorUtils;->setScaleX(Landroid/view/View;F)Z

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p0, p1}, Lcom/oplus/animation/OplusAsyncAnimatorUtils;->setScaleY(Landroid/view/View;F)Z

    goto :goto_47

    :cond_39
    sget-object v0, Lcom/android/launcher3/OplusLauncherAnimUtils;->SCALE:Landroid/util/FloatProperty;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {v0, p0, p1}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    :goto_47
    return-void
.end method

.method public static final setLastLightFolderPropsHolder(Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "folderAnimPropsHolder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p0, Lcom/android/launcher3/anim/light/FolderAnimUtil;->folderAnimPropsHolder:Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;

    return-void
.end method

.method private static final setPivot(Lcom/android/launcher3/OplusHotseat;Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/OplusDeviceProfile;)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result v0

    const/high16 v1, 0x40000000  # 2.0f

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setPivotX(F)V

    :cond_11
    invoke-virtual {p2}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result p1

    if-eqz p1, :cond_37

    invoke-virtual {p2}, Lcom/android/launcher3/DeviceProfile;->isSeascape()Z

    move-result p1

    if-eqz p1, :cond_25

    iget p1, p2, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    int-to-float p1, p1

    div-float/2addr p1, v1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setPivotX(F)V

    goto :goto_2d

    :cond_25
    iget p1, p2, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    neg-int p1, p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setPivotX(F)V

    :goto_2d
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setPivotY(F)V

    goto :goto_48

    :cond_37
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setPivotX(F)V

    iget p1, p2, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    neg-int p1, p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setPivotY(F)V

    :goto_48
    return-void
.end method


# virtual methods
.method public final isLastStateEditMode()Z
    .registers 1

    sget-boolean p0, Lcom/android/launcher3/anim/light/FolderAnimUtil;->isLastStateEditMode:Z

    return p0
.end method

.method public final isLastStateIconFallMode()Z
    .registers 1

    sget-boolean p0, Lcom/android/launcher3/anim/light/FolderAnimUtil;->isLastStateIconFallMode:Z

    return p0
.end method

.method public final setLastStateEditMode(Z)V
    .registers 2

    sput-boolean p1, Lcom/android/launcher3/anim/light/FolderAnimUtil;->isLastStateEditMode:Z

    return-void
.end method

.method public final setLastStateIconFallMode(Z)V
    .registers 2

    sput-boolean p1, Lcom/android/launcher3/anim/light/FolderAnimUtil;->isLastStateIconFallMode:Z

    return-void
.end method
