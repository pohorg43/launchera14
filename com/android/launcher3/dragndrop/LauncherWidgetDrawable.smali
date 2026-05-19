.class public Lcom/android/launcher3/dragndrop/LauncherWidgetDrawable;
.super Landroid/graphics/drawable/Drawable;
.source ""


# instance fields
.field private final mAppWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

.field private mCustomLauncherAppWidgetHostView:Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

.field private mDragCardInfo:Lcom/android/launcher3/dragndrop/DragCardInfo;

.field private mLastVisibility:I

.field private mOnlyDrawSmartView:Z

.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;)V
    .registers 3

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/LauncherWidgetDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/dragndrop/LauncherWidgetDrawable;->mLastVisibility:I

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/LauncherWidgetDrawable;->mAppWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Lcom/android/launcher3/dragndrop/DragCardInfo;)V
    .registers 4

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/LauncherWidgetDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/dragndrop/LauncherWidgetDrawable;->mLastVisibility:I

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/LauncherWidgetDrawable;->mAppWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    iput-object p2, p0, Lcom/android/launcher3/dragndrop/LauncherWidgetDrawable;->mDragCardInfo:Lcom/android/launcher3/dragndrop/DragCardInfo;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Ljava/lang/Boolean;)V
    .registers 4

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/LauncherWidgetDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/dragndrop/LauncherWidgetDrawable;->mLastVisibility:I

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/LauncherWidgetDrawable;->mAppWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/launcher3/dragndrop/LauncherWidgetDrawable;->mOnlyDrawSmartView:Z

    instance-of p2, p1, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    if-eqz p2, :cond_1d

    check-cast p1, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/LauncherWidgetDrawable;->mCustomLauncherAppWidgetHostView:Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    :cond_1d
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/LauncherWidgetDrawable;->mCustomLauncherAppWidgetHostView:Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->getWidgetView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_14

    :cond_f
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/LauncherWidgetDrawable;->mAppWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->draw(Landroid/graphics/Canvas;)V

    :goto_14
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public drawCardView(Landroid/graphics/Canvas;Ljava/lang/Float;)V
    .registers 4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object p2, p0, Lcom/android/launcher3/dragndrop/LauncherWidgetDrawable;->mCustomLauncherAppWidgetHostView:Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    if-eqz p2, :cond_23

    invoke-virtual {p2}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->getWidgetView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->clipCorner(Landroid/graphics/Canvas;Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/LauncherWidgetDrawable;->mCustomLauncherAppWidgetHostView:Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->getWidgetView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_28

    :cond_23
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/LauncherWidgetDrawable;->mAppWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->draw(Landroid/graphics/Canvas;)V

    :goto_28
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getAlpha()I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/LauncherWidgetDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getAlpha()I

    move-result p0

    return p0
.end method

.method public getCardBounds()Landroid/graphics/Rect;
    .registers 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/LauncherWidgetDrawable;->mCustomLauncherAppWidgetHostView:Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->getWidgetView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    goto :goto_16

    :cond_11
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/LauncherWidgetDrawable;->mAppWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    :goto_16
    return-object v0
.end method

.method public getCardType()I
    .registers 1

    const/4 p0, -0x1

    return p0
.end method

.method public getClipIconRadius()[F
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/LauncherWidgetDrawable;->mAppWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-interface {p0}, Lcom/android/launcher3/card/IAreaWidget;->getRadiusArr()[F

    move-result-object p0

    return-object p0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/LauncherWidgetDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object p0

    return-object p0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/LauncherWidgetDrawable;->mCustomLauncherAppWidgetHostView:Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->getWidgetView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    return p0

    :cond_d
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/LauncherWidgetDrawable;->mAppWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getMeasuredHeight()I

    move-result p0

    return p0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/LauncherWidgetDrawable;->mCustomLauncherAppWidgetHostView:Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->getWidgetView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    return p0

    :cond_d
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/LauncherWidgetDrawable;->mAppWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getMeasuredWidth()I

    move-result p0

    return p0
.end method

.method public getOpacity()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public setAlpha(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/LauncherWidgetDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/LauncherWidgetDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
