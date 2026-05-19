.class public Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/DisplayInsetsController$OnInsetsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/common/DisplayImeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PerDisplay"
.end annotation


# static fields
.field public static final MSG_DISPLAY_CONFIGURATION_CHANGED:I = 0x4

.field public static final MSG_HIDE_INSETS:I = 0x1

.field public static final MSG_INSETS_CHANGED:I = 0x2

.field public static final MSG_INSETS_CONTROL_CHANGED:I = 0x3

.field public static final MSG_SHOW_INSETS:I


# instance fields
.field public mAnimateAlpha:Z

.field public mAnimation:Landroid/animation/ValueAnimator;

.field public mAnimationDirection:I

.field public final mDisplayId:I

.field public final mImeFrame:Landroid/graphics/Rect;

.field public mImeShowing:Z

.field public mImeSourceControl:Landroid/view/InsetsSourceControl;

.field public final mInsetsState:Landroid/view/InsetsState;

.field public mReStartImeAnimating:Z

.field public mRequestedVisibleTypes:I

.field public mRotatingMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Runnable;",
            ">;>;"
        }
    .end annotation
.end field

.field public mRotation:I

.field public mTempActiveControls:[Landroid/view/InsetsSourceControl;

.field public mTransitionMidPosition:Z

.field public final synthetic this$0:Lcom/android/wm/shell/common/DisplayImeController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/DisplayImeController;II)V
    .registers 7

    iput-object p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/view/InsetsState;

    invoke-direct {p1}, Landroid/view/InsetsState;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mInsetsState:Landroid/view/InsetsState;

    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mRequestedVisibleTypes:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimationDirection:I

    iput-object p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    iput v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mRotation:I

    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeShowing:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeFrame:Landroid/graphics/Rect;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimateAlpha:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mRotatingMessages:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mReStartImeAnimating:Z

    iput-boolean v1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mTransitionMidPosition:Z

    iput-object p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mTempActiveControls:[Landroid/view/InsetsSourceControl;

    iput p2, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mDisplayId:I

    iput p3, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mRotation:I

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;FFFZFFLandroid/animation/ValueAnimator;)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->lambda$startAnimation$4(FFFZFFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;ZZLandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->startAnimation(ZZLandroid/view/inputmethod/ImeTracker$Token;)V

    return-void
.end method

.method public static synthetic access$800(Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;F)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->imeTop(F)I

    move-result p0

    return p0
.end method

.method private applyVisibilityToLeash(Landroid/view/InsetsSourceControl;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    if-eqz p1, :cond_27

    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    invoke-static {v0}, Lcom/android/wm/shell/common/DisplayImeController;->access$500(Lcom/android/wm/shell/common/DisplayImeController;)Lcom/android/wm/shell/common/TransactionPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeShowing:Z

    if-eqz v1, :cond_18

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_1b

    :cond_18
    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :goto_1b
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    invoke-static {p0}, Lcom/android/wm/shell/common/DisplayImeController;->access$500(Lcom/android/wm/shell/common/DisplayImeController;)Lcom/android/wm/shell/common/TransactionPool;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    :cond_27
    return-void
.end method

.method public static synthetic b(Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;IZLandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->lambda$hideInsets$3(IZLandroid/view/inputmethod/ImeTracker$Token;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;IZLandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->lambda$showInsets$2(IZLandroid/view/inputmethod/ImeTracker$Token;)V

    return-void
.end method

.method private calcIsFloating(Landroid/view/InsetsSource;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_c

    return v1

    :cond_c
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    invoke-static {v0}, Lcom/android/wm/shell/common/DisplayImeController;->access$600(Lcom/android/wm/shell/common/DisplayImeController;)Lcom/android/wm/shell/common/DisplayController;

    move-result-object v0

    iget p0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mDisplayId:I

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/common/DisplayLayout;->navBarFrameHeight()I

    move-result p0

    if-gt p1, p0, :cond_23

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    return v1
.end method

.method public static synthetic d(Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->lambda$insetsControlChanged$1(Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;Landroid/view/InsetsState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->lambda$insetsChanged$0(Landroid/view/InsetsState;)V

    return-void
.end method

.method private imeTop(F)I
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeFrame:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    float-to-int p1, p1

    add-int/2addr p0, p1

    return p0
.end method

.method private synthetic lambda$hideInsets$3(IZLandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->hideInsets(IZLandroid/view/inputmethod/ImeTracker$Token;)V

    return-void
.end method

.method private synthetic lambda$insetsChanged$0(Landroid/view/InsetsState;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->insetsChanged(Landroid/view/InsetsState;)V

    return-void
.end method

.method private synthetic lambda$insetsControlChanged$1(Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->insetsControlChanged(Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)V

    return-void
.end method

.method private synthetic lambda$showInsets$2(IZLandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->showInsets(IZLandroid/view/inputmethod/ImeTracker$Token;)V

    return-void
.end method

.method private synthetic lambda$startAnimation$4(FFFZFFLandroid/animation/ValueAnimator;)V
    .registers 9

    invoke-virtual {p7}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Ljava/lang/Float;

    invoke-virtual {p7}, Ljava/lang/Float;->floatValue()F

    move-result p7

    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    iget-boolean v0, v0, Lcom/android/wm/shell/common/DisplayImeController;->mSplitScreenRotating:Z

    if-eqz v0, :cond_41

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->isInNormalSplitScreenMode()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-static {}, Lcom/android/wm/shell/common/DisplayImeController;->access$200()Z

    move-result p4

    if-eqz p4, :cond_3b

    const-string/jumbo p4, "onAnimationUpdate cancel startY:"

    const-string p5, ",endY:"

    const-string p6, ",x:"

    invoke-static {p4, p1, p5, p2, p6}, La0/a;->a(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ",value:"

    const-string p4, ",imeTop(value):"

    invoke-static {p1, p3, p2, p7, p4}, Lcom/android/launcher/folder/recommend/view/c;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    invoke-direct {p0, p7}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->imeTop(F)I

    move-result p2

    const-string p3, "DisplayImeController"

    invoke-static {p1, p2, p3}, Lcom/android/wm/shell/common/j;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_3b
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void

    :cond_41
    iget-object p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    invoke-static {p1}, Lcom/android/wm/shell/common/DisplayImeController;->access$500(Lcom/android/wm/shell/common/DisplayImeController;)Lcom/android/wm/shell/common/TransactionPool;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {p2}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p2

    invoke-virtual {p1, p2, p3, p7}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-boolean p2, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimateAlpha:Z

    if-nez p2, :cond_5e

    if-eqz p4, :cond_5b

    goto :goto_5e

    :cond_5b
    const/high16 p2, 0x3f800000  # 1.0f

    goto :goto_62

    :cond_5e
    :goto_5e
    sub-float p2, p7, p5

    sub-float/2addr p6, p5

    div-float/2addr p2, p6

    :goto_62
    iget-object p3, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {p3}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object p2, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    iget p3, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mDisplayId:I

    invoke-direct {p0, p7}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->imeTop(F)I

    move-result p4

    invoke-static {p2, p3, p4, p1}, Lcom/android/wm/shell/common/DisplayImeController;->access$1200(Lcom/android/wm/shell/common/DisplayImeController;IILandroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    invoke-static {p0}, Lcom/android/wm/shell/common/DisplayImeController;->access$500(Lcom/android/wm/shell/common/DisplayImeController;)Lcom/android/wm/shell/common/TransactionPool;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private setVisibleDirectly(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mInsetsState:Landroid/view/InsetsState;

    sget v1, Landroid/view/InsetsSource;->ID_IME:I

    invoke-virtual {v0, v1, p1}, Landroid/view/InsetsState;->setSourceVisible(IZ)V

    if-eqz p1, :cond_11

    iget p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mRequestedVisibleTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    or-int/2addr p1, v0

    goto :goto_19

    :cond_11
    iget p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mRequestedVisibleTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    not-int v0, v0

    and-int/2addr p1, v0

    :goto_19
    iput p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mRequestedVisibleTypes:I

    :try_start_1b
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    iget-object v0, v0, Lcom/android/wm/shell/common/DisplayImeController;->mWmService:Landroid/view/IWindowManager;

    iget p0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mDisplayId:I

    invoke-interface {v0, p0, p1}, Landroid/view/IWindowManager;->updateDisplayWindowRequestedVisibleTypes(II)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_24} :catch_24

    :catch_24
    return-void
.end method

.method private startAnimation(ZZLandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 24

    move-object/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v8, p3

    iget-object v0, v10, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mInsetsState:Landroid/view/InsetsState;

    sget v1, Landroid/view/InsetsSource;->ID_IME:I

    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v0

    const/16 v9, 0x1a

    if-eqz v0, :cond_1e6

    iget-object v1, v10, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    if-nez v1, :cond_18

    goto/16 :goto_1e6

    :cond_18
    invoke-virtual {v0}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v10, v0}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->calcIsFloating(Landroid/view/InsetsSource;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_28

    if-eqz v11, :cond_28

    move v12, v3

    goto :goto_29

    :cond_28
    move v12, v2

    :goto_29
    new-instance v0, Landroid/graphics/Rect;

    iget-object v4, v10, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeFrame:Landroid/graphics/Rect;

    invoke-direct {v0, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    if-eqz v12, :cond_53

    iget-object v4, v10, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, v10, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    invoke-static {v1}, Lcom/android/wm/shell/common/DisplayImeController;->access$600(Lcom/android/wm/shell/common/DisplayImeController;)Lcom/android/wm/shell/common/DisplayController;

    move-result-object v1

    iget v4, v10, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mDisplayId:I

    invoke-virtual {v1, v4}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->density()F

    move-result v1

    const/high16 v4, -0x3d600000  # -80.0f

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iget-object v4, v10, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeFrame:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v1

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_5e

    :cond_53
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-eqz v4, :cond_5e

    iget-object v4, v10, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_5e
    :goto_5e
    iget-object v1, v10, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "DisplayImeController"

    if-eqz v0, :cond_7e

    iget-boolean v0, v10, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeShowing:Z

    if-ne v0, v11, :cond_7e

    if-nez p2, :cond_7e

    iget-boolean v0, v10, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mReStartImeAnimating:Z

    if-nez v0, :cond_7e

    invoke-static {}, Lcom/android/wm/shell/common/DisplayImeController;->access$200()Z

    move-result v0

    if-eqz v0, :cond_7d

    const-string v0, "All same and do not force restart. Do not need start animation"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7d
    return-void

    :cond_7e
    invoke-static {}, Lcom/android/wm/shell/common/DisplayImeController;->access$200()Z

    move-result v0

    const/4 v4, 0x2

    if-eqz v0, :cond_bf

    const-string v0, "Run starImetAnim  show:"

    const-string v5, "  was:"

    invoke-static {v0, v11, v5}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, v10, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimationDirection:I

    if-ne v5, v3, :cond_94

    const-string v5, "SHOW"

    goto :goto_9b

    :cond_94
    if-ne v5, v4, :cond_99

    const-string v5, "HIDE"

    goto :goto_9b

    :cond_99
    const-string v5, "NONE"

    :goto_9b
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",mImeFrame:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v10, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ",isInNormalSplitScreenMode:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oplus/splitscreen/SplitToggleHelper;->isInNormalSplitScreenMode()Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_bf
    if-nez p2, :cond_c7

    iget v0, v10, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimationDirection:I

    if-ne v0, v3, :cond_c7

    if-nez v11, :cond_cd

    :cond_c7
    iget v0, v10, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimationDirection:I

    if-ne v0, v4, :cond_d5

    if-nez v11, :cond_d5

    :cond_cd
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    invoke-interface {v0, v8, v9}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    return-void

    :cond_d5
    if-eqz v11, :cond_e0

    iget-object v0, v10, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    invoke-static {v0}, Lcom/android/wm/shell/common/DisplayImeController;->access$700(Lcom/android/wm/shell/common/DisplayImeController;)Z

    move-result v0

    if-eqz v0, :cond_e0

    return-void

    :cond_e0
    const/4 v0, 0x0

    iget-object v1, v10, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_100

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_f9

    iget-object v0, v10, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    move v1, v3

    goto :goto_fa

    :cond_f9
    move v1, v2

    :goto_fa
    iget-object v5, v10, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_101

    :cond_100
    move v1, v2

    :goto_101
    iget-object v5, v10, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v5}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v13, v5

    iget-object v5, v10, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v5}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v14, v5

    iget-object v5, v10, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    add-float v15, v13, v5

    if-eqz v11, :cond_121

    move/from16 v16, v15

    goto :goto_123

    :cond_121
    move/from16 v16, v13

    :goto_123
    if-eqz v11, :cond_128

    move/from16 v17, v13

    goto :goto_12a

    :cond_128
    move/from16 v17, v15

    :goto_12a
    iget v5, v10, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimationDirection:I

    if-nez v5, :cond_13c

    iget-boolean v5, v10, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeShowing:Z

    if-eqz v5, :cond_13c

    if-eqz v11, :cond_13c

    iget-boolean v5, v10, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mReStartImeAnimating:Z

    if-nez v5, :cond_13c

    move/from16 v18, v3

    move v0, v13

    goto :goto_13e

    :cond_13c
    move/from16 v18, v1

    :goto_13e
    if-eqz v11, :cond_142

    move v1, v3

    goto :goto_143

    :cond_142
    move v1, v4

    :goto_143
    iput v1, v10, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimationDirection:I

    invoke-direct/range {p0 .. p1}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->updateImeVisibility(Z)V

    new-array v1, v4, [F

    aput v16, v1, v2

    aput v17, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v10, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    iget-object v2, v10, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    iget-boolean v2, v2, Lcom/android/wm/shell/common/DisplayImeController;->mSplitScreenRotating:Z

    if-eqz v2, :cond_160

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_16a

    :cond_160
    if-eqz v11, :cond_165

    const-wide/16 v2, 0x113

    goto :goto_167

    :cond_165
    const-wide/16 v2, 0x154

    :goto_167
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :goto_16a
    if-eqz v18, :cond_176

    iget-object v1, v10, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    sub-float v0, v0, v16

    sub-float v2, v17, v16

    div-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    :cond_176
    iget-object v7, v10, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/android/wm/shell/common/h;

    move-object v0, v6

    move-object/from16 v1, p0

    move/from16 v2, v16

    move/from16 v3, v17

    move v4, v14

    move v5, v12

    move-object v9, v6

    move v6, v15

    move/from16 v19, v12

    move-object v12, v7

    move v7, v13

    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/common/h;-><init>(Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;FFFZFF)V

    invoke-virtual {v12, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, v10, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    if-eqz v11, :cond_1a9

    if-eqz v18, :cond_1a9

    const/high16 v1, 0x3f800000  # 1.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3c23d70a  # 0.01f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1a9

    const/4 v0, 0x1

    goto :goto_1aa

    :cond_1a9
    const/4 v0, 0x0

    :goto_1aa
    move v4, v0

    iget-object v0, v10, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/wm/shell/common/DisplayImeController;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-interface {v0, v8, v1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    iget-object v12, v10, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    new-instance v9, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move v3, v14

    move v5, v13

    move/from16 v6, v16

    move v7, v15

    move/from16 v8, v19

    move-object v13, v9

    move/from16 v9, v17

    invoke-direct/range {v0 .. v9}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;-><init>(Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;Landroid/view/inputmethod/ImeTracker$Token;FZFFFZF)V

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-nez v11, :cond_1da

    const/4 v0, 0x0

    invoke-direct {v10, v0}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->setVisibleDirectly(Z)V

    :cond_1da
    iget-object v0, v10, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    if-eqz v11, :cond_1e5

    const/4 v0, 0x1

    invoke-direct {v10, v0}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->setVisibleDirectly(Z)V

    :cond_1e5
    return-void

    :cond_1e6
    :goto_1e6
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-interface {v0, v8, v1}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    return-void
.end method

.method private updateImeVisibility(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeShowing:Z

    if-eq v0, p1, :cond_d

    iput-boolean p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeShowing:Z

    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    iget p0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mDisplayId:I

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/common/DisplayImeController;->access$1100(Lcom/android/wm/shell/common/DisplayImeController;IZ)V

    :cond_d
    return-void
.end method


# virtual methods
.method public getImeSourceControl()Landroid/view/InsetsSourceControl;
    .registers 1
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x2
    .end annotation

    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    return-object p0
.end method

.method public hideInsets(IZLandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 14

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    and-int/2addr v0, p1

    if-nez v0, :cond_8

    return-void

    :cond_8
    invoke-static {}, Lcom/android/wm/shell/common/DisplayImeController;->access$200()Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "Got hideInsets for ime, mSplitScreenRotating="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    iget-boolean v1, v1, Lcom/android/wm/shell/common/DisplayImeController;->mSplitScreenRotating:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayImeController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    iget-boolean v0, v0, Lcom/android/wm/shell/common/DisplayImeController;->mSplitScreenRotating:Z

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mRotatingMessages:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v9, Lcom/android/wm/shell/common/i;

    const/4 v8, 0x0

    move-object v3, v9

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/wm/shell/common/i;-><init>(Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;IZLandroid/view/inputmethod/ImeTracker$Token;I)V

    invoke-direct {v1, v2, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_45
    const/4 p1, 0x0

    invoke-direct {p0, p1, p1, p3}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->startAnimation(ZZLandroid/view/inputmethod/ImeTracker$Token;)V

    return-void
.end method

.method public insetsChanged(Landroid/view/InsetsState;)V
    .registers 16

    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v0, p1}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    iget-boolean v0, v0, Lcom/android/wm/shell/common/DisplayImeController;->mSplitScreenRotating:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mRotatingMessages:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/shared/navigationbar/a;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/shared/navigationbar/a;-><init>(Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;Landroid/view/InsetsState;)V

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_24
    iget-boolean v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeShowing:Z

    sget v1, Landroid/view/InsetsSource;->ID_IME:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/InsetsState;->isSourceOrDefaultVisible(II)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->updateImeVisibility(Z)V

    sget v1, Landroid/view/InsetsSource;->ID_IME:I

    invoke-virtual {p1, v1}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_41

    invoke-virtual {v1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v3

    goto :goto_42

    :cond_41
    move-object v3, v2

    :goto_42
    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v1, :cond_4e

    invoke-virtual {v1}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_4e

    move v12, v10

    goto :goto_4f

    :cond_4e
    move v12, v11

    :goto_4f
    iget-object v4, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mInsetsState:Landroid/view/InsetsState;

    sget v5, Landroid/view/InsetsSource;->ID_IME:I

    invoke-virtual {v4, v5}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v4

    if-eqz v4, :cond_5f

    invoke-virtual {v4}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v5

    move-object v13, v5

    goto :goto_60

    :cond_5f
    move-object v13, v2

    :goto_60
    if-eqz v1, :cond_7e

    if-eqz v4, :cond_7e

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v5

    invoke-virtual {v1}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v6

    invoke-virtual {v4}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v7

    invoke-direct {p0, v1}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->calcIsFloating(Landroid/view/InsetsSource;)Z

    move-result v9

    move-object v4, v5

    move v5, v6

    move v6, v7

    move-object v7, v3

    move-object v8, v13

    invoke-virtual/range {v4 .. v9}, Lcom/oplus/splitscreen/SplitToggleHelper;->needRestSplitImeBound(ZZLandroid/graphics/Rect;Landroid/graphics/Rect;Z)Z

    move-result v1

    goto :goto_7f

    :cond_7e
    move v1, v11

    :goto_7f
    iget-object v4, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v4, p1, v10}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;Z)V

    iget-boolean p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mReStartImeAnimating:Z

    if-eqz p1, :cond_90

    iget-boolean p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeShowing:Z

    if-eq p1, v0, :cond_db

    invoke-direct {p0, p1, v10, v2}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->startAnimation(ZZLandroid/view/inputmethod/ImeTracker$Token;)V

    goto :goto_db

    :cond_90
    iget-boolean p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeShowing:Z

    const-string v4, "DisplayImeController"

    if-eqz p1, :cond_af

    invoke-static {v13, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_af

    if-eqz v12, :cond_af

    invoke-static {}, Lcom/android/wm/shell/common/DisplayImeController;->access$200()Z

    move-result p1

    if-eqz p1, :cond_a9

    const-string p1, "insetsChanged when IME showing, restart animation"

    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a9
    iget-boolean p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeShowing:Z

    invoke-direct {p0, p1, v10, v2}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->startAnimation(ZZLandroid/view/inputmethod/ImeTracker$Token;)V

    goto :goto_db

    :cond_af
    if-eqz v1, :cond_c0

    invoke-static {}, Lcom/android/wm/shell/common/DisplayImeController;->access$200()Z

    move-result p1

    if-eqz p1, :cond_bc

    const-string p1, "insetsChanged when IME invisible, start animation"

    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_bc
    invoke-direct {p0, v11, v11, v2}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->startAnimation(ZZLandroid/view/inputmethod/ImeTracker$Token;)V

    goto :goto_db

    :cond_c0
    iget-object p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_db

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/splitscreen/SplitToggleHelper;->isLandScape()Z

    move-result p1

    if-eqz p1, :cond_db

    iget-boolean p0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeShowing:Z

    if-nez p0, :cond_db

    if-eqz v0, :cond_db

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->hideImeDimLayerWhenRemoveImeSurface()V

    :cond_db
    :goto_db
    return-void
.end method

.method public insetsControlChanged(Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)V
    .registers 10
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p2, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mTempActiveControls:[Landroid/view/InsetsSourceControl;

    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    iget-boolean v0, v0, Lcom/android/wm/shell/common/DisplayImeController;->mSplitScreenRotating:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mRotatingMessages:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/wm/shell/common/m;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/wm/shell/common/m;-><init>(Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)V

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1d
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->insetsChanged(Landroid/view/InsetsState;)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    if-eqz p2, :cond_3c

    array-length v1, p2

    move v2, p1

    move-object v3, v0

    :goto_27
    if-ge v2, v1, :cond_3d

    aget-object v4, p2, v2

    if-nez v4, :cond_2e

    goto :goto_39

    :cond_2e
    invoke-virtual {v4}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v5

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v6

    if-ne v5, v6, :cond_39

    move-object v3, v4

    :cond_39
    :goto_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_3c
    move-object v3, v0

    :cond_3d
    iget-object p2, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    const/4 v1, 0x1

    if-eqz p2, :cond_44

    move p2, v1

    goto :goto_45

    :cond_44
    move p2, p1

    :goto_45
    if-eqz v3, :cond_48

    move p1, v1

    :cond_48
    if-eq p2, p1, :cond_51

    iget-object v2, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    iget v4, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mDisplayId:I

    invoke-static {v2, v4, p1}, Lcom/android/wm/shell/common/DisplayImeController;->access$300(Lcom/android/wm/shell/common/DisplayImeController;IZ)V

    :cond_51
    if-eqz p1, :cond_a0

    iget-object p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_74

    if-eqz p2, :cond_60

    iget-object p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {p1}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    move-result-object p1

    goto :goto_61

    :cond_60
    move-object p1, v0

    :goto_61
    invoke-virtual {v3}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    if-eqz p1, :cond_9a

    iput-object v3, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    iget-boolean p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeShowing:Z

    invoke-direct {p0, p1, v1, v0}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->startAnimation(ZZLandroid/view/inputmethod/ImeTracker$Token;)V

    goto :goto_9a

    :cond_74
    iget-object p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    invoke-static {p1, v3}, Lcom/android/wm/shell/common/DisplayImeController;->access$400(Landroid/view/InsetsSourceControl;Landroid/view/InsetsSourceControl;)Z

    move-result p1

    if-nez p1, :cond_7f

    invoke-direct {p0, v3}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->applyVisibilityToLeash(Landroid/view/InsetsSourceControl;)V

    :cond_7f
    iget-boolean p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeShowing:Z

    if-nez p1, :cond_8f

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/splitscreen/SplitToggleHelper;->hideImeDimLayerWhenRemoveImeSurface()V

    iget-object p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/DisplayImeController;->removeImeSurface()V

    :cond_8f
    if-eqz p2, :cond_9a

    iget-object p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    if-eq p1, v3, :cond_9a

    sget-object p2, Lcom/android/launcher/l;->c:Lcom/android/launcher/l;

    invoke-virtual {p1, p2}, Landroid/view/InsetsSourceControl;->release(Ljava/util/function/Consumer;)V

    :cond_9a
    :goto_9a
    iget-object p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    if-eq p1, v3, :cond_a0

    iput-object v3, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    :cond_a0
    return-void
.end method

.method public reStartImeAnimation()V
    .registers 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mReStartImeAnimating:Z

    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mRotatingMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_a
    const/4 v2, 0x0

    if-ltz v1, :cond_40

    iget-object v3, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mRotatingMessages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v0, :cond_2d

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_2a

    goto :goto_2d

    :cond_2a
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    :cond_2d
    :goto_2d
    iget-object v1, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_39

    move v1, v0

    goto :goto_3a

    :cond_39
    move v1, v2

    :goto_3a
    iget-object v4, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mRotatingMessages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_41

    :cond_40
    move v1, v2

    :goto_41
    if-eqz v1, :cond_50

    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mTempActiveControls:[Landroid/view/InsetsSourceControl;

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->updateImeSourceControl([Landroid/view/InsetsSourceControl;)V

    iget-boolean v1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mTransitionMidPosition:Z

    xor-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->startAnimation(ZZLandroid/view/inputmethod/ImeTracker$Token;)V

    goto :goto_a8

    :cond_50
    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mRotatingMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_57
    if-ltz v1, :cond_77

    iget-object v3, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mRotatingMessages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_74

    iget-object v1, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_77

    :cond_74
    add-int/lit8 v1, v1, -0x1

    goto :goto_57

    :cond_77
    :goto_77
    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mRotatingMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_7e
    if-ltz v1, :cond_a8

    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mRotatingMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_a1

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_9e

    goto :goto_a1

    :cond_9e
    add-int/lit8 v1, v1, -0x1

    goto :goto_7e

    :cond_a1
    :goto_a1
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_a8
    :goto_a8
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mRotatingMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-boolean v2, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mReStartImeAnimating:Z

    return-void
.end method

.method public register()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    invoke-static {v0}, Lcom/android/wm/shell/common/DisplayImeController;->access$100(Lcom/android/wm/shell/common/DisplayImeController;)Lcom/android/wm/shell/common/DisplayInsetsController;

    move-result-object v0

    iget v1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mDisplayId:I

    invoke-virtual {v0, v1, p0}, Lcom/android/wm/shell/common/DisplayInsetsController;->addInsetsChangedListener(ILcom/android/wm/shell/common/DisplayInsetsController$OnInsetsChangedListener;)V

    return-void
.end method

.method public setTransitionMidPosition(Z)V
    .registers 5

    iput-boolean p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mTransitionMidPosition:Z

    iget-boolean p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeShowing:Z

    if-eqz p1, :cond_58

    iget-object p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    if-eqz p1, :cond_58

    invoke-virtual {p1}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    if-eqz p1, :cond_58

    iget-object p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {p1}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p1

    if-eqz p1, :cond_58

    iget-boolean p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mTransitionMidPosition:Z

    if-eqz p1, :cond_58

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeShowing:Z

    iget-object p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    invoke-static {p1}, Lcom/android/wm/shell/common/DisplayImeController;->access$500(Lcom/android/wm/shell/common/DisplayImeController;)Lcom/android/wm/shell/common/TransactionPool;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v2}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {p0}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_58
    return-void
.end method

.method public showInsets(IZLandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 14

    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mInsetsState:Landroid/view/InsetsState;

    sget v1, Landroid/view/InsetsSource;->ID_IME:I

    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v0

    if-eqz v0, :cond_60

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int/2addr v1, p1

    if-nez v1, :cond_12

    goto :goto_60

    :cond_12
    invoke-static {}, Lcom/android/wm/shell/common/DisplayImeController;->access$200()Z

    move-result v1

    if-eqz v1, :cond_2e

    const-string v1, "Got showInsets for ime, mSplitScreenRotating="

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    iget-boolean v2, v2, Lcom/android/wm/shell/common/DisplayImeController;->mSplitScreenRotating:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DisplayImeController"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    iget-boolean v1, v1, Lcom/android/wm/shell/common/DisplayImeController;->mSplitScreenRotating:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_4f

    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mRotatingMessages:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v9, Lcom/android/wm/shell/common/i;

    const/4 v8, 0x1

    move-object v3, v9

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/wm/shell/common/i;-><init>(Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;IZLandroid/view/inputmethod/ImeTracker$Token;I)V

    invoke-direct {v1, v2, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_4f
    invoke-direct {p0, v0}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->calcIsFloating(Landroid/view/InsetsSource;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_5d

    invoke-virtual {v0}, Landroid/view/InsetsSource;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_5d

    move v2, p2

    :cond_5d
    invoke-direct {p0, p2, v2, p3}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->startAnimation(ZZLandroid/view/inputmethod/ImeTracker$Token;)V

    :cond_60
    :goto_60
    return-void
.end method

.method public topFocusedWindowChanged(Landroid/content/ComponentName;I)V
    .registers 3

    return-void
.end method

.method public unregister()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    invoke-static {v0}, Lcom/android/wm/shell/common/DisplayImeController;->access$100(Lcom/android/wm/shell/common/DisplayImeController;)Lcom/android/wm/shell/common/DisplayInsetsController;

    move-result-object v0

    iget v1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mDisplayId:I

    invoke-virtual {v0, v1, p0}, Lcom/android/wm/shell/common/DisplayInsetsController;->removeInsetsChangedListener(ILcom/android/wm/shell/common/DisplayInsetsController$OnInsetsChangedListener;)V

    return-void
.end method

.method public updateImeSourceControl([Landroid/view/InsetsSourceControl;)V
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_1a

    array-length v1, p1

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_1a

    aget-object v3, p1, v2

    if-nez v3, :cond_c

    goto :goto_17

    :cond_c
    invoke-virtual {v3}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v4

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v5

    if-ne v4, v5, :cond_17

    move-object v0, v3

    :cond_17
    :goto_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_1a
    if-eqz v0, :cond_39

    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    invoke-static {}, Lcom/android/wm/shell/common/DisplayImeController;->access$200()Z

    move-result p1

    if-eqz p1, :cond_39

    const-string/jumbo p1, "updateImeSourceControl mImeSourceControl: "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DisplayImeController"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    return-void
.end method
