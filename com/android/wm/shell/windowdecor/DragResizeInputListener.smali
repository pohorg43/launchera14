.class Lcom/android/wm/shell/windowdecor/DragResizeInputListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DragResizeInputListener"


# instance fields
.field private final mCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

.field private final mChoreographer:Landroid/view/Choreographer;

.field private mCornerSize:I

.field private final mDecorationSurface:Landroid/view/SurfaceControl;

.field private final mDisplayId:I

.field private mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

.field private mDragPointerId:I

.field private final mFakeWindow:Lcom/android/internal/view/BaseIWindow;

.field private final mFocusGrantToken:Landroid/os/IBinder;

.field private final mHandler:Landroid/os/Handler;

.field private final mInputChannel:Landroid/view/InputChannel;

.field private final mInputEventReceiver:Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;

.field private final mInputManager:Landroid/hardware/input/InputManager;

.field private mLeftBottomCornerBounds:Landroid/graphics/Rect;

.field private mLeftTopCornerBounds:Landroid/graphics/Rect;

.field private mResizeHandleThickness:I

.field private mRightBottomCornerBounds:Landroid/graphics/Rect;

.field private mRightTopCornerBounds:Landroid/graphics/Rect;

.field private mTaskHeight:I

.field private mTaskWidth:I

.field private final mWindowSession:Landroid/view/IWindowSession;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/Choreographer;ILandroid/view/SurfaceControl;Lcom/android/wm/shell/windowdecor/DragPositioningCallback;)V
    .registers 28

    move-object/from16 v7, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v8

    iput-object v8, v7, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mWindowSession:Landroid/view/IWindowSession;

    const/4 v0, -0x1

    iput v0, v7, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mDragPointerId:I

    const-class v0, Landroid/hardware/input/InputManager;

    move-object/from16 v6, p1

    invoke-virtual {v6, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, v7, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mInputManager:Landroid/hardware/input/InputManager;

    move-object/from16 v0, p2

    iput-object v0, v7, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p3

    iput-object v0, v7, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mChoreographer:Landroid/view/Choreographer;

    move/from16 v0, p4

    iput v0, v7, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mDisplayId:I

    move-object/from16 v1, p5

    iput-object v1, v7, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mDecorationSurface:Landroid/view/SurfaceControl;

    new-instance v11, Lcom/android/internal/view/BaseIWindow;

    invoke-direct {v11}, Lcom/android/internal/view/BaseIWindow;-><init>()V

    iput-object v11, v7, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mFakeWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-virtual {v11, v8}, Lcom/android/internal/view/BaseIWindow;->setSession(Landroid/view/IWindowSession;)V

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, v7, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mFocusGrantToken:Landroid/os/IBinder;

    new-instance v3, Landroid/view/InputChannel;

    invoke-direct {v3}, Landroid/view/InputChannel;-><init>()V

    iput-object v3, v7, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mInputChannel:Landroid/view/InputChannel;

    const/4 v12, 0x0

    const/16 v13, 0x8

    const/high16 v14, 0x20000000

    const/4 v15, 0x0

    const/16 v16, 0x2

    const/16 v17, 0x0

    :try_start_4c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DragResizeInputListener of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Landroid/view/SurfaceControl;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v18, v2

    move-object/from16 v20, v3

    invoke-interface/range {v8 .. v20}, Landroid/view/IWindowSession;->grantInputChannel(ILandroid/view/SurfaceControl;Landroid/view/IWindow;Landroid/os/IBinder;IIIILandroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/view/InputChannel;)V
    :try_end_6c
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_6c} :catch_6d

    goto :goto_71

    :catch_6d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_71
    new-instance v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;

    iget-object v3, v7, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mInputChannel:Landroid/view/InputChannel;

    iget-object v4, v7, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mHandler:Landroid/os/Handler;

    iget-object v5, v7, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mChoreographer:Landroid/view/Choreographer;

    const/4 v8, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;-><init>(Lcom/android/wm/shell/windowdecor/DragResizeInputListener;Landroid/view/InputChannel;Landroid/os/Handler;Landroid/view/Choreographer;Lcom/android/wm/shell/windowdecor/DragResizeInputListener$1;)V

    iput-object v0, v7, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mInputEventReceiver:Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;

    move-object/from16 v1, p6

    iput-object v1, v7, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    new-instance v1, Lcom/android/wm/shell/windowdecor/DragDetector;

    invoke-direct {v1, v0}, Lcom/android/wm/shell/windowdecor/DragDetector;-><init>(Lcom/android/wm/shell/windowdecor/DragDetector$MotionEventHandler;)V

    iput-object v1, v7, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/windowdecor/DragDetector;->setTouchSlop(I)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/wm/shell/windowdecor/DragResizeInputListener;)Lcom/android/wm/shell/windowdecor/DragDetector;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/android/wm/shell/windowdecor/DragResizeInputListener;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mRightBottomCornerBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/wm/shell/windowdecor/DragResizeInputListener;)I
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mDragPointerId:I

    return p0
.end method

.method public static synthetic access$202(Lcom/android/wm/shell/windowdecor/DragResizeInputListener;I)I
    .registers 2

    iput p1, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mDragPointerId:I

    return p1
.end method

.method public static synthetic access$300(Lcom/android/wm/shell/windowdecor/DragResizeInputListener;)Lcom/android/wm/shell/windowdecor/DragPositioningCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/wm/shell/windowdecor/DragResizeInputListener;)Landroid/hardware/input/InputManager;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mInputManager:Landroid/hardware/input/InputManager;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/wm/shell/windowdecor/DragResizeInputListener;)I
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTaskWidth:I

    return p0
.end method

.method public static synthetic access$600(Lcom/android/wm/shell/windowdecor/DragResizeInputListener;)I
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTaskHeight:I

    return p0
.end method

.method public static synthetic access$700(Lcom/android/wm/shell/windowdecor/DragResizeInputListener;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mLeftTopCornerBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/wm/shell/windowdecor/DragResizeInputListener;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mLeftBottomCornerBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/wm/shell/windowdecor/DragResizeInputListener;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mRightTopCornerBounds:Landroid/graphics/Rect;

    return-object p0
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mInputEventReceiver:Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;

    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    :try_start_a
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mWindowSession:Landroid/view/IWindowSession;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mFakeWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-interface {v0, p0}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    goto :goto_16

    :catch_12
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_16
    return-void
.end method

.method public getCornersRegion()Landroid/graphics/Region;
    .registers 3

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mLeftTopCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mLeftBottomCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mRightTopCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mRightBottomCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    return-object v0
.end method

.method public setGeometry(IIIII)Z
    .registers 16

    iget v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTaskWidth:I

    const/4 v1, 0x0

    if-ne v0, p1, :cond_12

    iget v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTaskHeight:I

    if-ne v0, p2, :cond_12

    iget v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mResizeHandleThickness:I

    if-ne v0, p3, :cond_12

    iget v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mCornerSize:I

    if-ne v0, p4, :cond_12

    return v1

    :cond_12
    iput p1, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTaskWidth:I

    iput p2, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTaskHeight:I

    iput p3, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mResizeHandleThickness:I

    iput p4, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mCornerSize:I

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

    invoke-virtual {p1, p5}, Lcom/android/wm/shell/windowdecor/DragDetector;->setTouchSlop(I)V

    new-instance v9, Landroid/graphics/Region;

    invoke-direct {v9}, Landroid/graphics/Region;-><init>()V

    new-instance p1, Landroid/graphics/Rect;

    iget p2, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mResizeHandleThickness:I

    neg-int p3, p2

    neg-int p4, p2

    iget p5, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTaskWidth:I

    add-int/2addr p5, p2

    invoke-direct {p1, p3, p4, p5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v9, p1}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    new-instance p1, Landroid/graphics/Rect;

    iget p2, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mResizeHandleThickness:I

    neg-int p2, p2

    iget p3, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTaskHeight:I

    invoke-direct {p1, p2, v1, v1, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v9, p1}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    new-instance p1, Landroid/graphics/Rect;

    iget p2, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTaskWidth:I

    iget p3, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mResizeHandleThickness:I

    add-int/2addr p3, p2

    iget p4, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTaskHeight:I

    invoke-direct {p1, p2, v1, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v9, p1}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    new-instance p1, Landroid/graphics/Rect;

    iget p2, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mResizeHandleThickness:I

    neg-int p3, p2

    iget p4, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTaskHeight:I

    iget p5, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTaskWidth:I

    add-int/2addr p5, p2

    add-int/2addr p2, p4

    invoke-direct {p1, p3, p4, p5, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v9, p1}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    iget p1, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mCornerSize:I

    div-int/lit8 p1, p1, 0x2

    new-instance p2, Landroid/graphics/Rect;

    neg-int p3, p1

    invoke-direct {p2, p3, p3, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mLeftTopCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {v9, p2}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    new-instance p2, Landroid/graphics/Rect;

    iget p4, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTaskWidth:I

    sub-int p5, p4, p1

    add-int/2addr p4, p1

    invoke-direct {p2, p5, p3, p4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mRightTopCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {v9, p2}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    new-instance p2, Landroid/graphics/Rect;

    iget p4, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTaskHeight:I

    sub-int p5, p4, p1

    add-int/2addr p4, p1

    invoke-direct {p2, p3, p5, p1, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mLeftBottomCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {v9, p2}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    new-instance p2, Landroid/graphics/Rect;

    iget p3, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTaskWidth:I

    sub-int p4, p3, p1

    iget p5, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTaskHeight:I

    sub-int v0, p5, p1

    add-int/2addr p3, p1

    add-int/2addr p5, p1

    invoke-direct {p2, p4, v0, p3, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mRightBottomCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {v9, p2}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    :try_start_a1
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mWindowSession:Landroid/view/IWindowSession;

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {p1}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v3

    iget v4, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mDisplayId:I

    iget-object v5, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mDecorationSurface:Landroid/view/SurfaceControl;

    const/16 v6, 0x8

    const/high16 v7, 0x20000000

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v9}, Landroid/view/IWindowSession;->updateInputChannel(Landroid/os/IBinder;ILandroid/view/SurfaceControl;IIILandroid/graphics/Region;)V
    :try_end_b5
    .catch Landroid/os/RemoteException; {:try_start_a1 .. :try_end_b5} :catch_b6

    goto :goto_ba

    :catch_b6
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_ba
    const/4 p0, 0x1

    return p0
.end method
