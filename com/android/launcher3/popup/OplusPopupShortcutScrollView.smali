.class public final Lcom/android/launcher3/popup/OplusPopupShortcutScrollView;
.super Lcom/coui/appcompat/scrollview/COUIScrollView;
.source ""


# instance fields
.field private final mScrollbarsTopAndBottomPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/coui/appcompat/scrollview/COUIScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070f7b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/popup/OplusPopupShortcutScrollView;->mScrollbarsTopAndBottomPadding:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/scrollview/COUIScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070f7b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/popup/OplusPopupShortcutScrollView;->mScrollbarsTopAndBottomPadding:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/scrollview/COUIScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070f7b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/popup/OplusPopupShortcutScrollView;->mScrollbarsTopAndBottomPadding:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/scrollview/COUIScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070f7b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/popup/OplusPopupShortcutScrollView;->mScrollbarsTopAndBottomPadding:I

    return-void
.end method


# virtual methods
.method public awakenScrollBars()Z
    .registers 1

    invoke-super {p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result p0

    return p0
.end method

.method public onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .registers 15

    iget v0, p0, Lcom/android/launcher3/popup/OplusPopupShortcutScrollView;->mScrollbarsTopAndBottomPadding:I

    add-int v5, p4, v0

    sub-int v7, p6, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v6, p5

    invoke-super/range {v1 .. v7}, Landroid/view/View;->onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 p0, 0x0

    return p0

    :cond_10
    invoke-super {p0, p1}, Lcom/coui/appcompat/scrollview/COUIScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final showScrollbar()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/popup/OplusPopupShortcutScrollView;->awakenScrollBars()Z

    return-void
.end method
