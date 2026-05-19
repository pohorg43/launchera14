.class public Landroidx/constraintlayout/core/state/ConstraintReference;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/constraintlayout/core/state/Reference;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/state/ConstraintReference$IncorrectConstraintException;,
        Landroidx/constraintlayout/core/state/ConstraintReference$ConstraintReferenceFactory;
    }
.end annotation


# instance fields
.field private key:Ljava/lang/Object;

.field public mAlpha:F

.field public mBaselineToBaseline:Ljava/lang/Object;

.field public mBaselineToBottom:Ljava/lang/Object;

.field public mBaselineToTop:Ljava/lang/Object;

.field public mBottomToBottom:Ljava/lang/Object;

.field public mBottomToTop:Ljava/lang/Object;

.field private mCircularAngle:F

.field public mCircularConstraint:Ljava/lang/Object;

.field private mCircularDistance:F

.field private mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field private mCustomColors:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomFloats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public mEndToEnd:Ljava/lang/Object;

.field public mEndToStart:Ljava/lang/Object;

.field public mFacade:Landroidx/constraintlayout/core/state/helpers/Facade;

.field public mHorizontalBias:F

.field public mHorizontalChainStyle:I

.field public mHorizontalChainWeight:F

.field public mHorizontalDimension:Landroidx/constraintlayout/core/state/Dimension;

.field public mLast:Landroidx/constraintlayout/core/state/State$Constraint;

.field public mLeftToLeft:Ljava/lang/Object;

.field public mLeftToRight:Ljava/lang/Object;

.field public mMarginBaseline:I

.field public mMarginBaselineGone:I

.field public mMarginBottom:I

.field public mMarginBottomGone:I

.field public mMarginEnd:I

.field public mMarginEndGone:I

.field public mMarginLeft:I

.field public mMarginLeftGone:I

.field public mMarginRight:I

.field public mMarginRightGone:I

.field public mMarginStart:I

.field public mMarginStartGone:I

.field public mMarginTop:I

.field public mMarginTopGone:I

.field public mPivotX:F

.field public mPivotY:F

.field public mRightToLeft:Ljava/lang/Object;

.field public mRightToRight:Ljava/lang/Object;

.field public mRotationX:F

.field public mRotationY:F

.field public mRotationZ:F

.field public mScaleX:F

.field public mScaleY:F

.field public mStartToEnd:Ljava/lang/Object;

.field public mStartToStart:Ljava/lang/Object;

.field public final mState:Landroidx/constraintlayout/core/state/State;

.field public mTag:Ljava/lang/String;

.field public mTopToBottom:Ljava/lang/Object;

.field public mTopToTop:Ljava/lang/Object;

.field public mTranslationX:F

.field public mTranslationY:F

.field public mTranslationZ:F

.field public mVerticalBias:F

.field public mVerticalChainStyle:I

.field public mVerticalChainWeight:F

.field public mVerticalDimension:Landroidx/constraintlayout/core/state/Dimension;

.field private mView:Ljava/lang/Object;

.field public mVisibility:I


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/state/State;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mTag:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mFacade:Landroidx/constraintlayout/core/state/helpers/Facade;

    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mHorizontalChainStyle:I

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mVerticalChainStyle:I

    const/high16 v2, -0x40800000  # -1.0f

    iput v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mHorizontalChainWeight:F

    iput v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mVerticalChainWeight:F

    const/high16 v2, 0x3f000000  # 0.5f

    iput v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mHorizontalBias:F

    iput v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mVerticalBias:F

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginLeft:I

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginRight:I

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginStart:I

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginEnd:I

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginTop:I

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginBottom:I

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginLeftGone:I

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginRightGone:I

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginStartGone:I

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginEndGone:I

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginTopGone:I

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginBottomGone:I

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginBaseline:I

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginBaselineGone:I

    const/high16 v2, 0x7fc00000  # Float.NaN

    iput v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mPivotX:F

    iput v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mPivotY:F

    iput v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mRotationX:F

    iput v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mRotationY:F

    iput v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mRotationZ:F

    iput v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mTranslationX:F

    iput v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mTranslationY:F

    iput v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mTranslationZ:F

    iput v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mAlpha:F

    iput v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mScaleX:F

    iput v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mScaleY:F

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mVisibility:I

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLeftToLeft:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLeftToRight:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mRightToLeft:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mRightToRight:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mStartToStart:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mStartToEnd:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mEndToStart:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mEndToEnd:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mTopToTop:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mTopToBottom:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBottomToTop:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBottomToBottom:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBaselineToBaseline:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBaselineToTop:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBaselineToBottom:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mCircularConstraint:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    sget-object v0, Landroidx/constraintlayout/core/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    invoke-static {v0}, Landroidx/constraintlayout/core/state/Dimension;->Fixed(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/Dimension;

    move-result-object v1

    iput-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mHorizontalDimension:Landroidx/constraintlayout/core/state/Dimension;

    invoke-static {v0}, Landroidx/constraintlayout/core/state/Dimension;->Fixed(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/Dimension;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mVerticalDimension:Landroidx/constraintlayout/core/state/Dimension;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mCustomColors:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mCustomFloats:Ljava/util/HashMap;

    iput-object p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mState:Landroidx/constraintlayout/core/state/State;

    return-void
.end method

.method private applyConnection(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Constraint;)V
    .registers 10

    invoke-direct {p0, p2}, Landroidx/constraintlayout/core/state/ConstraintReference;->getTarget(Ljava/lang/Object;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v2

    if-nez v2, :cond_7

    return-void

    :cond_7
    sget-object p2, Landroidx/constraintlayout/core/state/ConstraintReference$1;->$SwitchMap$androidx$constraintlayout$core$state$State$Constraint:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, p2, v0

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p2, p2, p3

    const/4 p3, 0x0

    packed-switch p2, :pswitch_data_138

    goto/16 :goto_136

    :pswitch_1b  #0x10
    iget p2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mCircularAngle:F

    iget p0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mCircularDistance:F

    float-to-int p0, p0

    invoke-virtual {p1, v2, p2, p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connectCircularConstraint(Landroidx/constraintlayout/core/widgets/ConstraintWidget;FI)V

    goto/16 :goto_136

    :pswitch_25  #0xf
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    iget v4, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginBaseline:I

    iget v5, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginBaselineGone:I

    move-object v0, p1

    move-object v1, v3

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    goto/16 :goto_136

    :pswitch_32  #0xe
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    iget v4, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginBaseline:I

    iget v5, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginBaselineGone:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    goto/16 :goto_136

    :pswitch_40  #0xd
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    iget v4, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginBaseline:I

    iget v5, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginBaselineGone:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    goto/16 :goto_136

    :pswitch_4e  #0xc
    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object p1

    invoke-virtual {v2, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object p2

    iget v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginBottom:I

    iget p0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginBottomGone:I

    invoke-virtual {p1, p2, v0, p0, p3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIZ)Z

    goto/16 :goto_136

    :pswitch_61  #0xb
    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object p1

    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object p2

    iget v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginBottom:I

    iget p0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginBottomGone:I

    invoke-virtual {p1, p2, v0, p0, p3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIZ)Z

    goto/16 :goto_136

    :pswitch_76  #0xa
    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object p1

    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object p2

    iget v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginTop:I

    iget p0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginTopGone:I

    invoke-virtual {p1, p2, v0, p0, p3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIZ)Z

    goto/16 :goto_136

    :pswitch_8b  #0x9
    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object p1

    invoke-virtual {v2, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object p2

    iget v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginTop:I

    iget p0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginTopGone:I

    invoke-virtual {p1, p2, v0, p0, p3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIZ)Z

    goto/16 :goto_136

    :pswitch_9e  #0x8
    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object p1

    invoke-virtual {v2, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object p2

    iget v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginEnd:I

    iget p0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginEndGone:I

    invoke-virtual {p1, p2, v0, p0, p3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIZ)Z

    goto/16 :goto_136

    :pswitch_b1  #0x7
    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object p1

    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object p2

    iget v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginEnd:I

    iget p0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginEndGone:I

    invoke-virtual {p1, p2, v0, p0, p3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIZ)Z

    goto :goto_136

    :pswitch_c5  #0x6
    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object p1

    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object p2

    iget v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginStart:I

    iget p0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginStartGone:I

    invoke-virtual {p1, p2, v0, p0, p3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIZ)Z

    goto :goto_136

    :pswitch_d9  #0x5
    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object p1

    invoke-virtual {v2, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object p2

    iget v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginStart:I

    iget p0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginStartGone:I

    invoke-virtual {p1, p2, v0, p0, p3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIZ)Z

    goto :goto_136

    :pswitch_eb  #0x4
    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object p1

    invoke-virtual {v2, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object p2

    iget v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginRight:I

    iget p0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginRightGone:I

    invoke-virtual {p1, p2, v0, p0, p3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIZ)Z

    goto :goto_136

    :pswitch_fd  #0x3
    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object p1

    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object p2

    iget v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginRight:I

    iget p0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginRightGone:I

    invoke-virtual {p1, p2, v0, p0, p3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIZ)Z

    goto :goto_136

    :pswitch_111  #0x2
    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object p1

    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object p2

    iget v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginLeft:I

    iget p0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginLeftGone:I

    invoke-virtual {p1, p2, v0, p0, p3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIZ)Z

    goto :goto_136

    :pswitch_125  #0x1
    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object p1

    invoke-virtual {v2, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object p2

    iget v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginLeft:I

    iget p0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginLeftGone:I

    invoke-virtual {p1, p2, v0, p0, p3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIZ)Z

    :goto_136
    return-void

    nop

    :pswitch_data_138
    .packed-switch 0x1
        :pswitch_125  #00000001
        :pswitch_111  #00000002
        :pswitch_fd  #00000003
        :pswitch_eb  #00000004
        :pswitch_d9  #00000005
        :pswitch_c5  #00000006
        :pswitch_b1  #00000007
        :pswitch_9e  #00000008
        :pswitch_8b  #00000009
        :pswitch_76  #0000000a
        :pswitch_61  #0000000b
        :pswitch_4e  #0000000c
        :pswitch_40  #0000000d
        :pswitch_32  #0000000e
        :pswitch_25  #0000000f
        :pswitch_1b  #00000010
    .end packed-switch
.end method

.method private dereference()V
    .registers 2

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLeftToLeft:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLeftToLeft:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLeftToRight:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLeftToRight:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mRightToLeft:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mRightToLeft:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mRightToRight:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mRightToRight:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mStartToStart:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mStartToStart:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mStartToEnd:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mStartToEnd:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mEndToStart:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mEndToStart:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mEndToEnd:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mEndToEnd:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mTopToTop:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mTopToTop:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mTopToBottom:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mTopToBottom:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBottomToTop:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBottomToTop:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBottomToBottom:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBottomToBottom:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBaselineToBaseline:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBaselineToBaseline:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBaselineToTop:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBaselineToTop:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBaselineToBottom:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBaselineToBottom:Ljava/lang/Object;

    return-void
.end method

.method private get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    instance-of v0, p1, Landroidx/constraintlayout/core/state/ConstraintReference;

    if-nez v0, :cond_f

    iget-object p0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mState:Landroidx/constraintlayout/core/state/State;

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/state/State;->reference(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/Reference;

    move-result-object p0

    return-object p0

    :cond_f
    return-object p1
.end method

.method private getTarget(Ljava/lang/Object;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .registers 2

    instance-of p0, p1, Landroidx/constraintlayout/core/state/Reference;

    if-eqz p0, :cond_b

    check-cast p1, Landroidx/constraintlayout/core/state/Reference;

    invoke-interface {p1}, Landroidx/constraintlayout/core/state/Reference;->getConstraintWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public addCustomColor(Ljava/lang/String;I)V
    .registers 3

    iget-object p0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mCustomColors:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addCustomFloat(Ljava/lang/String;F)V
    .registers 4

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mCustomFloats:Ljava/util/HashMap;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mCustomFloats:Ljava/util/HashMap;

    :cond_b
    iget-object p0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mCustomFloats:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public alpha(F)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 2

    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mAlpha:F

    return-object p0
.end method

.method public apply()V
    .registers 6

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mFacade:Landroidx/constraintlayout/core/state/helpers/Facade;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Landroidx/constraintlayout/core/state/helpers/Facade;->apply()V

    :cond_c
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mHorizontalDimension:Landroidx/constraintlayout/core/state/Dimension;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mState:Landroidx/constraintlayout/core/state/State;

    iget-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroidx/constraintlayout/core/state/Dimension;->apply(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)V

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mVerticalDimension:Landroidx/constraintlayout/core/state/Dimension;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mState:Landroidx/constraintlayout/core/state/State;

    iget-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroidx/constraintlayout/core/state/Dimension;->apply(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)V

    invoke-direct {p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->dereference()V

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLeftToLeft:Ljava/lang/Object;

    sget-object v2, Landroidx/constraintlayout/core/state/State$Constraint;->LEFT_TO_LEFT:Landroidx/constraintlayout/core/state/State$Constraint;

    invoke-direct {p0, v0, v1, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->applyConnection(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Constraint;)V

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLeftToRight:Ljava/lang/Object;

    sget-object v2, Landroidx/constraintlayout/core/state/State$Constraint;->LEFT_TO_RIGHT:Landroidx/constraintlayout/core/state/State$Constraint;

    invoke-direct {p0, v0, v1, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->applyConnection(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Constraint;)V

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mRightToLeft:Ljava/lang/Object;

    sget-object v2, Landroidx/constraintlayout/core/state/State$Constraint;->RIGHT_TO_LEFT:Landroidx/constraintlayout/core/state/State$Constraint;

    invoke-direct {p0, v0, v1, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->applyConnection(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Constraint;)V

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mRightToRight:Ljava/lang/Object;

    sget-object v2, Landroidx/constraintlayout/core/state/State$Constraint;->RIGHT_TO_RIGHT:Landroidx/constraintlayout/core/state/State$Constraint;

    invoke-direct {p0, v0, v1, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->applyConnection(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Constraint;)V

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mStartToStart:Ljava/lang/Object;

    sget-object v2, Landroidx/constraintlayout/core/state/State$Constraint;->START_TO_START:Landroidx/constraintlayout/core/state/State$Constraint;

    invoke-direct {p0, v0, v1, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->applyConnection(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Constraint;)V

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mStartToEnd:Ljava/lang/Object;

    sget-object v2, Landroidx/constraintlayout/core/state/State$Constraint;->START_TO_END:Landroidx/constraintlayout/core/state/State$Constraint;

    invoke-direct {p0, v0, v1, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->applyConnection(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Constraint;)V

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mEndToStart:Ljava/lang/Object;

    sget-object v2, Landroidx/constraintlayout/core/state/State$Constraint;->END_TO_START:Landroidx/constraintlayout/core/state/State$Constraint;

    invoke-direct {p0, v0, v1, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->applyConnection(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Constraint;)V

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mEndToEnd:Ljava/lang/Object;

    sget-object v2, Landroidx/constraintlayout/core/state/State$Constraint;->END_TO_END:Landroidx/constraintlayout/core/state/State$Constraint;

    invoke-direct {p0, v0, v1, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->applyConnection(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Constraint;)V

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mTopToTop:Ljava/lang/Object;

    sget-object v2, Landroidx/constraintlayout/core/state/State$Constraint;->TOP_TO_TOP:Landroidx/constraintlayout/core/state/State$Constraint;

    invoke-direct {p0, v0, v1, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->applyConnection(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Constraint;)V

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mTopToBottom:Ljava/lang/Object;

    sget-object v2, Landroidx/constraintlayout/core/state/State$Constraint;->TOP_TO_BOTTOM:Landroidx/constraintlayout/core/state/State$Constraint;

    invoke-direct {p0, v0, v1, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->applyConnection(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Constraint;)V

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBottomToTop:Ljava/lang/Object;

    sget-object v2, Landroidx/constraintlayout/core/state/State$Constraint;->BOTTOM_TO_TOP:Landroidx/constraintlayout/core/state/State$Constraint;

    invoke-direct {p0, v0, v1, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->applyConnection(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Constraint;)V

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBottomToBottom:Ljava/lang/Object;

    sget-object v2, Landroidx/constraintlayout/core/state/State$Constraint;->BOTTOM_TO_BOTTOM:Landroidx/constraintlayout/core/state/State$Constraint;

    invoke-direct {p0, v0, v1, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->applyConnection(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Constraint;)V

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBaselineToBaseline:Ljava/lang/Object;

    sget-object v2, Landroidx/constraintlayout/core/state/State$Constraint;->BASELINE_TO_BASELINE:Landroidx/constraintlayout/core/state/State$Constraint;

    invoke-direct {p0, v0, v1, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->applyConnection(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Constraint;)V

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBaselineToTop:Ljava/lang/Object;

    sget-object v2, Landroidx/constraintlayout/core/state/State$Constraint;->BASELINE_TO_TOP:Landroidx/constraintlayout/core/state/State$Constraint;

    invoke-direct {p0, v0, v1, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->applyConnection(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Constraint;)V

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBaselineToBottom:Ljava/lang/Object;

    sget-object v2, Landroidx/constraintlayout/core/state/State$Constraint;->BASELINE_TO_BOTTOM:Landroidx/constraintlayout/core/state/State$Constraint;

    invoke-direct {p0, v0, v1, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->applyConnection(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Constraint;)V

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mCircularConstraint:Ljava/lang/Object;

    sget-object v2, Landroidx/constraintlayout/core/state/State$Constraint;->CIRCULAR_CONSTRAINT:Landroidx/constraintlayout/core/state/State$Constraint;

    invoke-direct {p0, v0, v1, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->applyConnection(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Constraint;)V

    iget v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mHorizontalChainStyle:I

    if-eqz v0, :cond_bc

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalChainStyle(I)V

    :cond_bc
    iget v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mVerticalChainStyle:I

    if-eqz v0, :cond_c5

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalChainStyle(I)V

    :cond_c5
    iget v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mHorizontalChainWeight:F

    const/high16 v1, -0x40800000  # -1.0f

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_d2

    iget-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v2, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalWeight(F)V

    :cond_d2
    iget v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mVerticalChainWeight:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_dd

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalWeight(F)V

    :cond_dd
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mHorizontalBias:F

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalBiasPercent(F)V

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mVerticalBias:F

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalBiasPercent(F)V

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->frame:Landroidx/constraintlayout/core/state/WidgetFrame;

    iget v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mPivotX:F

    iput v2, v1, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotX:F

    iget v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mPivotY:F

    iput v2, v1, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotY:F

    iget v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mRotationX:F

    iput v2, v1, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationX:F

    iget v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mRotationY:F

    iput v2, v1, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationY:F

    iget v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mRotationZ:F

    iput v2, v1, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationZ:F

    iget v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mTranslationX:F

    iput v2, v1, Landroidx/constraintlayout/core/state/WidgetFrame;->translationX:F

    iget v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mTranslationY:F

    iput v2, v1, Landroidx/constraintlayout/core/state/WidgetFrame;->translationY:F

    iget v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mTranslationZ:F

    iput v2, v1, Landroidx/constraintlayout/core/state/WidgetFrame;->translationZ:F

    iget v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mScaleX:F

    iput v2, v1, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleX:F

    iget v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mScaleY:F

    iput v2, v1, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleY:F

    iget v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mAlpha:F

    iput v2, v1, Landroidx/constraintlayout/core/state/WidgetFrame;->alpha:F

    iget v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mVisibility:I

    iput v2, v1, Landroidx/constraintlayout/core/state/WidgetFrame;->visibility:I

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVisibility(I)V

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mCustomColors:Ljava/util/HashMap;

    if-eqz v0, :cond_150

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_150

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mCustomColors:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->frame:Landroidx/constraintlayout/core/state/WidgetFrame;

    const/16 v4, 0x386

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v1, v4, v2}, Landroidx/constraintlayout/core/state/WidgetFrame;->setCustomAttribute(Ljava/lang/String;II)V

    goto :goto_12e

    :cond_150
    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mCustomFloats:Ljava/util/HashMap;

    if-eqz v0, :cond_17e

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mCustomFloats:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->frame:Landroidx/constraintlayout/core/state/WidgetFrame;

    const/16 v4, 0x385

    invoke-virtual {v3, v1, v4, v2}, Landroidx/constraintlayout/core/state/WidgetFrame;->setCustomAttribute(Ljava/lang/String;IF)V

    goto :goto_15c

    :cond_17e
    return-void
.end method

.method public baseline()Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 2

    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->BASELINE_TO_BASELINE:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    return-object p0
.end method

.method public baselineToBaseline(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 3

    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->BASELINE_TO_BASELINE:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBaselineToBaseline:Ljava/lang/Object;

    return-object p0
.end method

.method public baselineToBottom(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 3

    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->BASELINE_TO_BOTTOM:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBaselineToBottom:Ljava/lang/Object;

    return-object p0
.end method

.method public baselineToTop(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 3

    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->BASELINE_TO_TOP:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBaselineToTop:Ljava/lang/Object;

    return-object p0
.end method

.method public bias(F)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 4

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    sget-object v1, Landroidx/constraintlayout/core/state/ConstraintReference$1;->$SwitchMap$androidx$constraintlayout$core$state$State$Constraint:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/16 v1, 0x11

    if-eq v0, v1, :cond_1c

    const/16 v1, 0x12

    if-eq v0, v1, :cond_19

    packed-switch v0, :pswitch_data_20

    goto :goto_1e

    :cond_19
    :pswitch_19  #0x9, 0xa, 0xb, 0xc
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mVerticalBias:F

    goto :goto_1e

    :cond_1c
    :pswitch_1c  #0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mHorizontalBias:F

    :goto_1e
    return-object p0

    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1c  #00000001
        :pswitch_1c  #00000002
        :pswitch_1c  #00000003
        :pswitch_1c  #00000004
        :pswitch_1c  #00000005
        :pswitch_1c  #00000006
        :pswitch_1c  #00000007
        :pswitch_1c  #00000008
        :pswitch_19  #00000009
        :pswitch_19  #0000000a
        :pswitch_19  #0000000b
        :pswitch_19  #0000000c
    .end packed-switch
.end method

.method public bottom()Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 2

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBottomToTop:Ljava/lang/Object;

    if-eqz v0, :cond_9

    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->BOTTOM_TO_TOP:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    goto :goto_d

    :cond_9
    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->BOTTOM_TO_BOTTOM:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    :goto_d
    return-object p0
.end method

.method public bottomToBottom(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 3

    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->BOTTOM_TO_BOTTOM:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBottomToBottom:Ljava/lang/Object;

    return-object p0
.end method

.method public bottomToTop(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 3

    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->BOTTOM_TO_TOP:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBottomToTop:Ljava/lang/Object;

    return-object p0
.end method

.method public centerHorizontally(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 2

    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mStartToStart:Ljava/lang/Object;

    iput-object p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mEndToEnd:Ljava/lang/Object;

    sget-object p1, Landroidx/constraintlayout/core/state/State$Constraint;->CENTER_HORIZONTALLY:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    const/high16 p1, 0x3f000000  # 0.5f

    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mHorizontalBias:F

    return-object p0
.end method

.method public centerVertically(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 2

    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mTopToTop:Ljava/lang/Object;

    iput-object p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBottomToBottom:Ljava/lang/Object;

    sget-object p1, Landroidx/constraintlayout/core/state/State$Constraint;->CENTER_VERTICALLY:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    const/high16 p1, 0x3f000000  # 0.5f

    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mVerticalBias:F

    return-object p0
.end method

.method public circularConstraint(Ljava/lang/Object;FF)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 4

    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/state/ConstraintReference;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mCircularConstraint:Ljava/lang/Object;

    iput p2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mCircularAngle:F

    iput p3, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mCircularDistance:F

    sget-object p1, Landroidx/constraintlayout/core/state/State$Constraint;->CIRCULAR_CONSTRAINT:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    return-object p0
.end method

.method public clear()Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 5

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_50

    sget-object v3, Landroidx/constraintlayout/core/state/ConstraintReference$1;->$SwitchMap$androidx$constraintlayout$core$state$State$Constraint:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_8c

    :pswitch_11  #0xd, 0xe
    goto/16 :goto_8a

    :pswitch_13  #0x10
    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mCircularConstraint:Ljava/lang/Object;

    goto/16 :goto_8a

    :pswitch_17  #0xf
    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBaselineToBaseline:Ljava/lang/Object;

    goto :goto_8a

    :pswitch_1a  #0xb, 0xc
    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBottomToTop:Ljava/lang/Object;

    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBottomToBottom:Ljava/lang/Object;

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginBottom:I

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginBottomGone:I

    goto :goto_8a

    :pswitch_23  #0x9, 0xa
    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mTopToTop:Ljava/lang/Object;

    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mTopToBottom:Ljava/lang/Object;

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginTop:I

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginTopGone:I

    goto :goto_8a

    :pswitch_2c  #0x7, 0x8
    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mEndToStart:Ljava/lang/Object;

    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mEndToEnd:Ljava/lang/Object;

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginEnd:I

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginEndGone:I

    goto :goto_8a

    :pswitch_35  #0x5, 0x6
    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mStartToStart:Ljava/lang/Object;

    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mStartToEnd:Ljava/lang/Object;

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginStart:I

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginStartGone:I

    goto :goto_8a

    :pswitch_3e  #0x3, 0x4
    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mRightToLeft:Ljava/lang/Object;

    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mRightToRight:Ljava/lang/Object;

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginRight:I

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginRightGone:I

    goto :goto_8a

    :pswitch_47  #0x1, 0x2
    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLeftToLeft:Ljava/lang/Object;

    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLeftToRight:Ljava/lang/Object;

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginLeft:I

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginLeftGone:I

    goto :goto_8a

    :cond_50
    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLeftToLeft:Ljava/lang/Object;

    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLeftToRight:Ljava/lang/Object;

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginLeft:I

    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mRightToLeft:Ljava/lang/Object;

    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mRightToRight:Ljava/lang/Object;

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginRight:I

    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mStartToStart:Ljava/lang/Object;

    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mStartToEnd:Ljava/lang/Object;

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginStart:I

    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mEndToStart:Ljava/lang/Object;

    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mEndToEnd:Ljava/lang/Object;

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginEnd:I

    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mTopToTop:Ljava/lang/Object;

    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mTopToBottom:Ljava/lang/Object;

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginTop:I

    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBottomToTop:Ljava/lang/Object;

    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBottomToBottom:Ljava/lang/Object;

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginBottom:I

    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mBaselineToBaseline:Ljava/lang/Object;

    iput-object v2, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mCircularConstraint:Ljava/lang/Object;

    const/high16 v0, 0x3f000000  # 0.5f

    iput v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mHorizontalBias:F

    iput v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mVerticalBias:F

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginLeftGone:I

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginRightGone:I

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginStartGone:I

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginEndGone:I

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginTopGone:I

    iput v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginBottomGone:I

    :goto_8a
    return-object p0

    nop

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_47  #00000001
        :pswitch_47  #00000002
        :pswitch_3e  #00000003
        :pswitch_3e  #00000004
        :pswitch_35  #00000005
        :pswitch_35  #00000006
        :pswitch_2c  #00000007
        :pswitch_2c  #00000008
        :pswitch_23  #00000009
        :pswitch_23  #0000000a
        :pswitch_1a  #0000000b
        :pswitch_1a  #0000000c
        :pswitch_11  #0000000d
        :pswitch_11  #0000000e
        :pswitch_17  #0000000f
        :pswitch_13  #00000010
    .end packed-switch
.end method

.method public clearHorizontal()Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 2

    invoke-virtual {p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->start()Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->clear()Landroidx/constraintlayout/core/state/ConstraintReference;

    invoke-virtual {p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->end()Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->clear()Landroidx/constraintlayout/core/state/ConstraintReference;

    invoke-virtual {p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->left()Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->clear()Landroidx/constraintlayout/core/state/ConstraintReference;

    invoke-virtual {p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->right()Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->clear()Landroidx/constraintlayout/core/state/ConstraintReference;

    return-object p0
.end method

.method public clearVertical()Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 2

    invoke-virtual {p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->top()Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->clear()Landroidx/constraintlayout/core/state/ConstraintReference;

    invoke-virtual {p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->baseline()Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->clear()Landroidx/constraintlayout/core/state/ConstraintReference;

    invoke-virtual {p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->bottom()Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->clear()Landroidx/constraintlayout/core/state/ConstraintReference;

    return-object p0
.end method

.method public createConstraintWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .registers 3

    new-instance v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->getWidth()Landroidx/constraintlayout/core/state/Dimension;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/constraintlayout/core/state/Dimension;->getValue()I

    move-result v1

    invoke-virtual {p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->getHeight()Landroidx/constraintlayout/core/state/Dimension;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/constraintlayout/core/state/Dimension;->getValue()I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;-><init>(II)V

    return-object v0
.end method

.method public end()Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 2

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mEndToStart:Ljava/lang/Object;

    if-eqz v0, :cond_9

    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->END_TO_START:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    goto :goto_d

    :cond_9
    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->END_TO_END:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    :goto_d
    return-object p0
.end method

.method public endToEnd(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 3

    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->END_TO_END:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mEndToEnd:Ljava/lang/Object;

    return-object p0
.end method

.method public endToStart(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 3

    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->END_TO_START:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mEndToStart:Ljava/lang/Object;

    return-object p0
.end method

.method public getAlpha()F
    .registers 1

    iget p0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mAlpha:F

    return p0
.end method

.method public getConstraintWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .registers 3

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-nez v0, :cond_f

    invoke-virtual {p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->createConstraintWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mView:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setCompanionWidget(Ljava/lang/Object;)V

    :cond_f
    iget-object p0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    return-object p0
.end method

.method public getFacade()Landroidx/constraintlayout/core/state/helpers/Facade;
    .registers 1

    iget-object p0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mFacade:Landroidx/constraintlayout/core/state/helpers/Facade;

    return-object p0
.end method

.method public getHeight()Landroidx/constraintlayout/core/state/Dimension;
    .registers 1

    iget-object p0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mVerticalDimension:Landroidx/constraintlayout/core/state/Dimension;

    return-object p0
.end method

.method public getHorizontalChainStyle()I
    .registers 1

    iget p0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mHorizontalChainStyle:I

    return p0
.end method

.method public getHorizontalChainWeight()F
    .registers 1

    iget p0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mHorizontalChainWeight:F

    return p0
.end method

.method public getKey()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->key:Ljava/lang/Object;

    return-object p0
.end method

.method public getPivotX()F
    .registers 1

    iget p0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mPivotX:F

    return p0
.end method

.method public getPivotY()F
    .registers 1

    iget p0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mPivotY:F

    return p0
.end method

.method public getRotationX()F
    .registers 1

    iget p0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mRotationX:F

    return p0
.end method

.method public getRotationY()F
    .registers 1

    iget p0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mRotationY:F

    return p0
.end method

.method public getRotationZ()F
    .registers 1

    iget p0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mRotationZ:F

    return p0
.end method

.method public getScaleX()F
    .registers 1

    iget p0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mScaleX:F

    return p0
.end method

.method public getScaleY()F
    .registers 1

    iget p0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mScaleY:F

    return p0
.end method

.method public getTag()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public getTranslationX()F
    .registers 1

    iget p0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mTranslationX:F

    return p0
.end method

.method public getTranslationY()F
    .registers 1

    iget p0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mTranslationY:F

    return p0
.end method

.method public getTranslationZ()F
    .registers 1

    iget p0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mTranslationZ:F

    return p0
.end method

.method public getVerticalChainStyle(I)I
    .registers 2

    iget p0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mVerticalChainStyle:I

    return p0
.end method

.method public getVerticalChainWeight()F
    .registers 1

    iget p0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mVerticalChainWeight:F

    return p0
.end method

.method public getView()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mView:Ljava/lang/Object;

    return-object p0
.end method

.method public getWidth()Landroidx/constraintlayout/core/state/Dimension;
    .registers 1

    iget-object p0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mHorizontalDimension:Landroidx/constraintlayout/core/state/Dimension;

    return-object p0
.end method

.method public height(Landroidx/constraintlayout/core/state/Dimension;)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 2

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/state/ConstraintReference;->setHeight(Landroidx/constraintlayout/core/state/Dimension;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object p0

    return-object p0
.end method

.method public horizontalBias(F)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 2

    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mHorizontalBias:F

    return-object p0
.end method

.method public left()Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 2

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLeftToLeft:Ljava/lang/Object;

    if-eqz v0, :cond_9

    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->LEFT_TO_LEFT:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    goto :goto_d

    :cond_9
    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->LEFT_TO_RIGHT:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    :goto_d
    return-object p0
.end method

.method public leftToLeft(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 3

    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->LEFT_TO_LEFT:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLeftToLeft:Ljava/lang/Object;

    return-object p0
.end method

.method public leftToRight(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 3

    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->LEFT_TO_RIGHT:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLeftToRight:Ljava/lang/Object;

    return-object p0
.end method

.method public margin(I)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 4

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    if-eqz v0, :cond_29

    sget-object v1, Landroidx/constraintlayout/core/state/ConstraintReference$1;->$SwitchMap$androidx$constraintlayout$core$state$State$Constraint:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_36

    goto :goto_35

    :pswitch_10  #0x10
    int-to-float p1, p1

    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mCircularDistance:F

    goto :goto_35

    :pswitch_14  #0xd, 0xe, 0xf
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginBaseline:I

    goto :goto_35

    :pswitch_17  #0xb, 0xc
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginBottom:I

    goto :goto_35

    :pswitch_1a  #0x9, 0xa
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginTop:I

    goto :goto_35

    :pswitch_1d  #0x7, 0x8
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginEnd:I

    goto :goto_35

    :pswitch_20  #0x5, 0x6
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginStart:I

    goto :goto_35

    :pswitch_23  #0x3, 0x4
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginRight:I

    goto :goto_35

    :pswitch_26  #0x1, 0x2
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginLeft:I

    goto :goto_35

    :cond_29
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginLeft:I

    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginRight:I

    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginStart:I

    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginEnd:I

    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginTop:I

    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginBottom:I

    :goto_35
    return-object p0

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_26  #00000001
        :pswitch_26  #00000002
        :pswitch_23  #00000003
        :pswitch_23  #00000004
        :pswitch_20  #00000005
        :pswitch_20  #00000006
        :pswitch_1d  #00000007
        :pswitch_1d  #00000008
        :pswitch_1a  #00000009
        :pswitch_1a  #0000000a
        :pswitch_17  #0000000b
        :pswitch_17  #0000000c
        :pswitch_14  #0000000d
        :pswitch_14  #0000000e
        :pswitch_14  #0000000f
        :pswitch_10  #00000010
    .end packed-switch
.end method

.method public margin(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 3

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mState:Landroidx/constraintlayout/core/state/State;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/state/State;->convertDimension(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/state/ConstraintReference;->margin(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object p0

    return-object p0
.end method

.method public marginGone(I)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 4

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    if-eqz v0, :cond_25

    sget-object v1, Landroidx/constraintlayout/core/state/ConstraintReference$1;->$SwitchMap$androidx$constraintlayout$core$state$State$Constraint:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_32

    goto :goto_31

    :pswitch_10  #0xd, 0xe, 0xf
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginBaselineGone:I

    goto :goto_31

    :pswitch_13  #0xb, 0xc
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginBottomGone:I

    goto :goto_31

    :pswitch_16  #0x9, 0xa
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginTopGone:I

    goto :goto_31

    :pswitch_19  #0x7, 0x8
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginEndGone:I

    goto :goto_31

    :pswitch_1c  #0x5, 0x6
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginStartGone:I

    goto :goto_31

    :pswitch_1f  #0x3, 0x4
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginRightGone:I

    goto :goto_31

    :pswitch_22  #0x1, 0x2
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginLeftGone:I

    goto :goto_31

    :cond_25
    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginLeftGone:I

    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginRightGone:I

    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginStartGone:I

    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginEndGone:I

    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginTopGone:I

    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mMarginBottomGone:I

    :goto_31
    return-object p0

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_22  #00000001
        :pswitch_22  #00000002
        :pswitch_1f  #00000003
        :pswitch_1f  #00000004
        :pswitch_1c  #00000005
        :pswitch_1c  #00000006
        :pswitch_19  #00000007
        :pswitch_19  #00000008
        :pswitch_16  #00000009
        :pswitch_16  #0000000a
        :pswitch_13  #0000000b
        :pswitch_13  #0000000c
        :pswitch_10  #0000000d
        :pswitch_10  #0000000e
        :pswitch_10  #0000000f
    .end packed-switch
.end method

.method public marginGone(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 3

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mState:Landroidx/constraintlayout/core/state/State;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/state/State;->convertDimension(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/state/ConstraintReference;->marginGone(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object p0

    return-object p0
.end method

.method public pivotX(F)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 2

    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mPivotX:F

    return-object p0
.end method

.method public pivotY(F)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 2

    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mPivotY:F

    return-object p0
.end method

.method public right()Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 2

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mRightToLeft:Ljava/lang/Object;

    if-eqz v0, :cond_9

    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->RIGHT_TO_LEFT:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    goto :goto_d

    :cond_9
    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->RIGHT_TO_RIGHT:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    :goto_d
    return-object p0
.end method

.method public rightToLeft(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 3

    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->RIGHT_TO_LEFT:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mRightToLeft:Ljava/lang/Object;

    return-object p0
.end method

.method public rightToRight(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 3

    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->RIGHT_TO_RIGHT:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mRightToRight:Ljava/lang/Object;

    return-object p0
.end method

.method public rotationX(F)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 2

    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mRotationX:F

    return-object p0
.end method

.method public rotationY(F)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 2

    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mRotationY:F

    return-object p0
.end method

.method public rotationZ(F)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 2

    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mRotationZ:F

    return-object p0
.end method

.method public scaleX(F)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 2

    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mScaleX:F

    return-object p0
.end method

.method public scaleY(F)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 2

    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mScaleY:F

    return-object p0
.end method

.method public setConstraintWidget(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .registers 2

    if-nez p1, :cond_3

    return-void

    :cond_3
    iput-object p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object p0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mView:Ljava/lang/Object;

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setCompanionWidget(Ljava/lang/Object;)V

    return-void
.end method

.method public setFacade(Landroidx/constraintlayout/core/state/helpers/Facade;)V
    .registers 2

    iput-object p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mFacade:Landroidx/constraintlayout/core/state/helpers/Facade;

    if-eqz p1, :cond_b

    invoke-interface {p1}, Landroidx/constraintlayout/core/state/helpers/Facade;->getConstraintWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/state/ConstraintReference;->setConstraintWidget(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    :cond_b
    return-void
.end method

.method public setHeight(Landroidx/constraintlayout/core/state/Dimension;)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 2

    iput-object p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mVerticalDimension:Landroidx/constraintlayout/core/state/Dimension;

    return-object p0
.end method

.method public setHorizontalChainStyle(I)V
    .registers 2

    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mHorizontalChainStyle:I

    return-void
.end method

.method public setHorizontalChainWeight(F)V
    .registers 2

    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mHorizontalChainWeight:F

    return-void
.end method

.method public setKey(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->key:Ljava/lang/Object;

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mTag:Ljava/lang/String;

    return-void
.end method

.method public setVerticalChainStyle(I)V
    .registers 2

    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mVerticalChainStyle:I

    return-void
.end method

.method public setVerticalChainWeight(F)V
    .registers 2

    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mVerticalChainWeight:F

    return-void
.end method

.method public setView(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mView:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz p0, :cond_9

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setCompanionWidget(Ljava/lang/Object;)V

    :cond_9
    return-void
.end method

.method public setWidth(Landroidx/constraintlayout/core/state/Dimension;)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 2

    iput-object p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mHorizontalDimension:Landroidx/constraintlayout/core/state/Dimension;

    return-object p0
.end method

.method public start()Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 2

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mStartToStart:Ljava/lang/Object;

    if-eqz v0, :cond_9

    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->START_TO_START:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    goto :goto_d

    :cond_9
    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->START_TO_END:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    :goto_d
    return-object p0
.end method

.method public startToEnd(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 3

    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->START_TO_END:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mStartToEnd:Ljava/lang/Object;

    return-object p0
.end method

.method public startToStart(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 3

    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->START_TO_START:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mStartToStart:Ljava/lang/Object;

    return-object p0
.end method

.method public top()Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 2

    iget-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mTopToTop:Ljava/lang/Object;

    if-eqz v0, :cond_9

    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->TOP_TO_TOP:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    goto :goto_d

    :cond_9
    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->TOP_TO_BOTTOM:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    :goto_d
    return-object p0
.end method

.method public topToBottom(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 3

    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->TOP_TO_BOTTOM:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mTopToBottom:Ljava/lang/Object;

    return-object p0
.end method

.method public topToTop(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 3

    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->TOP_TO_TOP:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLast:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mTopToTop:Ljava/lang/Object;

    return-object p0
.end method

.method public translationX(F)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 2

    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mTranslationX:F

    return-object p0
.end method

.method public translationY(F)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 2

    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mTranslationY:F

    return-object p0
.end method

.method public translationZ(F)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 2

    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mTranslationZ:F

    return-object p0
.end method

.method public validate()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/state/ConstraintReference$IncorrectConstraintException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLeftToLeft:Ljava/lang/Object;

    if-eqz v1, :cond_12

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLeftToRight:Ljava/lang/Object;

    if-eqz v1, :cond_12

    const-string v1, "LeftToLeft and LeftToRight both defined"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mRightToLeft:Ljava/lang/Object;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mRightToRight:Ljava/lang/Object;

    if-eqz v1, :cond_1f

    const-string v1, "RightToLeft and RightToRight both defined"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1f
    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mStartToStart:Ljava/lang/Object;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mStartToEnd:Ljava/lang/Object;

    if-eqz v1, :cond_2c

    const-string v1, "StartToStart and StartToEnd both defined"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2c
    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mEndToStart:Ljava/lang/Object;

    if-eqz v1, :cond_39

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mEndToEnd:Ljava/lang/Object;

    if-eqz v1, :cond_39

    const-string v1, "EndToStart and EndToEnd both defined"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_39
    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLeftToLeft:Ljava/lang/Object;

    if-nez v1, :cond_49

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mLeftToRight:Ljava/lang/Object;

    if-nez v1, :cond_49

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mRightToLeft:Ljava/lang/Object;

    if-nez v1, :cond_49

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mRightToRight:Ljava/lang/Object;

    if-eqz v1, :cond_5e

    :cond_49
    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mStartToStart:Ljava/lang/Object;

    if-nez v1, :cond_59

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mStartToEnd:Ljava/lang/Object;

    if-nez v1, :cond_59

    iget-object v1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mEndToStart:Ljava/lang/Object;

    if-nez v1, :cond_59

    iget-object p0, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mEndToEnd:Ljava/lang/Object;

    if-eqz p0, :cond_5e

    :cond_59
    const-string p0, "Both left/right and start/end constraints defined"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-gtz p0, :cond_65

    return-void

    :cond_65
    new-instance p0, Landroidx/constraintlayout/core/state/ConstraintReference$IncorrectConstraintException;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/state/ConstraintReference$IncorrectConstraintException;-><init>(Ljava/util/ArrayList;)V

    throw p0
.end method

.method public verticalBias(F)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 2

    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mVerticalBias:F

    return-object p0
.end method

.method public visibility(I)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 2

    iput p1, p0, Landroidx/constraintlayout/core/state/ConstraintReference;->mVisibility:I

    return-object p0
.end method

.method public width(Landroidx/constraintlayout/core/state/Dimension;)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 2

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/state/ConstraintReference;->setWidth(Landroidx/constraintlayout/core/state/Dimension;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object p0

    return-object p0
.end method
