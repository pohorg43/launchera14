.class public final Lcom/android/launcher3/taskbar/navbar/NavBarImageView$injectLongClickLogic$gestureDetector$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/navbar/NavBarImageView;->injectLongClickLogic(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $needEvent:I

.field public final synthetic this$0:Lcom/android/launcher3/taskbar/navbar/NavBarImageView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/navbar/NavBarImageView;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/taskbar/navbar/NavBarImageView$injectLongClickLogic$gestureDetector$1;->this$0:Lcom/android/launcher3/taskbar/navbar/NavBarImageView;

    iput p2, p0, Lcom/android/launcher3/taskbar/navbar/NavBarImageView$injectLongClickLogic$gestureDetector$1;->$needEvent:I

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 20

    move-object/from16 v0, p0

    const-string v1, "e"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/launcher3/taskbar/navbar/NavBarImageView$injectLongClickLogic$gestureDetector$1;->this$0:Lcom/android/launcher3/taskbar/navbar/NavBarImageView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/launcher3/taskbar/navbar/NavBarImageView;->setMLongPress(Z)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    iget v9, v0, Lcom/android/launcher3/taskbar/navbar/NavBarImageView$injectLongClickLogic$gestureDetector$1;->$needEvent:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v16

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x48

    const/4 v15, 0x0

    const/16 v17, 0x0

    invoke-static/range {v4 .. v17}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v1

    const-string/jumbo v4, "obtain(\n                …ull\n                    )"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    invoke-super/range {p0 .. p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 20

    move-object/from16 v0, p0

    const-string v1, "e"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "NavBarImageView"

    const-string v3, "injectLongClickLogic :onLongPress"

    invoke-static {v1, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/launcher3/taskbar/navbar/NavBarImageView$injectLongClickLogic$gestureDetector$1;->this$0:Lcom/android/launcher3/taskbar/navbar/NavBarImageView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/launcher3/taskbar/navbar/NavBarImageView;->setMLongPress(Z)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    iget v9, v0, Lcom/android/launcher3/taskbar/navbar/NavBarImageView$injectLongClickLogic$gestureDetector$1;->$needEvent:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v16

    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xc8

    const/4 v15, 0x0

    const/16 v17, 0x0

    invoke-static/range {v4 .. v17}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v0

    const-string/jumbo v1, "obtain(\n                …ull\n                    )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 2

    const-string p0, "NavBarImageView"

    const-string p1, "injectLongClickLogic :onSingleTapConfirmed"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
