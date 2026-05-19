.class public Lcom/android/launcher/settings/RecyclerViewTouchListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# instance fields
.field private isDragging:Ljava/lang/Boolean;

.field private lastX:F

.field private lastY:F

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/settings/RecyclerViewTouchListener;->lastX:F

    iput v0, p0, Lcom/android/launcher/settings/RecyclerViewTouchListener;->lastY:F

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/launcher/settings/RecyclerViewTouchListener;->isDragging:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/launcher/settings/RecyclerViewTouchListener;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1  # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_47

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3d

    const/4 v2, 0x2

    if-eq p1, v2, :cond_11

    const/4 p2, 0x3

    if-eq p1, p2, :cond_3d

    goto :goto_57

    :cond_11
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v2, p0, Lcom/android/launcher/settings/RecyclerViewTouchListener;->lastX:F

    sub-float/2addr p1, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iget v2, p0, Lcom/android/launcher/settings/RecyclerViewTouchListener;->lastY:F

    sub-float/2addr p2, v2

    iget-object v2, p0, Lcom/android/launcher/settings/RecyclerViewTouchListener;->isDragging:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_57

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_57

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/launcher/settings/RecyclerViewTouchListener;->isDragging:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/android/launcher/settings/RecyclerViewTouchListener;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_57

    :cond_3d
    iget-object p1, p0, Lcom/android/launcher/settings/RecyclerViewTouchListener;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/launcher/settings/RecyclerViewTouchListener;->isDragging:Ljava/lang/Boolean;

    goto :goto_57

    :cond_47
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/android/launcher/settings/RecyclerViewTouchListener;->lastX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/android/launcher/settings/RecyclerViewTouchListener;->lastY:F

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/launcher/settings/RecyclerViewTouchListener;->isDragging:Ljava/lang/Boolean;

    :cond_57
    :goto_57
    return v0
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .registers 2

    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .registers 3
    .param p1  # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
