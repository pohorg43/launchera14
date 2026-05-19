.class public Lcom/oplus/zoom/common/ZoomDisplayController;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/zoom/common/ZoomDisplayController$DisplayRecord;,
        Lcom/oplus/zoom/common/ZoomDisplayController$DisplayChangedListener;
    }
.end annotation


# static fields
.field public static final CHANGED_DISPLAY:I = 0x2

.field public static final CHANGED_NONE:I = 0x0

.field public static final CHANGED_ROTATION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ZoomDisplayController"

.field private static volatile sInstance:Lcom/oplus/zoom/common/ZoomDisplayController;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultDisplay:Lcom/oplus/zoom/common/ZoomDisplayController$DisplayRecord;

.field private final mDisplayChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/zoom/common/ZoomDisplayController$DisplayChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field private final mDisplays:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/oplus/zoom/common/ZoomDisplayController$DisplayRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mLastScreenHeight:I

.field private mLastScreenWidth:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/ZoomDisplayController;->mDisplayChangedListeners:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/ZoomDisplayController;->mDisplays:Landroid/util/SparseArray;

    return-void
.end method

.method public static synthetic a(Lcom/oplus/zoom/common/ZoomDisplayController;IIILandroid/window/DisplayAreaInfo;Landroid/window/WindowContainerTransaction;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/oplus/zoom/common/ZoomDisplayController;->onRotateDisplay(IIILandroid/window/DisplayAreaInfo;Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/oplus/zoom/common/ZoomDisplayController;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomDisplayController;->mDisplayChangedListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/oplus/zoom/common/ZoomDisplayController;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomDisplayController;->mDisplays:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/oplus/zoom/common/ZoomDisplayController;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/zoom/common/ZoomDisplayController;->notifyDisplayRemove(I)V

    return-void
.end method

.method public static synthetic access$300(Lcom/oplus/zoom/common/ZoomDisplayController;)Lcom/android/wm/shell/common/DisplayController;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomDisplayController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    return-object p0
.end method

.method public static synthetic access$502(Lcom/oplus/zoom/common/ZoomDisplayController;Lcom/oplus/zoom/common/ZoomDisplayController$DisplayRecord;)Lcom/oplus/zoom/common/ZoomDisplayController$DisplayRecord;
    .registers 2

    iput-object p1, p0, Lcom/oplus/zoom/common/ZoomDisplayController;->mDefaultDisplay:Lcom/oplus/zoom/common/ZoomDisplayController$DisplayRecord;

    return-object p1
.end method

.method public static synthetic access$600(Lcom/oplus/zoom/common/ZoomDisplayController;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/zoom/common/ZoomDisplayController;->notifyDisplayAdd(I)V

    return-void
.end method

.method public static synthetic access$700(Lcom/oplus/zoom/common/ZoomDisplayController;)I
    .registers 1

    iget p0, p0, Lcom/oplus/zoom/common/ZoomDisplayController;->mLastScreenWidth:I

    return p0
.end method

.method public static synthetic access$702(Lcom/oplus/zoom/common/ZoomDisplayController;I)I
    .registers 2

    iput p1, p0, Lcom/oplus/zoom/common/ZoomDisplayController;->mLastScreenWidth:I

    return p1
.end method

.method public static synthetic access$800(Lcom/oplus/zoom/common/ZoomDisplayController;)I
    .registers 1

    iget p0, p0, Lcom/oplus/zoom/common/ZoomDisplayController;->mLastScreenHeight:I

    return p0
.end method

.method public static synthetic access$802(Lcom/oplus/zoom/common/ZoomDisplayController;I)I
    .registers 2

    iput p1, p0, Lcom/oplus/zoom/common/ZoomDisplayController;->mLastScreenHeight:I

    return p1
.end method

.method public static synthetic access$900(Lcom/oplus/zoom/common/ZoomDisplayController;IILandroid/content/res/Configuration;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/zoom/common/ZoomDisplayController;->notifyDisplayChanged(IILandroid/content/res/Configuration;)V

    return-void
.end method

.method public static getInstance()Lcom/oplus/zoom/common/ZoomDisplayController;
    .registers 2

    sget-object v0, Lcom/oplus/zoom/common/ZoomDisplayController;->sInstance:Lcom/oplus/zoom/common/ZoomDisplayController;

    if-nez v0, :cond_17

    const-class v0, Lcom/oplus/zoom/common/ZoomDisplayController;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/oplus/zoom/common/ZoomDisplayController;->sInstance:Lcom/oplus/zoom/common/ZoomDisplayController;

    if-nez v1, :cond_12

    new-instance v1, Lcom/oplus/zoom/common/ZoomDisplayController;

    invoke-direct {v1}, Lcom/oplus/zoom/common/ZoomDisplayController;-><init>()V

    sput-object v1, Lcom/oplus/zoom/common/ZoomDisplayController;->sInstance:Lcom/oplus/zoom/common/ZoomDisplayController;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/oplus/zoom/common/ZoomDisplayController;->sInstance:Lcom/oplus/zoom/common/ZoomDisplayController;

    return-object v0
.end method

.method private notifyDisplayAdd(I)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/zoom/common/ZoomDisplayController;->mDisplayChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    iget-object v1, p0, Lcom/oplus/zoom/common/ZoomDisplayController;->mDisplayChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/zoom/common/ZoomDisplayController$DisplayChangedListener;

    invoke-interface {v1, p1}, Lcom/oplus/zoom/common/ZoomDisplayController$DisplayChangedListener;->onDisplayAdded(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method private notifyDisplayChanged(IILandroid/content/res/Configuration;)V
    .registers 6

    iget-object v0, p0, Lcom/oplus/zoom/common/ZoomDisplayController;->mDisplayChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    iget-object v1, p0, Lcom/oplus/zoom/common/ZoomDisplayController;->mDisplayChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/zoom/common/ZoomDisplayController$DisplayChangedListener;

    invoke-interface {v1, p1, p2, p3}, Lcom/oplus/zoom/common/ZoomDisplayController$DisplayChangedListener;->onDisplayChanged(IILandroid/content/res/Configuration;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method private notifyDisplayRemove(I)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/zoom/common/ZoomDisplayController;->mDisplayChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    iget-object v1, p0, Lcom/oplus/zoom/common/ZoomDisplayController;->mDisplayChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/zoom/common/ZoomDisplayController$DisplayChangedListener;

    invoke-interface {v1, p1}, Lcom/oplus/zoom/common/ZoomDisplayController$DisplayChangedListener;->onDisplayRemove(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method private onRotateDisplay(IIILandroid/window/DisplayAreaInfo;Landroid/window/WindowContainerTransaction;)V
    .registers 14

    iget-object v0, p0, Lcom/oplus/zoom/common/ZoomDisplayController;->mDisplayChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1e

    iget-object v1, p0, Lcom/oplus/zoom/common/ZoomDisplayController;->mDisplayChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/oplus/zoom/common/ZoomDisplayController$DisplayChangedListener;

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/oplus/zoom/common/ZoomDisplayController$DisplayChangedListener;->onRotateDisplay(IIILandroid/window/DisplayAreaInfo;Landroid/window/WindowContainerTransaction;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1e
    return-void
.end method


# virtual methods
.method public getDensity()F
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomDisplayController;->mDefaultDisplay:Lcom/oplus/zoom/common/ZoomDisplayController$DisplayRecord;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/oplus/zoom/common/ZoomDisplayController$DisplayRecord;->getDensity()F

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomDisplayController;->mDefaultDisplay:Lcom/oplus/zoom/common/ZoomDisplayController$DisplayRecord;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/oplus/zoom/common/ZoomDisplayController$DisplayRecord;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p0

    goto :goto_e

    :cond_9
    new-instance p0, Lcom/android/wm/shell/common/DisplayLayout;

    invoke-direct {p0}, Lcom/android/wm/shell/common/DisplayLayout;-><init>()V

    :goto_e
    return-object p0
.end method

.method public getLastScreenHeight()I
    .registers 1

    iget p0, p0, Lcom/oplus/zoom/common/ZoomDisplayController;->mLastScreenHeight:I

    return p0
.end method

.method public getLastScreenWidth()I
    .registers 1

    iget p0, p0, Lcom/oplus/zoom/common/ZoomDisplayController;->mLastScreenWidth:I

    return p0
.end method

.method public getRotation()I
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomDisplayController;->mDefaultDisplay:Lcom/oplus/zoom/common/ZoomDisplayController$DisplayRecord;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/oplus/zoom/common/ZoomDisplayController$DisplayRecord;->getRotation()I

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public getScreenHeight()I
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomDisplayController;->mDefaultDisplay:Lcom/oplus/zoom/common/ZoomDisplayController$DisplayRecord;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/oplus/zoom/common/ZoomDisplayController$DisplayRecord;->getScreenHeight()I

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public getScreenWidth()I
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomDisplayController;->mDefaultDisplay:Lcom/oplus/zoom/common/ZoomDisplayController$DisplayRecord;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/oplus/zoom/common/ZoomDisplayController$DisplayRecord;->getScreenWidth()I

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public init(Lcom/android/wm/shell/common/DisplayController;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/oplus/zoom/common/ZoomDisplayController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iput-object p2, p0, Lcom/oplus/zoom/common/ZoomDisplayController;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/oplus/zoom/common/ZoomDisplayController$1;

    invoke-direct {v0, p0, p2}, Lcom/oplus/zoom/common/ZoomDisplayController$1;-><init>(Lcom/oplus/zoom/common/ZoomDisplayController;Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    iget-object p1, p0, Lcom/oplus/zoom/common/ZoomDisplayController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    new-instance p2, Lcom/oplus/zoom/common/j;

    invoke-direct {p2, p0}, Lcom/oplus/zoom/common/j;-><init>(Lcom/oplus/zoom/common/ZoomDisplayController;)V

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/common/DisplayController;->addDisplayChangingController(Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;)V

    return-void
.end method

.method public isLandscape()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomDisplayController;->mDefaultDisplay:Lcom/oplus/zoom/common/ZoomDisplayController$DisplayRecord;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/oplus/zoom/common/ZoomDisplayController$DisplayRecord;->isLandscape()Z

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public isStatusbarHide()Z
    .registers 5

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomDisplayController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/DisplayController;->getInsetsState(I)Landroid/view/InsetsState;

    move-result-object p0

    const/4 v1, 0x1

    if-nez p0, :cond_b

    return v1

    :cond_b
    invoke-virtual {p0}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v3

    invoke-virtual {p0, v2, v3, v0}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object p0

    sget-object v2, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    if-eq p0, v2, :cond_21

    if-eq p0, v2, :cond_22

    iget p0, p0, Landroid/graphics/Insets;->top:I

    if-nez p0, :cond_22

    :cond_21
    move v0, v1

    :cond_22
    return v0
.end method

.method public registerDisplayChangedListener(Lcom/oplus/zoom/common/ZoomDisplayController$DisplayChangedListener;)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/zoom/common/ZoomDisplayController;->mDisplayChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :goto_6
    iget-object v1, p0, Lcom/oplus/zoom/common/ZoomDisplayController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    iget-object v1, p0, Lcom/oplus/zoom/common/ZoomDisplayController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-interface {p1, v1}, Lcom/oplus/zoom/common/ZoomDisplayController$DisplayChangedListener;->onDisplayAdded(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1a
    return-void
.end method

.method public unRegisterDisplayChangedListener(Lcom/oplus/zoom/common/ZoomDisplayController$DisplayChangedListener;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomDisplayController;->mDisplayChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
