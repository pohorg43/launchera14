.class public Lcom/coui/appcompat/grid/COUIPercentWidthListView;
.super Lcom/coui/appcompat/list/COUIListView;
.source ""


# instance fields
.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:Z

.field public v:Z

.field public w:I

.field public x:I

.field public y:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/grid/COUIPercentWidthListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/list/COUIListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/grid/COUIPercentWidthListView;->v:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/grid/COUIPercentWidthListView;->w:I

    iput v0, p0, Lcom/coui/appcompat/grid/COUIPercentWidthListView;->x:I

    iput-boolean p1, p0, Lcom/coui/appcompat/grid/COUIPercentWidthListView;->y:Z

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/grid/COUIPercentWidthListView;->c(Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/coui/appcompat/grid/COUIPercentWidthListView;->d()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/list/COUIListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/grid/COUIPercentWidthListView;->v:Z

    const/4 p3, 0x0

    iput p3, p0, Lcom/coui/appcompat/grid/COUIPercentWidthListView;->w:I

    iput p3, p0, Lcom/coui/appcompat/grid/COUIPercentWidthListView;->x:I

    iput-boolean p1, p0, Lcom/coui/appcompat/grid/COUIPercentWidthListView;->y:Z

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/grid/COUIPercentWidthListView;->c(Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingStart()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/grid/COUIPercentWidthListView;->q:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingEnd()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/grid/COUIPercentWidthListView;->r:I

    const/high16 p1, 0x2000000

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    return-void
.end method


# virtual methods
.method public final c(Landroid/util/AttributeSet;)V
    .registers 5

    invoke-virtual {p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_59

    invoke-virtual {p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/support/appcompat/R$styleable;->COUIPercentWidthListView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v0, Lcom/support/appcompat/R$styleable;->COUIPercentWidthListView_couiListGridNumber:I

    sget v1, Lcom/support/appcompat/R$integer;->grid_guide_column_preference:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/grid/COUIPercentWidthListView;->p:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/grid/COUIPercentWidthListView;->o:I

    sget v0, Lcom/support/appcompat/R$styleable;->COUIPercentWidthListView_percentMode:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/grid/COUIPercentWidthListView;->w:I

    sget v0, Lcom/support/appcompat/R$styleable;->COUIPercentWidthListView_paddingType:I

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/grid/COUIPercentWidthListView;->s:I

    sget v0, Lcom/support/appcompat/R$styleable;->COUIPercentWidthListView_paddingSize:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/grid/COUIPercentWidthListView;->t:I

    sget v0, Lcom/support/appcompat/R$styleable;->COUIPercentWidthRecyclerView_isParentChildHierarchy:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/grid/COUIPercentWidthListView;->u:Z

    sget v0, Lcom/support/appcompat/R$styleable;->COUIPercentWidthLinearLayout_percentIndentEnabled:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/grid/COUIPercentWidthListView;->v:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_59
    return-void
.end method

.method public final d()V
    .registers 3

    invoke-virtual {p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    sget-boolean v1, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->a:Z

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_18

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->b(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/grid/COUIPercentWidthListView;->x:I

    goto :goto_1b

    :cond_18
    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/grid/COUIPercentWidthListView;->x:I

    :cond_1b
    :goto_1b
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_20

    iget p1, p0, Lcom/coui/appcompat/grid/COUIPercentWidthListView;->p:I

    if-eqz p1, :cond_20

    invoke-virtual {p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lcom/coui/appcompat/grid/COUIPercentWidthListView;->p:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/grid/COUIPercentWidthListView;->o:I

    invoke-virtual {p0}, Lcom/coui/appcompat/grid/COUIPercentWidthListView;->d()V

    :cond_20
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    return-void
.end method

.method public onMeasure(II)V
    .registers 15

    iget-boolean v0, p0, Lcom/coui/appcompat/grid/COUIPercentWidthListView;->y:Z

    if-eqz v0, :cond_3f

    iget-boolean v0, p0, Lcom/coui/appcompat/grid/COUIPercentWidthListView;->v:Z

    if-eqz v0, :cond_20

    iget v3, p0, Lcom/coui/appcompat/grid/COUIPercentWidthListView;->o:I

    iget v4, p0, Lcom/coui/appcompat/grid/COUIPercentWidthListView;->s:I

    iget v5, p0, Lcom/coui/appcompat/grid/COUIPercentWidthListView;->t:I

    iget v6, p0, Lcom/coui/appcompat/grid/COUIPercentWidthListView;->w:I

    iget v7, p0, Lcom/coui/appcompat/grid/COUIPercentWidthListView;->q:I

    iget v8, p0, Lcom/coui/appcompat/grid/COUIPercentWidthListView;->r:I

    iget v9, p0, Lcom/coui/appcompat/grid/COUIPercentWidthListView;->x:I

    iget-boolean v10, p0, Lcom/coui/appcompat/grid/COUIPercentWidthListView;->u:Z

    const/4 v11, 0x0

    move-object v1, p0

    move v2, p1

    invoke-static/range {v1 .. v11}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->h(Landroid/view/View;IIIIIIIIZZ)I

    move-result p1

    goto :goto_3f

    :cond_20
    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingStart()I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/grid/COUIPercentWidthListView;->q:I

    if-ne v0, v1, :cond_30

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingEnd()I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/grid/COUIPercentWidthListView;->r:I

    if-eq v0, v1, :cond_3f

    :cond_30
    iget v0, p0, Lcom/coui/appcompat/grid/COUIPercentWidthListView;->q:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/grid/COUIPercentWidthListView;->r:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/ListView;->setPaddingRelative(IIII)V

    :cond_3f
    :goto_3f
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    return-void
.end method

.method public setIsParentChildHierarchy(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/grid/COUIPercentWidthListView;->u:Z

    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    return-void
.end method

.method public setMeasureEnable(Z)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LongLogTag"
        }
    .end annotation

    const-string v0, "setMeasureEnable = "

    const-string v1, " "

    invoke-static {v0, p1, v1}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "COUIPercentWidthListView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/coui/appcompat/grid/COUIPercentWidthListView;->y:Z

    return-void
.end method

.method public setPercentIndentEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/grid/COUIPercentWidthListView;->v:Z

    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    return-void
.end method
