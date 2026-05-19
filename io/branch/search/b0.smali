.class public Lio/branch/search/b0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/b0$b;
    }
.end annotation


# instance fields
.field public a:Lio/branch/search/AnalyticsEntity;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:Landroid/view/View;

.field public c:Z

.field public final d:Lio/branch/search/b0$b;

.field public e:Ljava/lang/Boolean;

.field public final f:Lio/branch/search/h;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public g:Landroid/view/View$OnAttachStateChangeListener;

.field public final h:Landroid/graphics/Rect;

.field public final i:Landroid/graphics/Rect;

.field public final j:[I

.field public final k:[I


# direct methods
.method public constructor <init>(Landroid/view/View;Lio/branch/search/AnalyticsEntity;Lio/branch/search/h;)V
    .registers 6
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lio/branch/search/AnalyticsEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Lio/branch/search/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/branch/search/b0;->c:Z

    new-instance v0, Lio/branch/search/b0$a;

    invoke-direct {v0, p0}, Lio/branch/search/b0$a;-><init>(Lio/branch/search/b0;)V

    iput-object v0, p0, Lio/branch/search/b0;->g:Landroid/view/View$OnAttachStateChangeListener;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lio/branch/search/b0;->h:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lio/branch/search/b0;->i:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lio/branch/search/b0;->j:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lio/branch/search/b0;->k:[I

    iput-object p3, p0, Lio/branch/search/b0;->f:Lio/branch/search/h;

    iput-object p1, p0, Lio/branch/search/b0;->b:Landroid/view/View;

    iput-object p2, p0, Lio/branch/search/b0;->a:Lio/branch/search/AnalyticsEntity;

    new-instance p2, Lio/branch/search/b0$b;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lio/branch/search/b0$b;-><init>(Lio/branch/search/b0;Lio/branch/search/b0$a;)V

    iput-object p2, p0, Lio/branch/search/b0;->d:Lio/branch/search/b0$b;

    iget-object p2, p0, Lio/branch/search/b0;->g:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_40

    invoke-virtual {p0}, Lio/branch/search/b0;->d()V

    :cond_40
    return-void
.end method

.method public static synthetic a(Lio/branch/search/b0;)V
    .registers 1

    invoke-virtual {p0}, Lio/branch/search/b0;->d()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 6
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-object v0, p0, Lio/branch/search/b0;->f:Lio/branch/search/h;

    iget-object v0, v0, Lio/branch/search/h;->a:Lio/branch/search/m;

    iget-object v0, v0, Lio/branch/search/m;->h:Lio/branch/search/BranchAnalytics;

    invoke-virtual {v0}, Lio/branch/search/BranchAnalytics;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    :cond_11
    iget-object v0, p0, Lio/branch/search/b0;->b:Landroid/view/View;

    if-eqz v0, :cond_de

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_de

    iget-object v0, p0, Lio/branch/search/b0;->b:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_de

    iget-object v0, p0, Lio/branch/search/b0;->b:Landroid/view/View;

    iget-object v1, p0, Lio/branch/search/b0;->h:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_2e

    return-void

    :cond_2e
    iget-object v0, p0, Lio/branch/search/b0;->b:Landroid/view/View;

    iget-object v1, p0, Lio/branch/search/b0;->i:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lio/branch/search/b0;->b:Landroid/view/View;

    iget-object v1, p0, Lio/branch/search/b0;->j:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v0, p0, Lio/branch/search/b0;->b:Landroid/view/View;

    iget-object v1, p0, Lio/branch/search/b0;->k:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lio/branch/search/b0;->k:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object v3, p0, Lio/branch/search/b0;->j:[I

    aget v4, v3, v1

    sub-int/2addr v2, v4

    const/4 v4, 0x1

    aget v0, v0, v4

    aget v3, v3, v4

    sub-int/2addr v0, v3

    iget-object v3, p0, Lio/branch/search/b0;->h:Landroid/graphics/Rect;

    invoke-virtual {v3, v2, v0}, Landroid/graphics/Rect;->offset(II)V

    iget-object v0, p0, Lio/branch/search/b0;->h:Landroid/graphics/Rect;

    iget-object v2, p0, Lio/branch/search/b0;->i:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_de

    iget-object v0, p0, Lio/branch/search/b0;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lio/branch/search/b0;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    iget-object v2, p0, Lio/branch/search/b0;->h:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lio/branch/search/b0;->h:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v0

    const/high16 v0, 0x3f000000  # 0.5f

    cmpl-float v0, v2, v0

    if-lez v0, :cond_89

    move v0, v4

    goto :goto_8a

    :cond_89
    move v0, v1

    :goto_8a
    if-eqz v0, :cond_de

    invoke-virtual {p0}, Lio/branch/search/b0;->b()Z

    move-result v0

    if-nez v0, :cond_bd

    const-string v0, "start impression encounter for result: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lio/branch/search/b0;->a:Lio/branch/search/AnalyticsEntity;

    invoke-virtual {v3}, Lio/branch/search/AnalyticsEntity;->getImpressionJson()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/branch/search/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/b0;->f:Lio/branch/search/h;

    iget-object v3, p0, Lio/branch/search/b0;->a:Lio/branch/search/AnalyticsEntity;

    invoke-virtual {v0, v3, v2}, Lio/branch/search/h;->a(Lio/branch/search/AnalyticsEntity;F)V

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-static {v2, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_b8

    move v1, v4

    :cond_b8
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_db

    :cond_bd
    invoke-virtual {p0}, Lio/branch/search/b0;->b()Z

    move-result v0

    if-eqz v0, :cond_dd

    iget-object v0, p0, Lio/branch/search/b0;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_dd

    iget-object v0, p0, Lio/branch/search/b0;->f:Lio/branch/search/h;

    iget-object v1, p0, Lio/branch/search/b0;->a:Lio/branch/search/AnalyticsEntity;

    invoke-virtual {v1}, Lio/branch/search/AnalyticsEntity;->getImpressionId()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lio/branch/search/h;->a(IF)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_db
    iput-object v0, p0, Lio/branch/search/b0;->e:Ljava/lang/Boolean;

    :cond_dd
    return-void

    :cond_de
    invoke-virtual {p0}, Lio/branch/search/b0;->c()V

    return-void
.end method

.method public a(Lio/branch/search/AnalyticsEntity;)V
    .registers 3
    .param p1  # Lio/branch/search/AnalyticsEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lio/branch/search/b0;->c()V

    iput-object p1, p0, Lio/branch/search/b0;->a:Lio/branch/search/AnalyticsEntity;

    iget-object v0, p0, Lio/branch/search/b0;->f:Lio/branch/search/h;

    invoke-virtual {p1}, Lio/branch/search/AnalyticsEntity;->getImpressionId()I

    move-result p1

    invoke-virtual {v0, p1}, Lio/branch/search/h;->a(I)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lio/branch/search/b0;->e:Ljava/lang/Boolean;

    return-void
.end method

.method public b()Z
    .registers 1

    iget-object p0, p0, Lio/branch/search/b0;->e:Ljava/lang/Boolean;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public c()V
    .registers 5

    invoke-virtual {p0}, Lio/branch/search/b0;->b()Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, "complete impression encounter for result: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/b0;->a:Lio/branch/search/AnalyticsEntity;

    invoke-virtual {v1}, Lio/branch/search/AnalyticsEntity;->getImpressionJson()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/branch/search/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/b0;->f:Lio/branch/search/h;

    iget-object v1, p0, Lio/branch/search/b0;->a:Lio/branch/search/AnalyticsEntity;

    invoke-virtual {v1}, Lio/branch/search/AnalyticsEntity;->getImpressionId()I

    move-result v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lio/branch/search/h;->a(IJ)V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/branch/search/b0;->e:Ljava/lang/Boolean;

    :cond_2e
    return-void
.end method

.method public final d()V
    .registers 3

    iget-boolean v0, p0, Lio/branch/search/b0;->c:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lio/branch/search/b0;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/b0;->d:Lio/branch/search/b0$b;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/branch/search/b0;->c:Z

    :cond_12
    return-void
.end method

.method public e()V
    .registers 3

    iget-boolean v0, p0, Lio/branch/search/b0;->c:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lio/branch/search/b0;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/b0;->d:Lio/branch/search/b0$b;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    iget-object v0, p0, Lio/branch/search/b0;->b:Landroid/view/View;

    iget-object v1, p0, Lio/branch/search/b0;->g:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/branch/search/b0;->c:Z

    :cond_19
    invoke-virtual {p0}, Lio/branch/search/b0;->c()V

    iget-object v0, p0, Lio/branch/search/b0;->f:Lio/branch/search/h;

    iget-object p0, p0, Lio/branch/search/b0;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Lio/branch/search/h;->a(Landroid/view/View;)V

    return-void
.end method
