.class public Lcom/oplus/zoom/common/ZoomInsetsController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/zoom/common/ZoomInsetsController$ImePositionListener;,
        Lcom/oplus/zoom/common/ZoomInsetsController$PerDisplay;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ZoomInsetsController"

.field private static volatile sInstance:Lcom/oplus/zoom/common/ZoomInsetsController;


# instance fields
.field private mDefaultDisplay:Lcom/oplus/zoom/common/ZoomInsetsController$PerDisplay;

.field private mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

.field private final mImeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/zoom/common/ZoomInsetsController$ImePositionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mInsetsPerDisplay:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/oplus/zoom/common/ZoomInsetsController$PerDisplay;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/ZoomInsetsController;->mImeListeners:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/ZoomInsetsController;->mInsetsPerDisplay:Landroid/util/SparseArray;

    return-void
.end method

.method public static synthetic access$000(Lcom/oplus/zoom/common/ZoomInsetsController;)Lcom/android/wm/shell/common/DisplayInsetsController;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomInsetsController;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/oplus/zoom/common/ZoomInsetsController;IZIZ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/zoom/common/ZoomInsetsController;->onImePositionChanged(IZIZ)V

    return-void
.end method

.method public static getInstance()Lcom/oplus/zoom/common/ZoomInsetsController;
    .registers 2

    sget-object v0, Lcom/oplus/zoom/common/ZoomInsetsController;->sInstance:Lcom/oplus/zoom/common/ZoomInsetsController;

    if-nez v0, :cond_17

    const-class v0, Lcom/oplus/zoom/common/ZoomInsetsController;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/oplus/zoom/common/ZoomInsetsController;->sInstance:Lcom/oplus/zoom/common/ZoomInsetsController;

    if-nez v1, :cond_12

    new-instance v1, Lcom/oplus/zoom/common/ZoomInsetsController;

    invoke-direct {v1}, Lcom/oplus/zoom/common/ZoomInsetsController;-><init>()V

    sput-object v1, Lcom/oplus/zoom/common/ZoomInsetsController;->sInstance:Lcom/oplus/zoom/common/ZoomInsetsController;

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
    sget-object v0, Lcom/oplus/zoom/common/ZoomInsetsController;->sInstance:Lcom/oplus/zoom/common/ZoomInsetsController;

    return-object v0
.end method

.method private onImePositionChanged(IZIZ)V
    .registers 7

    iget-object v0, p0, Lcom/oplus/zoom/common/ZoomInsetsController;->mImeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    iget-object v1, p0, Lcom/oplus/zoom/common/ZoomInsetsController;->mImeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/zoom/common/ZoomInsetsController$ImePositionListener;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/oplus/zoom/common/ZoomInsetsController$ImePositionListener;->onImePositionChanged(IZIZ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method


# virtual methods
.method public addImePositionListener(Lcom/oplus/zoom/common/ZoomInsetsController$ImePositionListener;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomInsetsController;->mImeListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getImeHeight()I
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomInsetsController;->mDefaultDisplay:Lcom/oplus/zoom/common/ZoomInsetsController$PerDisplay;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/oplus/zoom/common/ZoomInsetsController$PerDisplay;->getImeHeight()I

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public init(Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayInsetsController;)V
    .registers 3

    iput-object p2, p0, Lcom/oplus/zoom/common/ZoomInsetsController;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    return-void
.end method

.method public isImeVisible()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomInsetsController;->mDefaultDisplay:Lcom/oplus/zoom/common/ZoomInsetsController$PerDisplay;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/oplus/zoom/common/ZoomInsetsController$PerDisplay;->isImeVisible()Z

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public onDisplayAdded(I)V
    .registers 4

    new-instance v0, Lcom/oplus/zoom/common/ZoomInsetsController$PerDisplay;

    invoke-direct {v0, p0, p1}, Lcom/oplus/zoom/common/ZoomInsetsController$PerDisplay;-><init>(Lcom/oplus/zoom/common/ZoomInsetsController;I)V

    invoke-virtual {v0}, Lcom/oplus/zoom/common/ZoomInsetsController$PerDisplay;->register()V

    iget-object v1, p0, Lcom/oplus/zoom/common/ZoomInsetsController;->mInsetsPerDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-nez p1, :cond_11

    iput-object v0, p0, Lcom/oplus/zoom/common/ZoomInsetsController;->mDefaultDisplay:Lcom/oplus/zoom/common/ZoomInsetsController$PerDisplay;

    :cond_11
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 3

    iget-object v0, p0, Lcom/oplus/zoom/common/ZoomInsetsController;->mInsetsPerDisplay:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/zoom/common/ZoomInsetsController$PerDisplay;

    if-nez v0, :cond_b

    return-void

    :cond_b
    invoke-virtual {v0}, Lcom/oplus/zoom/common/ZoomInsetsController$PerDisplay;->unregister()V

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomInsetsController;->mInsetsPerDisplay:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public removeImePositionListener(Lcom/oplus/zoom/common/ZoomInsetsController$ImePositionListener;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomInsetsController;->mImeListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
