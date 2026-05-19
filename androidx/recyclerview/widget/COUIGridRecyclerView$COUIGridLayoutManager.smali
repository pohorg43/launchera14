.class public Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;
.super Landroidx/recyclerview/widget/GridLayoutManager;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/COUIGridRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "COUIGridLayoutManager"
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/recyclerview/widget/COUIGridRecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/COUIGridRecyclerView;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->this$0:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    const/4 p1, 0x1

    invoke-direct {p0, p2, p1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/COUIGridRecyclerView;Landroid/content/Context;I)V
    .registers 4

    iput-object p1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->this$0:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-direct {p0, p2, p3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/COUIGridRecyclerView;Landroid/content/Context;IIZ)V
    .registers 6

    iput-object p1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->this$0:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/COUIGridRecyclerView;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    iput-object p1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->this$0:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private calculateChildHeight()F
    .registers 3

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->this$0:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v0}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->access$700(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2b

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->this$0:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v0}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->access$900(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_16

    return v1

    :cond_16
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->this$0:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v0}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->access$900(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->this$0:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->access$1000(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F

    move-result v1

    div-float/2addr v0, v1

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->this$0:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {p0}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->access$400(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F

    move-result p0

    mul-float/2addr p0, v0

    return p0

    :cond_2b
    iget-object p0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->this$0:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {p0}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->access$700(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F

    move-result p0

    return p0
.end method

.method private calculateInGridMode()V
    .registers 7

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->this$0:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v0}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->access$1200(Landroidx/recyclerview/widget/COUIGridRecyclerView;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    sget-object v0, Lcom/coui/component/responsiveui/layoutgrid/MarginType;->MARGIN_SMALL:Lcom/coui/component/responsiveui/layoutgrid/MarginType;

    goto :goto_e

    :cond_c
    sget-object v0, Lcom/coui/component/responsiveui/layoutgrid/MarginType;->MARGIN_LARGE:Lcom/coui/component/responsiveui/layoutgrid/MarginType;

    :goto_e
    new-instance v2, Lcom/coui/component/responsiveui/ResponsiveUIModel;

    iget-object v3, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->this$0:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->this$0:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/coui/component/responsiveui/ResponsiveUIModel;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v2, v0}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->chooseMargin(Lcom/coui/component/responsiveui/layoutgrid/MarginType;)Lcom/coui/component/responsiveui/ResponsiveUIModel;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->chooseMargin(Lcom/coui/component/responsiveui/layoutgrid/MarginType;)Lcom/coui/component/responsiveui/ResponsiveUIModel;

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->this$0:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v0}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->access$1300(Landroidx/recyclerview/widget/COUIGridRecyclerView;)I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v2, v5, v3}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->width(II)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->access$402(Landroidx/recyclerview/widget/COUIGridRecyclerView;F)F

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->this$0:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-virtual {v2}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->gutter()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->access$102(Landroidx/recyclerview/widget/COUIGridRecyclerView;F)F

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->this$0:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-virtual {v2}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->margin()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->access$502(Landroidx/recyclerview/widget/COUIGridRecyclerView;I)I

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->this$0:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-virtual {v2}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->columnCount()I

    move-result v1

    iget-object v2, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->this$0:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v2}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->access$1300(Landroidx/recyclerview/widget/COUIGridRecyclerView;)I

    move-result v2

    div-int/2addr v1, v2

    invoke-static {v0, v1}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->access$002(Landroidx/recyclerview/widget/COUIGridRecyclerView;I)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mChildWidth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->this$0:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->access$400(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " mHorizontalGap = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->this$0:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->access$100(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " mColumn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->this$0:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->access$000(Landroidx/recyclerview/widget/COUIGridRecyclerView;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mGridPadding = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->this$0:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->access$500(Landroidx/recyclerview/widget/COUIGridRecyclerView;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " getWidthWithoutPadding() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->getWidthWithoutPadding()I

    move-result p0

    const-string v1, "COUIGridRecyclerView"

    invoke-static {v0, p0, v1}, Landroidx/fragment/app/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void
.end method

.method private calculateInSpecificGapMode()V
    .registers 6

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->getWidthWithoutPadding()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->this$0:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->access$100(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F

    move-result v1

    add-float/2addr v1, v0

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->this$0:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v0}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->access$100(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F

    move-result v0

    iget-object v2, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->this$0:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v2}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->access$1000(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F

    move-result v2

    add-float/2addr v2, v0

    div-float/2addr v1, v2

    float-to-int v0, v1

    iget-object v1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->this$0:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    const/4 v2, 0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->access$002(Landroidx/recyclerview/widget/COUIGridRecyclerView;I)I

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->this$0:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->getWidthWithoutPadding()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->this$0:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v3}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->access$100(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F

    move-result v3

    iget-object v4, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->this$0:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v4}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->access$000(Landroidx/recyclerview/widget/COUIGridRecyclerView;)I

    move-result v4

    sub-int/2addr v4, v2

    int-to-float v2, v4

    mul-float/2addr v3, v2

    sub-float/2addr v1, v3

    iget-object v2, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->this$0:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v2}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->access$000(Landroidx/recyclerview/widget/COUIGridRecyclerView;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->access$402(Landroidx/recyclerview/widget/COUIGridRecyclerView;F)F

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->this$0:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->calculateChildHeight()F

    move-result p0

    invoke-static {v0, p0}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->access$702(Landroidx/recyclerview/widget/COUIGridRecyclerView;F)F

    return-void
.end method

.method private calculateInSpecificSizeMode()V
    .registers 6

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->getWidthWithoutPadding()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->this$0:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->access$1100(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F

    move-result v1

    add-float/2addr v1, v0

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->this$0:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v0}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->access$1100(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F

    move-result v0

    iget-object v2, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->this$0:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v2}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->access$400(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F

    move-result v2

    add-float/2addr v2, v0

    div-float/2addr v1, v2

    float-to-int v0, v1

    iget-object v1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->this$0:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    const/4 v2, 0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->access$002(Landroidx/recyclerview/widget/COUIGridRecyclerView;I)I

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->this$0:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->getWidthWithoutPadding()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->this$0:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v3}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->access$400(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F

    move-result v3

    iget-object v4, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->this$0:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v4}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->access$000(Landroidx/recyclerview/widget/COUIGridRecyclerView;)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    sub-float/2addr v1, v3

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->this$0:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {p0}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->access$000(Landroidx/recyclerview/widget/COUIGridRecyclerView;)I

    move-result p0

    sub-int/2addr p0, v2

    int-to-float p0, p0

    div-float/2addr v1, p0

    invoke-static {v0, v1}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->access$102(Landroidx/recyclerview/widget/COUIGridRecyclerView;F)F

    return-void
.end method

.method private getWidthWithoutPadding()I
    .registers 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingEnd()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public findReferenceChild(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;ZZ)Landroid/view/View;
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/GridLayoutManager;->findReferenceChild(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;ZZ)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getChildWidth()F
    .registers 1

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->this$0:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {p0}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->access$400(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F

    move-result p0

    return p0
.end method

.method public getColumnCount()I
    .registers 1

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->this$0:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {p0}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->access$000(Landroidx/recyclerview/widget/COUIGridRecyclerView;)I

    move-result p0

    return p0
.end method

.method public getHorizontalGap()F
    .registers 1

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->this$0:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {p0}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->access$100(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F

    move-result p0

    return p0
.end method

.method public layoutChunk(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;)V
    .registers 21

    move-object/from16 v6, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingStart()I

    move-result v0

    iget-object v1, v6, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->this$0:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->access$500(Landroidx/recyclerview/widget/COUIGridRecyclerView;)I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    if-eqz v0, :cond_1e

    array-length v0, v0

    iget-object v2, v6, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->this$0:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v2}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->access$000(Landroidx/recyclerview/widget/COUIGridRecyclerView;)I

    move-result v2

    if-eq v0, v2, :cond_28

    :cond_1e
    iget-object v0, v6, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->this$0:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v0}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->access$000(Landroidx/recyclerview/widget/COUIGridRecyclerView;)I

    move-result v0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    :cond_28
    const/4 v0, 0x0

    move v2, v0

    :goto_2a
    iget-object v3, v6, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->this$0:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v3}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->access$000(Landroidx/recyclerview/widget/COUIGridRecyclerView;)I

    move-result v3

    if-ge v2, v3, :cond_4a

    move-object/from16 v3, p2

    invoke-virtual {v7, v3}, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->hasMore(Landroidx/recyclerview/widget/RecyclerView$State;)Z

    move-result v4

    if-eqz v4, :cond_4a

    move-object/from16 v4, p1

    invoke-virtual {v7, v4}, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->next(Landroidx/recyclerview/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_43

    goto :goto_4a

    :cond_43
    iget-object v9, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aput-object v5, v9, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :cond_4a
    :goto_4a
    const/4 v3, 0x1

    if-nez v2, :cond_50

    iput-boolean v3, v8, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    return-void

    :cond_50
    iget v2, v7, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    if-ne v2, v3, :cond_55

    goto :goto_56

    :cond_55
    move v3, v0

    :goto_56
    const/4 v2, 0x0

    move v4, v0

    move v5, v2

    move v9, v5

    move v2, v4

    :goto_5b
    iget-object v10, v6, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->this$0:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v10}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->access$000(Landroidx/recyclerview/widget/COUIGridRecyclerView;)I

    move-result v10

    if-ge v0, v10, :cond_17c

    iget-object v10, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v10, v10, v0

    if-eqz v10, :cond_172

    iget-object v11, v7, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-nez v11, :cond_77

    if-eqz v3, :cond_73

    invoke-virtual {v6, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;)V

    goto :goto_80

    :cond_73
    invoke-virtual {v6, v10, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    goto :goto_80

    :cond_77
    if-eqz v3, :cond_7d

    invoke-virtual {v6, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addDisappearingView(Landroid/view/View;)V

    goto :goto_80

    :cond_7d
    invoke-virtual {v6, v10, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addDisappearingView(Landroid/view/View;I)V

    :goto_80
    iget-object v11, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v10, v11}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    iget-object v12, v11, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v13, v12, Landroid/graphics/Rect;->top:I

    iget v14, v12, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v13, v14

    iget-object v14, v6, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->this$0:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v14}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->access$600(Landroidx/recyclerview/widget/COUIGridRecyclerView;)Z

    move-result v14

    if-eqz v14, :cond_9c

    move v14, v4

    goto :goto_a1

    :cond_9c
    iget v14, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v15, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v14, v15

    :goto_a1
    add-int/2addr v13, v14

    iget v14, v12, Landroid/graphics/Rect;->left:I

    iget v15, v12, Landroid/graphics/Rect;->right:I

    add-int/2addr v14, v15

    iget-object v15, v6, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->this$0:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v15}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->access$600(Landroidx/recyclerview/widget/COUIGridRecyclerView;)Z

    move-result v15

    if-eqz v15, :cond_b0

    goto :goto_b5

    :cond_b0
    iget v4, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v15, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v15

    :goto_b5
    add-int/2addr v14, v4

    iget-object v4, v6, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->this$0:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v4}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->access$700(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F

    move-result v4

    cmpl-float v4, v4, v5

    if-nez v4, :cond_c8

    iget-object v4, v6, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->this$0:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    iget v5, v11, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    int-to-float v5, v5

    invoke-static {v4, v5}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->access$702(Landroidx/recyclerview/widget/COUIGridRecyclerView;F)F

    :cond_c8
    iget-object v4, v6, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->this$0:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v4}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->access$400(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F

    move-result v4

    add-float/2addr v4, v9

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v6, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->this$0:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v5}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->access$400(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F

    move-result v5

    sub-float/2addr v5, v4

    iget v9, v12, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    add-float/2addr v4, v9

    iget v9, v12, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    add-float/2addr v4, v9

    float-to-int v4, v4

    iget-object v9, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/OrientationHelper;->getModeInOther()I

    move-result v9

    iget v15, v11, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    move/from16 p1, v3

    const/4 v3, 0x0

    invoke-static {v4, v9, v14, v15, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v3

    iget-object v4, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeightMode()I

    move-result v9

    iget-object v15, v6, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->this$0:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v15}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->access$700(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F

    move-result v15

    float-to-int v15, v15

    move/from16 p2, v5

    const/4 v5, 0x1

    invoke-static {v4, v9, v13, v15, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v4

    invoke-virtual {v10, v3, v4}, Landroid/view/View;->measure(II)V

    iget-object v4, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4, v10}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v4

    const-string v5, "childWidthSpec = "

    invoke-static {v5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " horizontalInsets = "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " lp.leftMargin = "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  lp.rightMargin = "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " decorInsets = "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v12, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v12, Landroid/graphics/Rect;->right:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mCurrentPosition = "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v7, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " x = "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "COUIGridRecyclerView"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-le v4, v2, :cond_16f

    move v2, v4

    :cond_16f
    move/from16 v9, p2

    goto :goto_174

    :cond_172
    move/from16 p1, v3

    :goto_174
    add-int/lit8 v0, v0, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v3, p1

    goto/16 :goto_5b

    :cond_17c
    iput v2, v8, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v9, v0

    move v10, v1

    move v11, v2

    move v12, v3

    :goto_185
    iget-object v0, v6, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->this$0:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v0}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->access$000(Landroidx/recyclerview/widget/COUIGridRecyclerView;)I

    move-result v0

    if-ge v9, v0, :cond_21a

    iget-object v0, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v13, v0, v9

    if-eqz v13, :cond_216

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_1b0

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    sub-int/2addr v0, v10

    iget-object v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1, v13}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v1

    sub-int v1, v0, v1

    move v4, v0

    move v2, v1

    goto :goto_1b9

    :cond_1b0
    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0, v13}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v10

    move v4, v0

    move v2, v10

    :goto_1b9
    iget v0, v7, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1c7

    iget v0, v7, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    iget v1, v8, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int v1, v0, v1

    move v5, v0

    move v3, v1

    goto :goto_1ce

    :cond_1c7
    iget v0, v7, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    iget v1, v8, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int/2addr v1, v0

    move v3, v0

    move v5, v1

    :goto_1ce
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    iget-object v0, v6, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->this$0:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v0}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->access$400(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F

    move-result v0

    add-float/2addr v0, v11

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, v6, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->this$0:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->access$400(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F

    move-result v1

    int-to-float v2, v0

    sub-float/2addr v1, v2

    iget-object v2, v6, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->this$0:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v2}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->access$100(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F

    move-result v2

    add-float/2addr v2, v12

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, v6, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->this$0:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v3}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->access$100(Landroidx/recyclerview/widget/COUIGridRecyclerView;)F

    move-result v3

    int-to-float v4, v2

    sub-float/2addr v3, v4

    add-int/2addr v10, v2

    add-int/2addr v10, v0

    invoke-virtual {v14}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v0

    if-nez v0, :cond_208

    invoke-virtual {v14}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemChanged()Z

    move-result v0

    if-eqz v0, :cond_20b

    :cond_208
    const/4 v0, 0x1

    iput-boolean v0, v8, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    :cond_20b
    iget-boolean v0, v8, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    invoke-virtual {v13}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    or-int/2addr v0, v2

    iput-boolean v0, v8, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    move v11, v1

    move v12, v3

    :cond_216
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_185

    :cond_21a
    iget-object v0, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 5

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->this$0:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v0}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->access$800(Landroidx/recyclerview/widget/COUIGridRecyclerView;)I

    move-result v0

    if-eqz v0, :cond_17

    const/4 v1, 0x1

    if-eq v0, v1, :cond_13

    const/4 v1, 0x2

    if-eq v0, v1, :cond_f

    goto :goto_1a

    :cond_f
    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->calculateInSpecificSizeMode()V

    goto :goto_1a

    :cond_13
    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->calculateInSpecificGapMode()V

    goto :goto_1a

    :cond_17
    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->calculateInGridMode()V

    :goto_1a
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->this$0:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v0}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->access$000(Landroidx/recyclerview/widget/COUIGridRecyclerView;)I

    move-result v0

    if-lez v0, :cond_35

    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    iget-object v1, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->this$0:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->access$000(Landroidx/recyclerview/widget/COUIGridRecyclerView;)I

    move-result v1

    if-eq v0, v1, :cond_35

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIGridRecyclerView$COUIGridLayoutManager;->this$0:Landroidx/recyclerview/widget/COUIGridRecyclerView;

    invoke-static {v0}, Landroidx/recyclerview/widget/COUIGridRecyclerView;->access$000(Landroidx/recyclerview/widget/COUIGridRecyclerView;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    :cond_35
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    return-void
.end method
