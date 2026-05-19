.class public final Lcom/oplus/quickstep/views/OplusTaskHeaderIconLayout;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/oplus/quickstep/views/OplusTaskHeaderIconLayout;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/quickstep/views/OplusTaskHeaderIconLayout;

    invoke-direct {v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderIconLayout;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/views/OplusTaskHeaderIconLayout;->INSTANCE:Lcom/oplus/quickstep/views/OplusTaskHeaderIconLayout;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final onLayoutItem(Lcom/oplus/quickstep/views/OplusTaskHeaderView;)V
    .registers 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "headerView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTaskIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object v3

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMiniWindowBtn()Landroid/widget/ImageButton;

    move-result-object v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0808d8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v6, 0x7f0808d9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget-object v6, Lcom/oplus/quickstep/views/OplusTaskHeaderIconLayout;->INSTANCE:Lcom/oplus/quickstep/views/OplusTaskHeaderIconLayout;

    const-string v7, "resources"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v7, 0x7f070c0f

    invoke-virtual {v6, v0, v5, v7, v7}, Lcom/oplus/quickstep/views/OplusTaskHeaderIconLayout;->setViewWidthAndHeight(Landroid/view/View;Landroid/content/res/Resources;II)V

    const v7, 0x7f070c11

    const v8, 0x7f070302

    invoke-virtual {v6, v1, v5, v7, v8}, Lcom/oplus/quickstep/views/OplusTaskHeaderIconLayout;->setViewWidthAndHeight(Landroid/view/View;Landroid/content/res/Resources;II)V

    const v7, 0x7f070c13

    invoke-virtual {v6, v4, v5, v7, v7}, Lcom/oplus/quickstep/views/OplusTaskHeaderIconLayout;->setViewWidthAndHeight(Landroid/view/View;Landroid/content/res/Resources;II)V

    const v6, 0x7f070c10

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const v7, 0x7f070c12

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const v8, 0x7f070c0e

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result v8

    if-nez v8, :cond_bb

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result p0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {v0, v5, p0, v4, v8}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result p0

    add-int/2addr p0, v7

    invoke-virtual {v2}, Landroid/widget/TextView;->getTop()I

    move-result v0

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, p0

    invoke-virtual {v2}, Landroid/widget/TextView;->getBottom()I

    move-result v5

    invoke-virtual {v2, p0, v0, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getRight()I

    move-result p0

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getTop()I

    move-result v0

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, p0

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getBottom()I

    move-result v4

    invoke-virtual {v1, p0, v0, v2, v4}, Landroid/widget/ImageButton;->layout(IIII)V

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getRight()I

    move-result p0

    add-int/2addr p0, v6

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p0

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {v3, p0, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_117

    :cond_bb
    invoke-virtual {v4}, Landroid/widget/ImageButton;->getLeft()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p0

    add-int/2addr p0, v4

    sub-int/2addr p0, v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int v4, p0, v4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {v0, v4, v5, p0, v8}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result p0

    sub-int/2addr p0, v7

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    sub-int v0, p0, v0

    invoke-virtual {v2}, Landroid/widget/TextView;->getTop()I

    move-result v4

    invoke-virtual {v2}, Landroid/widget/TextView;->getBottom()I

    move-result v5

    invoke-virtual {v2, v0, v4, p0, v5}, Landroid/widget/TextView;->layout(IIII)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getLeft()I

    move-result p0

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    sub-int v0, p0, v0

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getTop()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getBottom()I

    move-result v4

    invoke-virtual {v1, v0, v2, p0, v4}, Landroid/widget/ImageButton;->layout(IIII)V

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getLeft()I

    move-result p0

    sub-int/2addr p0, v6

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, p0, v0

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {v3, v0, v1, p0, v2}, Landroid/view/View;->layout(IIII)V

    :goto_117
    return-void
.end method


# virtual methods
.method public final setViewWidthAndHeight(Landroid/view/View;Landroid/content/res/Resources;II)V
    .registers 5

    const-string p0, "view"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "resource"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method
