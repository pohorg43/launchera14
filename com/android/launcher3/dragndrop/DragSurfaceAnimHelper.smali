.class public final Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$AnimUpdateLister;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDragSurfaceAnimHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DragSurfaceAnimHelper.kt\ncom/android/launcher3/dragndrop/DragSurfaceAnimHelper\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,526:1\n31#2:527\n94#2,14:528\n42#2:543\n94#2,14:544\n53#2:558\n94#2,14:559\n31#2:573\n94#2,14:574\n31#2:588\n94#2,14:589\n42#2:603\n94#2,14:604\n31#2:618\n94#2,14:619\n42#2:633\n94#2,14:634\n1#3:542\n*S KotlinDebug\n*F\n+ 1 DragSurfaceAnimHelper.kt\ncom/android/launcher3/dragndrop/DragSurfaceAnimHelper\n*L\n242#1:527\n242#1:528,14\n262#1:543\n262#1:544,14\n267#1:558\n267#1:559,14\n289#1:573\n289#1:574,14\n347#1:588\n347#1:589,14\n422#1:603\n422#1:604,14\n430#1:618\n430#1:619,14\n471#1:633\n471#1:634,14\n*E\n"
    }
.end annotation


# static fields
.field private static final ANIMATED_PROPERTY_ALPHA:Ljava/lang/String; = "alpha"

.field private static final ANIMATED_PROPERTY_SCALE_X:Ljava/lang/String; = "scaleX"

.field private static final ANIMATED_PROPERTY_SCALE_Y:Ljava/lang/String; = "scaleY"

.field private static final ANIMATED_PROPERTY_X:Ljava/lang/String; = "x"

.field private static final ANIMATED_PROPERTY_Y:Ljava/lang/String; = "y"

.field private static final ANIMATED_SCALE_HIDE_VALUE:F = 0.8f

.field public static final INSTANCE:Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;

.field private static final TAG:Ljava/lang/String; = "DragSurfaceAnimHelper"

.field private static animCornerRadius:I

.field private static dragView:Lcom/android/launcher3/dragndrop/OplusDragView;

.field private static surfaceControl:Landroid/view/SurfaceControl;

.field private static transactionRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;

    invoke-direct {v0}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;-><init>()V

    sput-object v0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->INSTANCE:Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;

    new-instance v0, Ljava/lang/ref/WeakReference;

    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->transactionRef:Ljava/lang/ref/WeakReference;

    const/16 v0, 0x27

    sput v0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->animCornerRadius:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/animation/AnimatorSet;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->animateSurfaceToPosition$lambda$11(Landroid/animation/AnimatorSet;)V

    return-void
.end method

.method private static final animateSurfaceToExchange$lambda$24()V
    .registers 4

    sget-object v0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->INSTANCE:Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;

    sget-object v1, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->surfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-ne v1, v2, :cond_f

    goto :goto_10

    :cond_f
    move v2, v3

    :goto_10
    if-eqz v2, :cond_26

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->surfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    sget-object v0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->surfaceControl:Landroid/view/SurfaceControl;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    :cond_26
    return-void
.end method

.method private static final animateSurfaceToExchange$lambda$26$lambda$25(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 3

    const-string v0, "$this_apply"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "valueAnimator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public static synthetic animateSurfaceToHide$default(Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;JILjava/lang/Object;)V
    .registers 6

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_6

    const-wide/16 p2, -0x1

    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->animateSurfaceToHide(Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;J)V

    return-void
.end method

.method private static final animateSurfaceToHide$lambda$17(Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;)V
    .registers 4

    const-string v0, "$animPara"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mAddingCard:Landroid/view/View;

    if-nez v0, :cond_a

    goto :goto_f

    :cond_a
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_f
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mAddingCard:Landroid/view/View;

    if-eqz v0, :cond_20

    instance-of v1, v0, Lcom/android/launcher3/card/CommonCardView;

    if-eqz v1, :cond_20

    check-cast v0, Lcom/android/launcher3/card/CommonCardView;

    invoke-virtual {v0}, Lcom/android/launcher3/card/CommonCardView;->getCardModelWrapper()Lcom/android/launcher3/card/CardModelWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/card/CardModelWrapper;->unbindView()V

    :cond_20
    sget-object v0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->INSTANCE:Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;

    sget-object v1, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->surfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_3c

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->surfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    sget-object v1, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->surfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_3c

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->release()V

    :cond_3c
    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->endAndRemoveDragView(Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;)V

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->recycle()V

    return-void
.end method

.method private static final animateSurfaceToHide$lambda$18(Landroid/animation/ValueAnimator;)V
    .registers 2

    const-string v0, "$anim"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public static final animateSurfaceToPosition(Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;)Landroid/animation/AnimatorSet;
    .registers 27
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "animPara"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animateSurfaceToPosition card: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mAddingCard:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DragSurfaceAnimHelper"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->INSTANCE:Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;

    sget-object v3, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->surfaceControl:Landroid/view/SurfaceControl;

    const/16 v17, 0x0

    const-string v4, "Drag"

    if-eqz v3, :cond_2de

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v3

    if-nez v3, :cond_34

    goto/16 :goto_2de

    :cond_34
    iget-object v15, v0, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v13, v0, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mAddingCard:Landroid/view/View;

    instance-of v3, v13, Lcom/android/launcher3/card/LauncherCardView;

    const-string/jumbo v5, "null cannot be cast to non-null type com.android.launcher3.card.LauncherCardView"

    if-eqz v3, :cond_48

    invoke-static {v13, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v13

    check-cast v6, Lcom/android/launcher3/card/LauncherCardView;

    invoke-interface {v6}, Lcom/oplus/card/manager/domain/ICardView;->showLoadingIfNeed()V

    :cond_48
    invoke-virtual {v13}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    const-string/jumbo v8, "null cannot be cast to non-null type com.android.launcher3.CellLayout.LayoutParams"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-virtual {v15}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v8

    if-eqz v6, :cond_63

    invoke-virtual {v6, v13}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    :cond_63
    if-eqz v6, :cond_68

    invoke-virtual {v6, v13}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->layoutChild(Landroid/view/View;)V

    :cond_68
    const/4 v6, 0x2

    new-array v6, v6, [F

    invoke-virtual {v13}, Landroid/view/View;->getScaleX()F

    move-result v9

    iget v10, v7, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    int-to-float v10, v10

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    int-to-float v11, v11

    const/4 v12, 0x1

    int-to-float v12, v12

    sub-float/2addr v12, v9

    mul-float/2addr v11, v12

    const/4 v14, 0x2

    int-to-float v14, v14

    div-float/2addr v11, v14

    add-float/2addr v11, v10

    const/4 v10, 0x0

    aput v11, v6, v10

    iget v7, v7, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    int-to-float v7, v7

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    int-to-float v11, v11

    invoke-static {v11, v12, v14, v7}, Landroidx/constraintlayout/core/motion/utils/b;->a(FFFF)F

    move-result v7

    const/4 v11, 0x1

    aput v7, v6, v11

    sget-object v7, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v15, v7}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v7

    if-eqz v7, :cond_a0

    invoke-virtual {v15}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher3/OplusWorkspace;->setFinalTransitionTransform()V

    :cond_a0
    invoke-virtual {v13}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    const-string/jumbo v12, "null cannot be cast to non-null type android.view.View"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Landroid/view/View;

    invoke-virtual {v8, v11, v6}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[F)F

    move-result v8

    if-eqz v7, :cond_b9

    invoke-virtual {v15}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/OplusWorkspace;->resetTransitionTransform()V

    :cond_b9
    mul-float/2addr v8, v9

    aget v7, v6, v10

    const/4 v9, 0x1

    aget v11, v6, v9

    const-string v12, "animateSurfaceToPosition: coord = "

    invoke-static {v12}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget v10, v6, v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, ", "

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v6, v9

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v2, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, ", sc.height = "

    const-string v9, ", destRect.height = "

    if-eqz v3, :cond_16e

    new-instance v10, Landroid/graphics/Rect;

    invoke-static {v13, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v13

    check-cast v5, Lcom/android/launcher3/card/LauncherCardView;

    invoke-virtual {v5}, Lcom/android/launcher3/card/LauncherCardView;->getCardBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {v10, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v5, v0, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mDragSource:I

    const/high16 v12, 0x3f800000  # 1.0f

    const/4 v14, 0x2

    if-ne v5, v14, :cond_106

    move-object v5, v13

    check-cast v5, Lcom/android/launcher3/dragndrop/DraggableView;

    invoke-interface {v5, v10}, Lcom/android/launcher3/dragndrop/DraggableView;->getWorkspaceVisualDragBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v15}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v5, :cond_106

    move v8, v12

    :cond_106
    invoke-virtual {v15}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v5, :cond_118

    move-object v5, v13

    check-cast v5, Lcom/android/launcher3/card/IAreaWidget;

    invoke-interface {v5}, Lcom/android/launcher3/card/IAreaWidget;->getTranslationForCentering()Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    add-float/2addr v11, v5

    :cond_118
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v12

    sget-object v14, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->surfaceControl:Landroid/view/SurfaceControl;

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v14}, Landroid/view/SurfaceControl;->getWidth()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v5, v14

    mul-float/2addr v5, v8

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v12

    sget-object v12, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->surfaceControl:Landroid/view/SurfaceControl;

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v12}, Landroid/view/SurfaceControl;->getHeight()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v14, v12

    mul-float/2addr v14, v8

    const-string v12, "animateSurfaceToPosition: scale = "

    invoke-static {v12, v8, v9}, Lc0/a;->a(Ljava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->surfaceControl:Landroid/view/SurfaceControl;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroid/view/SurfaceControl;->getHeight()I

    move-result v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v2, v6}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v2, v10, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    mul-float/2addr v2, v8

    add-float/2addr v2, v7

    iget v4, v10, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    mul-float/2addr v8, v4

    add-float/2addr v8, v11

    const/4 v4, 0x0

    move v6, v2

    move v12, v5

    move v9, v14

    goto :goto_1d1

    :cond_16e
    const/4 v5, 0x2

    new-array v7, v5, [I

    new-array v5, v5, [F

    invoke-virtual {v15}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v18

    sget-object v21, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->surfaceControl:Landroid/view/SurfaceControl;

    iget-object v8, v0, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mCellLayout:Lcom/android/launcher3/CellLayout;

    iget-object v10, v0, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v10, v10, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v11, v0, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mTargetCell:[I

    move-object/from16 v19, v7

    move-object/from16 v20, v5

    move-object/from16 v22, v8

    move-object/from16 v23, v10

    move-object/from16 v24, v11

    invoke-virtual/range {v18 .. v24}, Lcom/android/launcher3/OplusWorkspace;->getFinalPositionForDropAnimation([I[FLandroid/view/SurfaceControl;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/model/data/ItemInfo;[I)V

    const/4 v8, 0x0

    aget v10, v7, v8

    int-to-float v10, v10

    const/4 v11, 0x1

    aget v7, v7, v11

    int-to-float v7, v7

    aget v12, v5, v8

    aget v11, v5, v11

    const-string v14, "animateSurfaceToPosition: scaleX = "

    invoke-static {v14}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget v5, v5, v8

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->surfaceControl:Landroid/view/SurfaceControl;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/view/SurfaceControl;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v11

    add-float/2addr v5, v7

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->surfaceControl:Landroid/view/SurfaceControl;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/view/SurfaceControl;->getHeight()I

    move-result v5

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v2, v5}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v4, v8

    move v6, v10

    move v9, v11

    move v8, v7

    :goto_1d1
    invoke-virtual {v15}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v2, :cond_1e1

    invoke-virtual {v15}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->windowY:I

    int-to-float v2, v2

    add-float/2addr v8, v2

    :cond_1e1
    move v7, v8

    if-eqz v3, :cond_1ea

    iget v2, v0, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mDragSource:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1ea

    const/4 v4, 0x1

    :cond_1ea
    move v2, v4

    iget v3, v0, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mCurrentX:F

    iget v4, v0, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mOriginalOffsetX:I

    int-to-float v4, v4

    sub-float v4, v3, v4

    iget v3, v0, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mCurrentY:F

    iget v5, v0, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mOriginalOffsetY:I

    int-to-float v5, v5

    sub-float v5, v3, v5

    iget-object v10, v0, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mLauncher:Lcom/android/launcher3/Launcher;

    const-string v3, "animPara.mLauncher"

    invoke-static {v10, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "launcher"

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v18, 0x0

    const/16 v16, 0x200

    const/16 v20, 0x0

    const/4 v14, 0x1

    move-object v3, v1

    move v8, v12

    move v11, v2

    move-object v12, v15

    move-object/from16 v21, v1

    move-object/from16 v25, v13

    move v1, v14

    move-wide/from16 v13, v18

    move-object/from16 v18, v15

    move/from16 v15, v16

    move-object/from16 v16, v20

    invoke-static/range {v3 .. v16}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->createSurfaceAnimator$OplusLauncher_RealmePallExportAallRelease$default(Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;FFFFFFLandroid/content/Context;ZLcom/android/launcher3/Launcher;JILjava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v3

    new-instance v4, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$AnimUpdateLister;

    invoke-direct {v4}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$AnimUpdateLister;-><init>()V

    if-eqz v2, :cond_25a

    iget-object v5, v0, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mDragView:Lcom/android/launcher3/dragndrop/DragView;

    const-string/jumbo v6, "null cannot be cast to non-null type com.android.launcher3.dragndrop.OplusDragView"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/android/launcher3/dragndrop/OplusDragView;

    sput-object v5, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->dragView:Lcom/android/launcher3/dragndrop/OplusDragView;

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v5, :cond_246

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v5

    iget v5, v5, Lcom/android/launcher3/DeviceProfile;->windowY:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$AnimUpdateLister;->setMultiScreenTop(F)V

    :cond_246
    invoke-virtual {v4, v1}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$AnimUpdateLister;->setNeedAlpha(Z)V

    new-instance v5, Lcom/android/launcher/folder/recommend/view/d;

    move-object/from16 v6, v25

    invoke-direct {v5, v6, v1}, Lcom/android/launcher/folder/recommend/view/d;-><init>(Landroid/view/View;I)V

    invoke-virtual {v4, v5}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$AnimUpdateLister;->setCompletedRunnable(Ljava/lang/Runnable;)V

    const/4 v5, 0x2

    move v7, v5

    move-object/from16 v5, v17

    move-object/from16 v8, v18

    goto :goto_271

    :cond_25a
    move-object/from16 v6, v25

    const-string v5, "addingCard"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v5, v0, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mDragSource:I

    const/4 v7, 0x2

    if-ne v5, v7, :cond_268

    move v14, v1

    goto :goto_269

    :cond_268
    const/4 v14, 0x0

    :goto_269
    move-object/from16 v8, v18

    move-object/from16 v5, v21

    invoke-virtual {v5, v6, v8, v14}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->animateSurfaceToExchange(Landroid/view/View;Lcom/android/launcher3/Launcher;Z)Landroid/animation/Animator;

    move-result-object v5

    :goto_271
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v4, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$animateSurfaceToPosition$$inlined$doOnEnd$1;

    invoke-direct {v4, v8}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$animateSurfaceToPosition$$inlined$doOnEnd$1;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    if-eqz v5, :cond_291

    new-array v7, v7, [Landroid/animation/Animator;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    aput-object v5, v7, v1

    invoke-virtual {v4, v7}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    goto :goto_295

    :cond_291
    const/4 v8, 0x0

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :goto_295
    if-eqz v2, :cond_2a8

    sget-object v1, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->dragView:Lcom/android/launcher3/dragndrop/OplusDragView;

    if-nez v1, :cond_29c

    goto :goto_29f

    :cond_29c
    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_29f
    sget-object v1, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->dragView:Lcom/android/launcher3/dragndrop/OplusDragView;

    if-nez v1, :cond_2a4

    goto :goto_2a8

    :cond_2a4
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_2a8
    :goto_2a8
    new-instance v1, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$animateSurfaceToPosition$$inlined$doOnStart$1;

    invoke-direct {v1}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$animateSurfaceToPosition$$inlined$doOnStart$1;-><init>()V

    invoke-virtual {v4, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$animateSurfaceToPosition$$inlined$doOnCancel$1;

    invoke-direct {v1, v6, v2, v0}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$animateSurfaceToPosition$$inlined$doOnCancel$1;-><init>(Landroid/view/View;ZLcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;)V

    invoke-virtual {v4, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$animateSurfaceToPosition$$inlined$doOnEnd$2;

    invoke-direct {v1, v0}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$animateSurfaceToPosition$$inlined$doOnEnd$2;-><init>(Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;)V

    invoke-virtual {v4, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, v0, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mWorkspace:Lcom/android/launcher3/Workspace;

    new-instance v1, Lcom/android/launcher3/dragndrop/j;

    invoke-direct {v1, v4}, Lcom/android/launcher3/dragndrop/j;-><init>(Landroid/animation/AnimatorSet;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    instance-of v0, v6, Lcom/android/launcher3/card/groupcard/GroupCardView;

    if-eqz v0, :cond_2d2

    move-object/from16 v17, v6

    check-cast v17, Lcom/android/launcher3/card/groupcard/GroupCardView;

    :cond_2d2
    if-eqz v17, :cond_2dd

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher3/card/groupcard/GroupCardView;->isContentEmpty()Z

    move-result v0

    if-eqz v0, :cond_2dd

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher3/card/LauncherCardView;->updateDragContent()V

    :cond_2dd
    return-object v4

    :cond_2de
    :goto_2de
    move-object v5, v1

    const-string v1, "drag surface is null or invalid."

    invoke-static {v4, v2, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v0}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->showCardViewDirectly(Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;)V

    return-object v17
.end method

.method private static final animateSurfaceToPosition$lambda$11(Landroid/animation/AnimatorSet;)V
    .registers 2

    const-string v0, "$animator"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private static final animateSurfaceToPosition$lambda$2(Landroid/view/View;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    sget-object p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->INSTANCE:Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;

    sget-object v1, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->surfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x1

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-ne v1, v2, :cond_12

    move v0, v2

    :cond_12
    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->surfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p0, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    sget-object p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->surfaceControl:Landroid/view/SurfaceControl;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->release()V

    :cond_28
    return-void
.end method

.method public static synthetic b(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->animateSurfaceToExchange$lambda$26$lambda$25(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c()V
    .registers 0

    invoke-static {}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->animateSurfaceToExchange$lambda$24()V

    return-void
.end method

.method public static synthetic createSurfaceAnimator$OplusLauncher_RealmePallExportAallRelease$default(Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;FFFFFFLandroid/content/Context;ZLcom/android/launcher3/Launcher;JILjava/lang/Object;)Landroid/animation/ValueAnimator;
    .registers 28

    move/from16 v0, p12

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_a

    const-wide/16 v0, -0x1

    move-wide v12, v0

    goto :goto_c

    :cond_a
    move-wide/from16 v12, p10

    :goto_c
    move-object v2, p0

    move v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    invoke-virtual/range {v2 .. v13}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->createSurfaceAnimator$OplusLauncher_RealmePallExportAallRelease(FFFFFFLandroid/content/Context;ZLcom/android/launcher3/Launcher;J)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d(Landroid/view/View;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->animateSurfaceToPosition$lambda$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Landroid/animation/ValueAnimator;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->animateSurfaceToHide$lambda$18(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->animateSurfaceToHide$lambda$17(Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;)V

    return-void
.end method

.method private final showCardViewDirectly(Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;)V
    .registers 3

    iget-object p0, p1, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mAddingCard:Landroid/view/View;

    instance-of p1, p0, Lcom/android/launcher3/card/LauncherCardView;

    const/4 v0, 0x0

    if-eqz p1, :cond_19

    check-cast p0, Lcom/android/launcher3/card/LauncherCardView;

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getInitAnimator()Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Landroid/animation/Animator;->end()V

    :cond_12
    invoke-virtual {p0, v0}, Lcom/android/launcher3/card/LauncherCardView;->setVisibility(I)V

    invoke-interface {p0}, Lcom/oplus/card/manager/domain/ICardView;->showLoadingIfNeed()V

    return-void

    :cond_19
    if-nez p0, :cond_1c

    goto :goto_1f

    :cond_1c
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1f
    return-void
.end method


# virtual methods
.method public final animateSurfaceToExchange(Landroid/view/View;Lcom/android/launcher3/Launcher;Z)Landroid/animation/Animator;
    .registers 8

    const-string p0, "cardView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "launcher"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "Drag"

    const-string v0, "DragSurfaceAnimHelper"

    const-string v1, "animateSurfaceToExchange."

    invoke-static {p0, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->surfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_bb

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-nez v1, :cond_22

    goto/16 :goto_bb

    :cond_22
    const/4 p0, 0x2

    if-eqz p3, :cond_4e

    new-array p0, p0, [I

    fill-array-data p0, :array_c2

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p0

    const-string p2, "animHide"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$animateSurfaceToExchange$$inlined$doOnStart$1;

    invoke-direct {p2, p1}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$animateSurfaceToExchange$$inlined$doOnStart$1;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p1, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$animateSurfaceToExchange$$inlined$doOnEnd$1;

    invoke-direct {p1}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$animateSurfaceToExchange$$inlined$doOnEnd$1;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {}, Landroid/view/Choreographer;->getFrameDelay()J

    move-result-wide p1

    const/4 p3, 0x3

    int-to-long v0, p3

    mul-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object p0

    :cond_4e
    instance-of p3, p1, Lcom/android/launcher3/card/LauncherCardView;

    if-eqz p3, :cond_5e

    move-object p3, p1

    check-cast p3, Lcom/android/launcher3/card/LauncherCardView;

    invoke-virtual {p3}, Lcom/android/launcher3/card/LauncherCardView;->getInitAnimator()Landroid/animation/Animator;

    move-result-object p3

    if-eqz p3, :cond_5e

    invoke-virtual {p3}, Landroid/animation/Animator;->end()V

    :cond_5e
    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/animation/PropertyValuesHolder;

    new-array v2, p0, [F

    fill-array-data v2, :array_ca

    const-string v3, "alpha"

    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$AnimUpdateLister;

    invoke-direct {v2}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$AnimUpdateLister;-><init>()V

    invoke-virtual {v2, v0}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$AnimUpdateLister;->setNeedAlpha(Z)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$AnimUpdateLister;->setNeedTranslation(Z)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$AnimUpdateLister;->setNeedScale(Z)V

    sget-object v3, Lcom/android/common/util/z0;->c:Lcom/android/common/util/z0;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$AnimUpdateLister;->setCompletedRunnable(Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p3, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-array p0, p0, [F

    fill-array-data p0, :array_d2

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    new-instance v1, Lcom/android/launcher3/card/b;

    invoke-direct {v1, p1, v0}, Lcom/android/launcher3/card/b;-><init>(Landroid/view/View;I)V

    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p3, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$animateSurfaceToExchange$$inlined$doOnStart$2;

    invoke-direct {p0, p2, p1}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$animateSurfaceToExchange$$inlined$doOnStart$2;-><init>(Lcom/android/launcher3/Launcher;Landroid/view/View;)V

    invoke-virtual {p3, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 p0, 0x258

    invoke-virtual {p3, p0, p1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    sget-object p0, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_7:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p3

    :cond_bb
    :goto_bb
    const-string p1, "drag surface is null or invalid."

    invoke-static {p0, v0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :array_c2
    .array-data 4
        0x1
        0x0
    .end array-data

    :array_ca
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data

    :array_d2
    .array-data 4
        0x3f4ccccd  # 0.8f
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public final animateSurfaceToHide(Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;J)V
    .registers 22

    move-object/from16 v0, p1

    const-string v1, "animPara"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animateSurfaceToHide. card: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mAddingCard:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Drag"

    const-string v3, "DragSurfaceAnimHelper"

    invoke-static {v2, v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->surfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_9a

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    xor-int/2addr v1, v4

    if-eqz v1, :cond_2f

    goto :goto_9a

    :cond_2f
    iget v1, v0, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mCurrentX:F

    iget v2, v0, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mOriginalOffsetX:I

    int-to-float v2, v2

    sub-float v7, v1, v2

    iget v1, v0, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mCurrentY:F

    iget v2, v0, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mOriginalOffsetY:I

    int-to-float v2, v2

    sub-float v8, v1, v2

    sget-object v1, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->surfaceControl:Landroid/view/SurfaceControl;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e4ccccc  # 0.19999999f

    mul-float/2addr v1, v2

    const/4 v3, 0x2

    int-to-float v3, v3

    div-float/2addr v1, v3

    add-float v9, v1, v7

    sget-object v1, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->surfaceControl:Landroid/view/SurfaceControl;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1, v2, v3, v8}, Landroidx/constraintlayout/core/motion/utils/b;->a(FFFF)F

    move-result v10

    const v11, 0x3f4ccccd  # 0.8f

    const v12, 0x3f4ccccd  # 0.8f

    iget-object v13, v0, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mLauncher:Lcom/android/launcher3/Launcher;

    const-string v1, "animPara.mLauncher"

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v14, 0x1

    iget-object v15, v0, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v6, p0

    move-wide/from16 v16, p2

    invoke-virtual/range {v6 .. v17}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->createSurfaceAnimator$OplusLauncher_RealmePallExportAallRelease(FFFFFFLandroid/content/Context;ZLcom/android/launcher3/Launcher;J)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$AnimUpdateLister;

    invoke-direct {v2}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$AnimUpdateLister;-><init>()V

    invoke-virtual {v2, v4}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$AnimUpdateLister;->setNeedAlpha(Z)V

    new-instance v3, Landroidx/core/widget/b;

    invoke-direct {v3, v0}, Landroidx/core/widget/b;-><init>(Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$AnimUpdateLister;->setCompletedRunnable(Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, v0, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mWorkspace:Lcom/android/launcher3/Workspace;

    new-instance v2, Lcom/android/launcher3/dragndrop/l;

    invoke-direct {v2, v1, v5}, Lcom/android/launcher3/dragndrop/l;-><init>(Landroid/animation/ValueAnimator;I)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_9a
    :goto_9a
    const-string v1, "animateSurfaceToHide,drag surface is null or invalid."

    invoke-static {v2, v3, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->showCardViewDirectly(Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;)V

    return-void
.end method

.method public final createSurfaceAnimator$OplusLauncher_RealmePallExportAallRelease(FFFFFFLandroid/content/Context;ZLcom/android/launcher3/Launcher;J)Landroid/animation/ValueAnimator;
    .registers 29

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p9

    move-wide/from16 v7, p10

    const-string v9, "context"

    move-object/from16 v10, p7

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "launcher"

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "createSurfaceAnimator: fromX = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, ", fromY = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, ", toX = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", toY = "

    const-string v12, ", toScaleX = "

    invoke-static {v9, v2, v11, v3, v12}, Lcom/android/launcher/folder/recommend/view/c;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, ", toScaleY = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v11, "Drag"

    const-string v12, "DragSurfaceAnimHelper"

    invoke-static {v11, v12, v9}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "scaleY"

    const-string/jumbo v11, "scaleX"

    const-string/jumbo v12, "y"

    const-string/jumbo v13, "x"

    const/4 v14, 0x2

    if-eqz p8, :cond_af

    const/4 v15, 0x5

    new-array v15, v15, [Landroid/animation/PropertyValuesHolder;

    new-array v10, v14, [F

    const/16 v16, 0x0

    aput v0, v10, v16

    const/4 v0, 0x1

    aput v2, v10, v0

    invoke-static {v13, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v15, v16

    new-array v2, v14, [F

    aput v1, v2, v16

    aput v3, v2, v0

    invoke-static {v12, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v15, v0

    new-array v1, v14, [F

    const/high16 v2, 0x3f800000  # 1.0f

    aput v2, v1, v16

    aput v4, v1, v0

    invoke-static {v11, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v15, v14

    new-array v1, v14, [F

    aput v2, v1, v16

    aput v5, v1, v0

    invoke-static {v9, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, v15, v1

    new-array v0, v14, [F

    fill-array-data v0, :array_118

    const-string v1, "alpha"

    invoke-static {v1, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, v15, v1

    invoke-static {v15}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    const/4 v1, 0x0

    goto :goto_ed

    :cond_af
    const/4 v10, 0x4

    new-array v10, v10, [Landroid/animation/PropertyValuesHolder;

    new-array v14, v14, [F

    const/4 v15, 0x0

    aput v0, v14, v15

    const/4 v0, 0x1

    aput v2, v14, v0

    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v10, v15

    const/4 v2, 0x2

    new-array v13, v2, [F

    aput v1, v13, v15

    aput v3, v13, v0

    invoke-static {v12, v13}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v10, v0

    new-array v1, v2, [F

    const/high16 v3, 0x3f800000  # 1.0f

    aput v3, v1, v15

    aput v4, v1, v0

    invoke-static {v11, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v10, v2

    new-array v1, v2, [F

    aput v3, v1, v15

    aput v5, v1, v0

    invoke-static {v9, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, v10, v1

    invoke-static {v10}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    move v1, v15

    :goto_ed
    const-wide/16 v2, -0x1

    cmp-long v2, v7, v2

    if-nez v2, :cond_102

    sget-object v2, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-static/range {p7 .. p7}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/android/launcher3/statemanager/BaseState;->getTransitionDuration(Landroid/content/Context;Z)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_105

    :cond_102
    invoke-virtual {v0, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :goto_105
    sget-object v1, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_11:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string v1, "animator"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$createSurfaceAnimator$$inlined$doOnEnd$1;

    invoke-direct {v1, v6}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$createSurfaceAnimator$$inlined$doOnEnd$1;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    :array_118
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method public final endAndRemoveDragView(Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;)V
    .registers 4

    const-string p0, "animPara"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "endAndRemoveDragView. dragView = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->dragView:Lcom/android/launcher3/dragndrop/OplusDragView;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Drag"

    const-string v1, "DragSurfaceAnimHelper"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->dragView:Lcom/android/launcher3/dragndrop/OplusDragView;

    if-eqz p0, :cond_30

    iget-object p0, p1, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object p0

    if-eqz p0, :cond_30

    sget-object p1, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->dragView:Lcom/android/launcher3/dragndrop/OplusDragView;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/OplusDragController;->onDeferredEndDrag(Lcom/android/launcher3/dragndrop/DragView;)V

    :cond_30
    const/4 p0, 0x0

    sput-object p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->dragView:Lcom/android/launcher3/dragndrop/OplusDragView;

    return-void
.end method

.method public final getAnimCornerRadius()I
    .registers 1

    sget p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->animCornerRadius:I

    return p0
.end method

.method public final getContentPadding(Lcom/android/launcher3/dragndrop/OplusDragView;)[I
    .registers 5

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragView;->getContentView()Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    check-cast p0, Landroid/widget/ImageView;

    goto :goto_12

    :cond_11
    move-object p0, v1

    :goto_12
    if-eqz p0, :cond_19

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_1a

    :cond_19
    move-object p0, v1

    :goto_1a
    instance-of v0, p0, Lcom/android/launcher3/dragndrop/SmartCardDrawable;

    if-eqz v0, :cond_21

    move-object v1, p0

    check-cast v1, Lcom/android/launcher3/dragndrop/SmartCardDrawable;

    :cond_21
    const/4 p0, 0x2

    if-eqz v1, :cond_5e

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/SmartCardDrawable;->getSmartView()Landroid/view/View;

    move-result-object v0

    const/high16 v2, 0x3f800000  # 1.0f

    if-nez v0, :cond_2d

    goto :goto_43

    :cond_2d
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/Launcher;

    if-eqz p1, :cond_43

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    if-eqz p1, :cond_43

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v2

    :cond_43
    :goto_43
    new-array p0, p0, [I

    const/4 p1, 0x0

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/SmartCardDrawable;->getCardContentRect()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    neg-int v0, v0

    aput v0, p0, p1

    const/4 p1, 0x1

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/SmartCardDrawable;->getCardContentRect()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->top:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    neg-int v0, v0

    aput v0, p0, p1

    goto :goto_63

    :cond_5e
    new-array p0, p0, [I

    fill-array-data p0, :array_64

    :goto_63
    return-object p0

    :array_64
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public final getContentWidthAndHeight(Lcom/android/launcher3/dragndrop/OplusDragView;)[F
    .registers 6

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragView;->getContentView()Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    check-cast p0, Landroid/widget/ImageView;

    goto :goto_12

    :cond_11
    move-object p0, v1

    :goto_12
    if-eqz p0, :cond_19

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_1a

    :cond_19
    move-object p0, v1

    :goto_1a
    instance-of v0, p0, Lcom/android/launcher3/dragndrop/SmartCardDrawable;

    if-eqz v0, :cond_21

    move-object v1, p0

    check-cast v1, Lcom/android/launcher3/dragndrop/SmartCardDrawable;

    :cond_21
    const/4 p0, 0x2

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_3d

    new-array p0, p0, [F

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/SmartCardDrawable;->getCardContentRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    aput v3, p0, v2

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/SmartCardDrawable;->getCardContentRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    aput v1, p0, v0

    goto :goto_4d

    :cond_3d
    new-array p0, p0, [F

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    aput v1, p0, v2

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    aput v1, p0, v0

    :goto_4d
    aget v1, p0, v2

    const/4 v3, 0x0

    cmpg-float v1, v1, v3

    if-nez v1, :cond_56

    move v1, v0

    goto :goto_57

    :cond_56
    move v1, v2

    :goto_57
    if-eqz v1, :cond_67

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    aput v1, p0, v2

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    aput p1, p0, v0

    :cond_67
    return-object p0
.end method

.method public final getDragView()Lcom/android/launcher3/dragndrop/OplusDragView;
    .registers 1

    sget-object p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->dragView:Lcom/android/launcher3/dragndrop/OplusDragView;

    return-object p0
.end method

.method public final getSurfaceControl()Landroid/view/SurfaceControl;
    .registers 1

    sget-object p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->surfaceControl:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public final getTransaction()Landroid/view/SurfaceControl$Transaction;
    .registers 2

    sget-object p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->transactionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceControl$Transaction;

    if-eqz p0, :cond_b

    return-object p0

    :cond_b
    new-instance p0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->transactionRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public final getTransactionRef()Ljava/lang/ref/WeakReference;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->transactionRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public final isSurfaceAnimRunning()Z
    .registers 1

    sget-object p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->surfaceControl:Landroid/view/SurfaceControl;

    if-eqz p0, :cond_f

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p0

    if-eqz p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public final setAnimCornerRadius(I)V
    .registers 2

    sput p1, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->animCornerRadius:I

    return-void
.end method

.method public final setDragView(Lcom/android/launcher3/dragndrop/OplusDragView;)V
    .registers 2

    sput-object p1, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->dragView:Lcom/android/launcher3/dragndrop/OplusDragView;

    return-void
.end method

.method public final setSurfaceControl(Landroid/view/SurfaceControl;)V
    .registers 2

    sput-object p1, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->surfaceControl:Landroid/view/SurfaceControl;

    return-void
.end method

.method public final setTransactionRef(Ljava/lang/ref/WeakReference;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;)V"
        }
    .end annotation

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->transactionRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final updateDragViewContent(Lcom/android/launcher3/dragndrop/SmartCardDrawable;)V
    .registers 4

    const-string p0, "drawable"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->dragView:Lcom/android/launcher3/dragndrop/OplusDragView;

    if-eqz p0, :cond_1a

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/OplusDragView;->getItemInfo()Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/SmartCardDrawable;->getViewTag()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/OplusDragView;->updateDrawable(Lcom/android/launcher3/dragndrop/SmartCardDrawable;)V

    :cond_1a
    return-void
.end method
