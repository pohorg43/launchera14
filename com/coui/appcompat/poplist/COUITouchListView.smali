.class public Lcom/coui/appcompat/poplist/COUITouchListView;
.super Lcom/coui/appcompat/list/COUIForegroundListView;
.source ""


# static fields
.field public static final o:Z


# instance fields
.field public h:I

.field public i:Landroid/graphics/Rect;

.field public j:Landroid/graphics/Rect;

.field public k:Z

.field public l:I

.field public m:I

.field public n:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    sget-boolean v0, Lcom/coui/appcompat/log/COUILog;->a:Z

    if-nez v0, :cond_10

    const/4 v0, 0x3

    const-string v1, "COUITouchListView"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    sput-boolean v0, Lcom/coui/appcompat/poplist/COUITouchListView;->o:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/poplist/COUITouchListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/poplist/COUITouchListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/list/COUIForegroundListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Lcom/coui/appcompat/poplist/COUITouchListView$1;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/poplist/COUITouchListView$1;-><init>(Lcom/coui/appcompat/poplist/COUITouchListView;)V

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public static synthetic b(Lcom/coui/appcompat/poplist/COUITouchListView;)I
    .registers 1

    invoke-direct {p0}, Lcom/coui/appcompat/poplist/COUITouchListView;->getTopItemScrollY()I

    move-result p0

    return p0
.end method

.method private getTopItemScrollY()I
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_8

    return v0

    :cond_8
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final c(Landroid/view/MotionEvent;)Z
    .registers 4

    iget v0, p0, Lcom/coui/appcompat/poplist/COUITouchListView;->h:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    invoke-virtual {p0, v0, p1, v1}, Lcom/coui/appcompat/poplist/COUITouchListView;->d(Landroid/view/View;Landroid/view/MotionEvent;I)V

    :cond_11
    const/4 p1, -0x1

    iput p1, p0, Lcom/coui/appcompat/poplist/COUITouchListView;->h:I

    return v1
.end method

.method public final d(Landroid/view/View;Landroid/view/MotionEvent;I)V
    .registers 8

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/poplist/COUITouchListView;->i:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/poplist/COUITouchListView;->j:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUITouchListView;->i:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/ListView;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUITouchListView;->j:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUITouchListView;->i:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUITouchListView;->j:Landroid/graphics/Rect;

    iget v2, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget p0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p2

    const/4 v3, -0x1

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->setSource(I)V

    sub-int/2addr p0, v1

    int-to-float p0, p0

    sub-int/2addr v2, v0

    int-to-float v0, v2

    invoke-virtual {p2, p0, v0}, Landroid/view/MotionEvent;->setLocation(FF)V

    invoke-virtual {p2, p3}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->canScrollVertically(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-nez v1, :cond_12

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->canScrollVertically(I)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_12

    :cond_10
    move v1, v0

    goto :goto_13

    :cond_12
    :goto_12
    move v1, v2

    :goto_13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    sget-boolean v8, Lcom/coui/appcompat/poplist/COUITouchListView;->o:Z

    if-eqz v8, :cond_53

    const-string v8, "dispatchTouchEvent actionMasked:"

    invoke-static {v8}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ",actionIndex:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",getPointerCount:"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "COUITouchListView"

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_53
    if-eqz v4, :cond_c6

    if-eq v4, v0, :cond_a9

    const/4 v5, 0x2

    if-eq v4, v5, :cond_63

    const/4 v1, 0x5

    if-eq v4, v1, :cond_5f

    goto/16 :goto_d8

    :cond_5f
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/poplist/COUITouchListView;->c(Landroid/view/MotionEvent;)Z

    return v0

    :cond_63
    invoke-virtual {p0, v6, v7}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v4

    if-eq v4, v3, :cond_a5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    if-gt v5, v0, :cond_a5

    iget-boolean v5, p0, Lcom/coui/appcompat/poplist/COUITouchListView;->n:Z

    if-eqz v5, :cond_74

    goto :goto_a5

    :cond_74
    iget v5, p0, Lcom/coui/appcompat/poplist/COUITouchListView;->h:I

    if-eq v4, v5, :cond_99

    invoke-static {v4}, Lcom/coui/appcompat/poplist/DefaultAdapter;->b(I)Z

    move-result v5

    if-eqz v5, :cond_99

    iget-boolean v5, p0, Lcom/coui/appcompat/poplist/COUITouchListView;->k:Z

    if-nez v5, :cond_99

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/poplist/COUITouchListView;->c(Landroid/view/MotionEvent;)Z

    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, v4, v0

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_d8

    if-eqz v1, :cond_d8

    invoke-virtual {p0, v0, p1, v2}, Lcom/coui/appcompat/poplist/COUITouchListView;->d(Landroid/view/View;Landroid/view/MotionEvent;I)V

    iput v4, p0, Lcom/coui/appcompat/poplist/COUITouchListView;->h:I

    goto :goto_d8

    :cond_99
    iget-boolean v1, p0, Lcom/coui/appcompat/poplist/COUITouchListView;->k:Z

    if-eqz v1, :cond_d8

    iget v1, p0, Lcom/coui/appcompat/poplist/COUITouchListView;->h:I

    if-eq v1, v3, :cond_d8

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/poplist/COUITouchListView;->c(Landroid/view/MotionEvent;)Z

    return v0

    :cond_a5
    :goto_a5
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/poplist/COUITouchListView;->c(Landroid/view/MotionEvent;)Z

    return v0

    :cond_a9
    iget v0, p0, Lcom/coui/appcompat/poplist/COUITouchListView;->h:I

    if-eq v0, v3, :cond_c3

    iget-boolean v1, p0, Lcom/coui/appcompat/poplist/COUITouchListView;->n:Z

    if-nez v1, :cond_c3

    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/poplist/COUITouchListView;->h:I

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v4

    invoke-virtual {p0, v0, v1, v4, v5}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    :cond_c3
    iput v3, p0, Lcom/coui/appcompat/poplist/COUITouchListView;->h:I

    goto :goto_d8

    :cond_c6
    invoke-virtual {p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/AccessibilityUtils/COUIAccessibilityUtil;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/poplist/COUITouchListView;->n:Z

    iput-boolean v2, p0, Lcom/coui/appcompat/poplist/COUITouchListView;->k:Z

    invoke-virtual {p0, v6, v7}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/poplist/COUITouchListView;->h:I

    :cond_d8
    :goto_d8
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
