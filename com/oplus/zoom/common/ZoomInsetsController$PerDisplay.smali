.class public Lcom/oplus/zoom/common/ZoomInsetsController$PerDisplay;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/DisplayInsetsController$OnInsetsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/zoom/common/ZoomInsetsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PerDisplay"
.end annotation


# static fields
.field private static final MAX_FLOATING_IME_HEIGHT:I = 0x2c


# instance fields
.field public final mDisplayId:I

.field private mImeHeight:I

.field private mImeShow:Z

.field public mInsetsState:Landroid/view/InsetsState;

.field public final synthetic this$0:Lcom/oplus/zoom/common/ZoomInsetsController;


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/common/ZoomInsetsController;I)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/zoom/common/ZoomInsetsController$PerDisplay;->this$0:Lcom/oplus/zoom/common/ZoomInsetsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/oplus/zoom/common/ZoomInsetsController$PerDisplay;->mDisplayId:I

    return-void
.end method

.method private calcIsFloating(Landroid/view/InsetsSource;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_c

    return v0

    :cond_c
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDisplayController;->getInstance()Lcom/oplus/zoom/common/ZoomDisplayController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/zoom/common/ZoomDisplayController;->getDensity()F

    move-result p1

    const/high16 v1, 0x42300000  # 44.0f

    invoke-static {p1, v1}, Lcom/oplus/zoom/common/ZoomUtil;->dip2px(FF)I

    move-result p1

    if-gt p0, p1, :cond_21

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    return v0
.end method

.method private updateImeInsetsState(Landroid/view/InsetsState;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    sget v0, Landroid/view/InsetsSource;->ID_IME:I

    invoke-virtual {p1, v0}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object p1

    if-nez p1, :cond_c

    return-void

    :cond_c
    invoke-virtual {p1}, Landroid/view/InsetsSource;->getVisibleFrame()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getVisibleFrame()Landroid/graphics/Rect;

    goto :goto_19

    :cond_16
    invoke-virtual {p1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    :goto_19
    invoke-virtual {p1}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v0

    invoke-direct {p0, p1}, Lcom/oplus/zoom/common/ZoomInsetsController$PerDisplay;->calcIsFloating(Landroid/view/InsetsSource;)Z

    move-result v1

    if-eqz v1, :cond_25

    const/4 p1, 0x0

    goto :goto_2d

    :cond_25
    invoke-virtual {p1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    :goto_2d
    iget-boolean v2, p0, Lcom/oplus/zoom/common/ZoomInsetsController$PerDisplay;->mImeShow:Z

    if-ne v0, v2, :cond_35

    iget v2, p0, Lcom/oplus/zoom/common/ZoomInsetsController$PerDisplay;->mImeHeight:I

    if-eq p1, v2, :cond_40

    :cond_35
    iput-boolean v0, p0, Lcom/oplus/zoom/common/ZoomInsetsController$PerDisplay;->mImeShow:Z

    iput p1, p0, Lcom/oplus/zoom/common/ZoomInsetsController$PerDisplay;->mImeHeight:I

    iget-object v2, p0, Lcom/oplus/zoom/common/ZoomInsetsController$PerDisplay;->this$0:Lcom/oplus/zoom/common/ZoomInsetsController;

    iget p0, p0, Lcom/oplus/zoom/common/ZoomInsetsController$PerDisplay;->mDisplayId:I

    invoke-static {v2, p0, v0, p1, v1}, Lcom/oplus/zoom/common/ZoomInsetsController;->access$100(Lcom/oplus/zoom/common/ZoomInsetsController;IZIZ)V

    :cond_40
    return-void
.end method


# virtual methods
.method public getImeHeight()I
    .registers 1

    iget p0, p0, Lcom/oplus/zoom/common/ZoomInsetsController$PerDisplay;->mImeHeight:I

    return p0
.end method

.method public insetsChanged(Landroid/view/InsetsState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/zoom/common/ZoomInsetsController$PerDisplay;->updateImeInsetsState(Landroid/view/InsetsState;)V

    iput-object p1, p0, Lcom/oplus/zoom/common/ZoomInsetsController$PerDisplay;->mInsetsState:Landroid/view/InsetsState;

    return-void
.end method

.method public isImeVisible()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/zoom/common/ZoomInsetsController$PerDisplay;->mImeShow:Z

    return p0
.end method

.method public register()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/zoom/common/ZoomInsetsController$PerDisplay;->this$0:Lcom/oplus/zoom/common/ZoomInsetsController;

    invoke-static {v0}, Lcom/oplus/zoom/common/ZoomInsetsController;->access$000(Lcom/oplus/zoom/common/ZoomInsetsController;)Lcom/android/wm/shell/common/DisplayInsetsController;

    move-result-object v0

    iget v1, p0, Lcom/oplus/zoom/common/ZoomInsetsController$PerDisplay;->mDisplayId:I

    invoke-virtual {v0, v1, p0}, Lcom/android/wm/shell/common/DisplayInsetsController;->addInsetsChangedListener(ILcom/android/wm/shell/common/DisplayInsetsController$OnInsetsChangedListener;)V

    return-void
.end method

.method public unregister()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/zoom/common/ZoomInsetsController$PerDisplay;->this$0:Lcom/oplus/zoom/common/ZoomInsetsController;

    invoke-static {v0}, Lcom/oplus/zoom/common/ZoomInsetsController;->access$000(Lcom/oplus/zoom/common/ZoomInsetsController;)Lcom/android/wm/shell/common/DisplayInsetsController;

    move-result-object v0

    iget v1, p0, Lcom/oplus/zoom/common/ZoomInsetsController$PerDisplay;->mDisplayId:I

    invoke-virtual {v0, v1, p0}, Lcom/android/wm/shell/common/DisplayInsetsController;->removeInsetsChangedListener(ILcom/android/wm/shell/common/DisplayInsetsController$OnInsetsChangedListener;)V

    return-void
.end method
