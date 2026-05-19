.class public final Lcom/android/launcher3/allapps/branch/BranchLabelsView;
.super Landroid/view/ViewGroup;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/branch/BranchLabelsView$OnLabelClickListener;,
        Lcom/android/launcher3/allapps/branch/BranchLabelsView$LabelTextProvider;,
        Lcom/android/launcher3/allapps/branch/BranchLabelsView$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/allapps/branch/BranchLabelsView$Companion;

.field private static final KEY_DATA:I = 0x7f0a0107

.field private static final KEY_POSITION:I = 0x7f0a0108


# instance fields
.field private labelTextColor:Landroid/content/res/ColorStateList;

.field private lines:I

.field private mLabelBg:Landroid/graphics/drawable/Drawable;

.field private mLabelClickListener:Lcom/android/launcher3/allapps/branch/BranchLabelsView$OnLabelClickListener;

.field private mLabelHeight:I

.field private mLabelWidth:I

.field private final mLabels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mLineMargin:I

.field private mMaxColumns:I

.field private mMaxLines:I

.field private mTextSize:F

.field private mWordMargin:I

.field private textPaddingBottom:I

.field private textPaddingLeft:I

.field private textPaddingRight:I

.field private textPaddingTop:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/allapps/branch/BranchLabelsView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/branch/BranchLabelsView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->Companion:Lcom/android/launcher3/allapps/branch/BranchLabelsView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/allapps/branch/BranchLabelsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/allapps/branch/BranchLabelsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, -0x2

    iput p3, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->mLabelWidth:I

    iput p3, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->mLabelHeight:I

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->mLabels:Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->getAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_5

    const/4 p2, 0x0

    :cond_5
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_a

    const/4 p3, 0x0

    :cond_a
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/branch/BranchLabelsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final addLabel(Ljava/lang/Object;ILcom/android/launcher3/allapps/branch/BranchLabelsView$LabelTextProvider;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;I",
            "Lcom/android/launcher3/allapps/branch/BranchLabelsView$LabelTextProvider<",
            "TT;>;)V"
        }
    .end annotation

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->textPaddingLeft:I

    iget v2, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->textPaddingTop:I

    iget v3, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->textPaddingRight:I

    iget v4, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->textPaddingBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    iget v1, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->mTextSize:F

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->labelTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->mLabelBg:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_31

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    if-eqz v1, :cond_31

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_32

    :cond_31
    const/4 v1, 0x0

    :goto_32
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f0a0107

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    const v1, 0x7f0a0108

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v1, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->mLabelWidth:I

    iget v2, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->mLabelHeight:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    invoke-interface {p3, v0, p2, p1}, Lcom/android/launcher3/allapps/branch/BranchLabelsView$LabelTextProvider;->getLabelText(Landroid/widget/TextView;ILjava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final ensureLabelClickable()V
    .registers 6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_21

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const-string/jumbo v4, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->mLabelClickListener:Lcom/android/launcher3/allapps/branch/BranchLabelsView$OnLabelClickListener;

    if-eqz v4, :cond_1a

    const/4 v4, 0x1

    goto :goto_1b

    :cond_1a
    move v4, v1

    :goto_1b
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setClickable(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_21
    return-void
.end method

.method private final getAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    if-eqz p2, :cond_a5

    sget-object v0, Lcom/android/launcher3/R$styleable;->BranchLabelsView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0xc

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->mMaxLines:I

    const/16 p2, 0xb

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->mMaxColumns:I

    const/16 p2, 0x9

    iget v1, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->mLabelWidth:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->mLabelWidth:I

    const/4 p2, 0x2

    iget v1, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->mLabelHeight:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->mLabelHeight:I

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    goto :goto_3e

    :cond_38
    const/high16 p2, -0x1000000

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    :goto_3e
    iput-object p2, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->labelTextColor:Landroid/content/res/ColorStateList;

    const/16 p2, 0x8

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->mTextSize:F

    const/4 p2, 0x5

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->textPaddingLeft:I

    const/4 p2, 0x7

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->textPaddingTop:I

    const/4 p2, 0x6

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->textPaddingRight:I

    const/4 p2, 0x4

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->textPaddingBottom:I

    const/16 p2, 0xa

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->mLineMargin:I

    const/16 p2, 0xd

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->mWordMargin:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_95

    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eqz p2, :cond_8a

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_a0

    :cond_8a
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object p2, v0

    goto :goto_a0

    :cond_95
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0804e7

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :goto_a0
    iput-object p2, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->mLabelBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_a5
    return-void
.end method

.method private final measureSingleLine(II)V
    .registers 9

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_7
    if-ge v1, v0, :cond_2e

    iget v4, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->mMaxColumns:I

    if-lez v4, :cond_10

    if-ne v1, v4, :cond_10

    goto :goto_2e

    :cond_10
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v2

    add-int/lit8 v2, v0, -0x1

    if-eq v1, v2, :cond_23

    iget v2, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->mWordMargin:I

    add-int/2addr v5, v2

    :cond_23
    move v2, v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-ge v3, v4, :cond_2b

    move v3, v4

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_2e
    :goto_2e
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    add-int/2addr v1, v0

    invoke-direct {p0, p1, v1}, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->measureSize(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    add-int/2addr v1, v0

    invoke-direct {p0, p2, v1}, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->measureSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method private final measureSize(II)I
    .registers 6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/high16 v2, 0x40000000  # 2.0f

    if-ne v0, v2, :cond_e

    :goto_c
    move p2, v1

    goto :goto_15

    :cond_e
    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_15

    if-le p2, v1, :cond_15

    goto :goto_c

    :cond_15
    :goto_15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result p0

    if-ge p2, p0, :cond_1c

    move p2, p0

    :cond_1c
    const/4 p0, 0x0

    invoke-static {p2, p1, p0}, Landroid/view/ViewGroup;->resolveSizeAndState(III)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final getLabelTextColor()Landroid/content/res/ColorStateList;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->labelTextColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public final getLabelTextSize()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->mTextSize:F

    return p0
.end method

.method public final getLabels()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->mLabels:Ljava/util/List;

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.collections.List<T of com.android.launcher3.allapps.branch.BranchLabelsView.getLabels>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getLineMargin()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->mLineMargin:I

    return p0
.end method

.method public final getLines()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->lines:I

    return p0
.end method

.method public final getMaxColumns()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->mMaxColumns:I

    return p0
.end method

.method public final getTextPaddingBottom()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->textPaddingBottom:I

    return p0
.end method

.method public final getTextPaddingLeft()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->textPaddingLeft:I

    return p0
.end method

.method public final getTextPaddingRight()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->textPaddingRight:I

    return p0
.end method

.method public final getTextPaddingTop()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->textPaddingTop:I

    return p0
.end method

.method public final getWordMargin()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->mWordMargin:I

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_30

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->mLabelClickListener:Lcom/android/launcher3/allapps/branch/BranchLabelsView$OnLabelClickListener;

    if-eqz p0, :cond_30

    if-eqz p0, :cond_30

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0107

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f0a0108

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v2, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, v0, v1, p1}, Lcom/android/launcher3/allapps/branch/BranchLabelsView$OnLabelClickListener;->onLabelClick(Landroid/widget/TextView;Ljava/lang/Object;I)V

    :cond_30
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 14

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p3

    sub-int/2addr p4, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    const/4 p5, 0x1

    const/4 v0, 0x0

    move v3, p5

    move v1, v0

    move v2, v1

    move v4, v2

    :goto_13
    if-ge v1, p2, :cond_63

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v7

    add-int/2addr v7, v6

    if-lt p4, v7, :cond_2b

    iget v6, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->mMaxColumns:I

    if-lez v6, :cond_43

    if-ne v2, v6, :cond_43

    :cond_2b
    add-int/lit8 v3, v3, 0x1

    iget p1, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->mMaxLines:I

    if-gt p5, p1, :cond_35

    if-ge p1, v3, :cond_35

    move p1, p5

    goto :goto_36

    :cond_35
    move p1, v0

    :goto_36
    if-eqz p1, :cond_39

    goto :goto_63

    :cond_39
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p1

    iget v2, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->mLineMargin:I

    add-int/2addr p3, v2

    add-int/2addr p3, v4

    move v2, v0

    move v4, v2

    :cond_43
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, p1

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, p3

    invoke-virtual {v5, p1, p3, v6, v7}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, p1

    iget p1, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->mWordMargin:I

    add-int/2addr p1, v6

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-ge v4, v5, :cond_5f

    move v4, v5

    :cond_5f
    add-int/2addr v2, p5

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_63
    :goto_63
    return-void
.end method

.method public onMeasure(II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->measureSingleLine(II)V

    return-void
.end method

.method public final setLabelBackgroundColor(I)V
    .registers 3

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->setLabelBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setLabelBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 5

    iput-object p1, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->mLabelBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_7
    if-ge v0, p1, :cond_2b

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const-string/jumbo v2, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->mLabelBg:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_24

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    if-eqz v2, :cond_24

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_25

    :cond_24
    const/4 v2, 0x0

    :goto_25
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_2b
    return-void
.end method

.method public final setLabelBackgroundResource(I)V
    .registers 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->setLabelBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setLabelTextColor(I)V
    .registers 2

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->setLabelTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setLabelTextColor(Landroid/content/res/ColorStateList;)V
    .registers 5

    iput-object p1, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->labelTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_7
    if-ge v0, p1, :cond_1d

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const-string/jumbo v2, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->labelTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1d
    return-void
.end method

.method public final setLabelTextPadding(IIII)V
    .registers 9

    iget v0, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->textPaddingLeft:I

    if-ne v0, p1, :cond_10

    iget v0, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->textPaddingTop:I

    if-ne v0, p2, :cond_10

    iget v0, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->textPaddingRight:I

    if-ne v0, p3, :cond_10

    iget v0, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->textPaddingBottom:I

    if-eq v0, p4, :cond_31

    :cond_10
    iput p1, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->textPaddingLeft:I

    iput p2, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->textPaddingTop:I

    iput p3, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->textPaddingRight:I

    iput p4, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->textPaddingBottom:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1d
    if-ge v1, v0, :cond_31

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const-string/jumbo v3, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/widget/TextView;->setPadding(IIII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_31
    return-void
.end method

.method public final setLabelTextSize(F)V
    .registers 7

    iget v0, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->mTextSize:F

    cmpg-float v0, v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    move v0, v1

    :goto_a
    if-nez v0, :cond_27

    iput p1, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->mTextSize:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v2, v1

    :goto_13
    if-ge v2, v0, :cond_27

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const-string/jumbo v4, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_27
    return-void
.end method

.method public final setLabels(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "labels"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher3/allapps/branch/BranchLabelsView$setLabels$1;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/branch/BranchLabelsView$setLabels$1;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->setLabels(Ljava/util/List;Lcom/android/launcher3/allapps/branch/BranchLabelsView$LabelTextProvider;)V

    return-void
.end method

.method public final setLabels(Ljava/util/List;Lcom/android/launcher3/allapps/branch/BranchLabelsView$LabelTextProvider;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;",
            "Lcom/android/launcher3/allapps/branch/BranchLabelsView$LabelTextProvider<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "labels"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "provider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->mLabels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->mLabels:Ljava/util/List;

    invoke-static {p1}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_21
    if-ge v1, v0, :cond_2d

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2, v1, p2}, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->addLabel(Ljava/lang/Object;ILcom/android/launcher3/allapps/branch/BranchLabelsView$LabelTextProvider;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_2d
    invoke-direct {p0}, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->ensureLabelClickable()V

    return-void
.end method

.method public final setLineMargin(I)V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->mLineMargin:I

    if-eq v0, p1, :cond_9

    iput p1, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->mLineMargin:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_9
    return-void
.end method

.method public final setLines(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->lines:I

    return-void
.end method

.method public final setMaxColumns(I)V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->mMaxColumns:I

    if-eq v0, p1, :cond_9

    iput p1, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->mMaxColumns:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_9
    return-void
.end method

.method public final setOnLabelClickListener(Lcom/android/launcher3/allapps/branch/BranchLabelsView$OnLabelClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->mLabelClickListener:Lcom/android/launcher3/allapps/branch/BranchLabelsView$OnLabelClickListener;

    invoke-direct {p0}, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->ensureLabelClickable()V

    return-void
.end method

.method public final setTextPaddingBottom(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->textPaddingBottom:I

    return-void
.end method

.method public final setTextPaddingLeft(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->textPaddingLeft:I

    return-void
.end method

.method public final setTextPaddingRight(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->textPaddingRight:I

    return-void
.end method

.method public final setTextPaddingTop(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->textPaddingTop:I

    return-void
.end method

.method public final setWordMargin(I)V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->mWordMargin:I

    if-eq v0, p1, :cond_9

    iput p1, p0, Lcom/android/launcher3/allapps/branch/BranchLabelsView;->mWordMargin:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_9
    return-void
.end method
