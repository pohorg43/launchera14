.class public final Lcom/android/launcher3/taskbar/navbar/NavBarImageView;
.super Landroid/widget/ImageView;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/navbar/NavBarImageView$Companion;
    }
.end annotation


# static fields
.field public static final BUTTON_BACK:I = 0x1

.field public static final BUTTON_HOME:I = 0x2

.field public static final BUTTON_RECENTS:I = 0x4

.field public static final Companion:Lcom/android/launcher3/taskbar/navbar/NavBarImageView$Companion;

.field public static final INVALIDATE_CODE:I = -0x1

.field public static final TAG:Ljava/lang/String; = "NavBarImageView"


# instance fields
.field private mLongPress:Z

.field private mNavButtonController:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

.field private mType:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/taskbar/navbar/NavBarImageView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/navbar/NavBarImageView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/taskbar/navbar/NavBarImageView;->Companion:Lcom/android/launcher3/taskbar/navbar/NavBarImageView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a(Landroid/view/GestureDetector;Lcom/android/launcher3/taskbar/navbar/NavBarImageView;ILandroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/android/launcher3/taskbar/navbar/NavBarImageView;->injectLongClickLogic$lambda$0(Landroid/view/GestureDetector;Lcom/android/launcher3/taskbar/navbar/NavBarImageView;ILandroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private static final injectLongClickLogic$lambda$0(Landroid/view/GestureDetector;Lcom/android/launcher3/taskbar/navbar/NavBarImageView;ILandroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    const-string v4, "$gestureDetector"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "this$0"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$button"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/custom/CustomizeRestrictionManager;->isCustomizeNavigationBarDisabled()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_20

    goto :goto_6e

    :cond_20
    invoke-virtual {v0, v3}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual/range {p5 .. p5}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v4, 0x3

    if-eq v0, v5, :cond_30

    invoke-virtual/range {p5 .. p5}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_6a

    :cond_30
    const/16 v0, 0x48

    invoke-virtual/range {p5 .. p5}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-eq v5, v4, :cond_3c

    iget-boolean v4, v1, Lcom/android/launcher3/taskbar/navbar/NavBarImageView;->mLongPress:Z

    if-eqz v4, :cond_3e

    :cond_3c
    const/16 v0, 0x68

    :cond_3e
    move v14, v0

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/launcher3/taskbar/navbar/NavBarImageView;->mLongPress:Z

    invoke-virtual/range {p5 .. p5}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual/range {p5 .. p5}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {p5 .. p5}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v12

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v9, p2

    invoke-static/range {v4 .. v17}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v1

    const-string/jumbo v4, "obtain(\n                …ull\n                    )"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    :cond_6a
    invoke-virtual {v2, v3}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :goto_6e
    return v5
.end method


# virtual methods
.method public final getKeyCode(I)I
    .registers 3

    const/4 p0, 0x1

    const/4 v0, 0x4

    if-eq p1, p0, :cond_f

    const/4 p0, 0x2

    if-eq p1, p0, :cond_e

    if-eq p1, v0, :cond_b

    const/4 v0, -0x1

    goto :goto_f

    :cond_b
    const/16 v0, 0xbb

    goto :goto_f

    :cond_e
    const/4 v0, 0x3

    :cond_f
    :goto_f
    return v0
.end method

.method public final getMLongPress()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/navbar/NavBarImageView;->mLongPress:Z

    return p0
.end method

.method public final getMNavButtonController()Lcom/android/launcher3/taskbar/TaskbarNavButtonController;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/navbar/NavBarImageView;->mNavButtonController:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

    return-object p0
.end method

.method public final getMType()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/taskbar/navbar/NavBarImageView;->mType:I

    return p0
.end method

.method public final init(Lcom/android/launcher3/taskbar/TaskbarNavButtonController;I)V
    .registers 4

    const-string/jumbo v0, "navButtonController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/navbar/NavBarImageView;->mNavButtonController:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

    iput p2, p0, Lcom/android/launcher3/taskbar/navbar/NavBarImageView;->mType:I

    invoke-virtual {p0, p2}, Lcom/android/launcher3/taskbar/navbar/NavBarImageView;->getKeyCode(I)I

    move-result p1

    invoke-virtual {p0, p0, p1}, Lcom/android/launcher3/taskbar/navbar/NavBarImageView;->injectLongClickLogic(Landroid/view/View;I)V

    return-void
.end method

.method public final injectLongClickLogic(Landroid/view/View;I)V
    .registers 6

    const-string v0, "button"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/launcher3/taskbar/navbar/NavBarImageView$injectLongClickLogic$gestureDetector$1;

    invoke-direct {v2, p0, p2}, Lcom/android/launcher3/taskbar/navbar/NavBarImageView$injectLongClickLogic$gestureDetector$1;-><init>(Lcom/android/launcher3/taskbar/navbar/NavBarImageView;I)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    new-instance v1, Lcom/android/launcher3/taskbar/navbar/a;

    invoke-direct {v1, v0, p0, p2, p1}, Lcom/android/launcher3/taskbar/navbar/a;-><init>(Landroid/view/GestureDetector;Lcom/android/launcher3/taskbar/navbar/NavBarImageView;ILandroid/view/View;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public performClick()Z
    .registers 3

    const-string/jumbo v0, "performClick"

    const-string v1, " test click--->"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->isAccessibilityFocused()Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string v1, " mNavClickListener?.onNavButtonClick()"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/navbar/NavBarImageView;->mNavButtonController:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

    if-eqz v0, :cond_1c

    iget v1, p0, Lcom/android/launcher3/taskbar/navbar/NavBarImageView;->mType:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->onButtonClick(I)V

    :cond_1c
    iget v0, p0, Lcom/android/launcher3/taskbar/navbar/NavBarImageView;->mType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_24

    const/4 v1, 0x1

    if-ne v0, v1, :cond_28

    :cond_24
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->playSoundEffect(I)V

    :cond_28
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result p0

    return p0
.end method

.method public final setMLongPress(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/navbar/NavBarImageView;->mLongPress:Z

    return-void
.end method

.method public final setMNavButtonController(Lcom/android/launcher3/taskbar/TaskbarNavButtonController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/navbar/NavBarImageView;->mNavButtonController:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

    return-void
.end method

.method public final setMType(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/taskbar/navbar/NavBarImageView;->mType:I

    return-void
.end method
