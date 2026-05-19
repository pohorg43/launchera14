.class public final Lcom/android/launcher3/taskbar/TaskbarTouchHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final EDGE_GESTURE:I = 0x200

.field public static final INSTANCE:Lcom/android/launcher3/taskbar/TaskbarTouchHelper;

.field private static forceNotStartDragAndDrop:Z

.field private static forceUseUnstashedTouchableRegion:Z

.field private static hasDragAndDropEnable:Z

.field private static isStillInTouch:Z

.field private static isTouchFromGesture:Z

.field private static final lastRawPoint:Landroid/graphics/PointF;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarTouchHelper;

    invoke-direct {v0}, Lcom/android/launcher3/taskbar/TaskbarTouchHelper;-><init>()V

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarTouchHelper;->INSTANCE:Lcom/android/launcher3/taskbar/TaskbarTouchHelper;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarTouchHelper;->lastRawPoint:Landroid/graphics/PointF;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/folder/Folder;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarTouchHelper;->closeFloatingFolderDelay$lambda$0(Lcom/android/launcher3/folder/Folder;)V

    return-void
.end method

.method private final closeFloatingFolderDelay(Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;Lcom/android/launcher3/folder/Folder;)V
    .registers 5

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_1a

    invoke-static {p2}, Lcom/android/launcher3/taskbar/TaskbarUtils;->isTaskbarFolderClosing(Lcom/android/launcher3/folder/Folder;)Z

    move-result p0

    if-nez p0, :cond_1a

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance p1, Lcom/android/launcher3/pullup/controller/a;

    invoke-direct {p1, p2}, Lcom/android/launcher3/pullup/controller/a;-><init>(Lcom/android/launcher3/folder/Folder;)V

    const-wide/16 v0, 0x96

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1a
    return-void
.end method

.method private static final closeFloatingFolderDelay$lambda$0(Lcom/android/launcher3/folder/Folder;)V
    .registers 2

    const-string v0, "$abstractFloatingView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->isTaskbarFolderClosing(Lcom/android/launcher3/folder/Folder;)Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    :cond_f
    return-void
.end method

.method public static final getForceNotStartDragAndDrop()Z
    .registers 1

    sget-boolean v0, Lcom/android/launcher3/taskbar/TaskbarTouchHelper;->forceNotStartDragAndDrop:Z

    return v0
.end method

.method public static synthetic getForceNotStartDragAndDrop$annotations()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getForceUseUnstashedTouchableRegion()Z
    .registers 1

    sget-boolean v0, Lcom/android/launcher3/taskbar/TaskbarTouchHelper;->forceUseUnstashedTouchableRegion:Z

    return v0
.end method

.method public static synthetic getForceUseUnstashedTouchableRegion$annotations()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getHasDragAndDropEnable()Z
    .registers 1

    sget-boolean v0, Lcom/android/launcher3/taskbar/TaskbarTouchHelper;->hasDragAndDropEnable:Z

    return v0
.end method

.method public static synthetic getHasDragAndDropEnable$annotations()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getLastRawPoint()Landroid/graphics/PointF;
    .registers 1

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarTouchHelper;->lastRawPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method public static synthetic getLastRawPoint$annotations()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final interceptDispatchTouchEvent(Landroid/view/MotionEvent;Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;Lcom/android/launcher3/views/ActivityContext;)Z
    .registers 11
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "ev"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dragLayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x20001

    invoke-static {p2, v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenViewWithType(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_5f

    invoke-static {v0, v1, v1, p0, p1}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->isEventOverTaskbarTypeItems(ZZZLandroid/view/MotionEvent;Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;)Z

    move-result v2

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/navbar/TaskbarNavbarUtils;->isEventOverNavContainer(Landroid/view/MotionEvent;Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;)Z

    move-result v3

    instance-of v4, p2, Lcom/android/launcher3/folder/Folder;

    const/16 v5, 0xcc

    if-eqz v4, :cond_52

    move-object v4, p2

    check-cast v4, Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/Folder;->getFolderIcon()Lcom/android/launcher3/folder/FolderIcon;

    move-result-object v6

    invoke-virtual {p1, v6, p0}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v6

    invoke-virtual {p1, p2, p0}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v7

    invoke-static {v5, p0, p1}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->isEventOverTaskbarSubscribeItem(ILandroid/view/MotionEvent;Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;)Z

    move-result v5

    if-nez v6, :cond_4e

    if-nez v7, :cond_46

    if-nez v2, :cond_46

    if-nez v3, :cond_46

    if-nez v5, :cond_46

    goto :goto_4e

    :cond_46
    if-eqz v5, :cond_5f

    sget-object p2, Lcom/android/launcher3/taskbar/TaskbarTouchHelper;->INSTANCE:Lcom/android/launcher3/taskbar/TaskbarTouchHelper;

    invoke-direct {p2, p1, v4}, Lcom/android/launcher3/taskbar/TaskbarTouchHelper;->closeFloatingFolderDelay(Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;Lcom/android/launcher3/folder/Folder;)V

    goto :goto_5f

    :cond_4e
    :goto_4e
    invoke-virtual {p2, v1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    goto :goto_5f

    :cond_52
    invoke-static {v5, p0, p1}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->isEventOverTaskbarSubscribeItem(ILandroid/view/MotionEvent;Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;)Z

    move-result v4

    if-nez v4, :cond_5f

    if-nez v2, :cond_5f

    if-nez v3, :cond_5f

    invoke-virtual {p2, v1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    :cond_5f
    :goto_5f
    invoke-static {}, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->getInstance()Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->isFileManagerVisible()Z

    move-result p2

    if-eqz p2, :cond_7e

    const/16 p2, 0xce

    invoke-static {p2, p0, p1}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->isEventOverTaskbarSubscribeItem(ILandroid/view/MotionEvent;Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;)Z

    move-result p2

    invoke-static {v0, v1, v1, p0, p1}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->isEventOverTaskbarTypeItems(ZZZLandroid/view/MotionEvent;Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;)Z

    move-result p0

    if-nez p2, :cond_7e

    if-nez p0, :cond_7e

    invoke-static {}, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->getInstance()Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->closeFileManager()V

    :cond_7e
    return v0
.end method

.method public static final isStillInTouch()Z
    .registers 1

    sget-boolean v0, Lcom/android/launcher3/taskbar/TaskbarTouchHelper;->isStillInTouch:Z

    return v0
.end method

.method public static synthetic isStillInTouch$annotations()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final isTouchFromGesture()Z
    .registers 1

    sget-boolean v0, Lcom/android/launcher3/taskbar/TaskbarTouchHelper;->isTouchFromGesture:Z

    return v0
.end method

.method public static final isTouchFromGesture(Landroid/view/MotionEvent;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "ev"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result p0

    and-int/lit16 p0, p0, 0x200

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return p0
.end method

.method public static synthetic isTouchFromGesture$annotations()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final setForceNotStartDragAndDrop(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/launcher3/taskbar/TaskbarTouchHelper;->forceNotStartDragAndDrop:Z

    return-void
.end method

.method public static final setForceUseUnstashedTouchableRegion(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/launcher3/taskbar/TaskbarTouchHelper;->forceUseUnstashedTouchableRegion:Z

    return-void
.end method

.method public static final setHasDragAndDropEnable(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/launcher3/taskbar/TaskbarTouchHelper;->hasDragAndDropEnable:Z

    return-void
.end method

.method public static final setStillInTouch(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/launcher3/taskbar/TaskbarTouchHelper;->isStillInTouch:Z

    return-void
.end method

.method public static final setTouchFromGesture(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/launcher3/taskbar/TaskbarTouchHelper;->isTouchFromGesture:Z

    return-void
.end method
