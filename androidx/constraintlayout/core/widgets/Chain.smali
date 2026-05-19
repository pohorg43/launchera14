.class public Landroidx/constraintlayout/core/widgets/Chain;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DEBUG:Z

.field public static final USE_CHAIN_OPTIMIZATION:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyChainConstraints(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;IILandroidx/constraintlayout/core/widgets/ChainHead;)V
    .registers 43

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v1, p4

    iget-object v11, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirst:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v12, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mLast:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v13, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirstVisibleWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v14, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mLastVisibleWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mHead:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget v3, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mTotalWeight:F

    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v4, v4, v10

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v7, 0x1

    if-ne v4, v5, :cond_1f

    move v4, v7

    goto :goto_20

    :cond_1f
    const/4 v4, 0x0

    :goto_20
    const/4 v5, 0x2

    if-nez v10, :cond_34

    iget v8, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    if-nez v8, :cond_29

    move v15, v7

    goto :goto_2a

    :cond_29
    const/4 v15, 0x0

    :goto_2a
    if-ne v8, v7, :cond_2f

    move/from16 v16, v7

    goto :goto_31

    :cond_2f
    const/16 v16, 0x0

    :goto_31
    if-ne v8, v5, :cond_46

    goto :goto_44

    :cond_34
    iget v8, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainStyle:I

    if-nez v8, :cond_3a

    move v15, v7

    goto :goto_3b

    :cond_3a
    const/4 v15, 0x0

    :goto_3b
    if-ne v8, v7, :cond_40

    move/from16 v16, v7

    goto :goto_42

    :cond_40
    const/16 v16, 0x0

    :goto_42
    if-ne v8, v5, :cond_46

    :goto_44
    move v5, v7

    goto :goto_47

    :cond_46
    const/4 v5, 0x0

    :goto_47
    move-object v7, v11

    const/4 v8, 0x0

    :goto_49
    const/16 v22, 0x0

    if-nez v8, :cond_133

    iget-object v6, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v6, v6, p3

    if-eqz v5, :cond_56

    const/16 v20, 0x1

    goto :goto_58

    :cond_56
    const/16 v20, 0x4

    :goto_58
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v24

    move/from16 v25, v3

    iget-object v3, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v3, v3, v10

    move/from16 v26, v8

    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v8, :cond_72

    iget-object v3, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    aget v3, v3, v10

    if-nez v3, :cond_72

    move/from16 v27, v15

    const/4 v3, 0x1

    goto :goto_75

    :cond_72
    move/from16 v27, v15

    const/4 v3, 0x0

    :goto_75
    iget-object v15, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v15, :cond_81

    if-eq v7, v11, :cond_81

    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v15

    add-int v24, v15, v24

    :cond_81
    move/from16 v15, v24

    if-eqz v5, :cond_8e

    if-eq v7, v11, :cond_8e

    if-eq v7, v13, :cond_8e

    move-object/from16 v24, v2

    const/16 v20, 0x8

    goto :goto_90

    :cond_8e
    move-object/from16 v24, v2

    :goto_90
    iget-object v2, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v2, :cond_ca

    if-ne v7, v13, :cond_a1

    move-object/from16 v28, v11

    iget-object v11, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    const/4 v1, 0x6

    invoke-virtual {v9, v11, v2, v15, v1}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_ac

    :cond_a1
    move-object/from16 v28, v11

    iget-object v1, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    const/16 v11, 0x8

    invoke-virtual {v9, v1, v2, v15, v11}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    :goto_ac
    if-eqz v3, :cond_b2

    if-nez v5, :cond_b2

    const/16 v20, 0x5

    :cond_b2
    if-ne v7, v13, :cond_be

    if-eqz v5, :cond_be

    invoke-virtual {v7, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInBarrier(I)Z

    move-result v1

    if-eqz v1, :cond_be

    const/4 v1, 0x5

    goto :goto_c0

    :cond_be
    move/from16 v1, v20

    :goto_c0
    iget-object v2, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v3, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {v9, v2, v3, v15, v1}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    goto :goto_cc

    :cond_ca
    move-object/from16 v28, v11

    :goto_cc
    if-eqz v4, :cond_100

    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_ee

    iget-object v1, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v1, v1, v10

    if-ne v1, v8, :cond_ee

    iget-object v1, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v2, v1, v2

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    aget-object v1, v1, p3

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    const/4 v3, 0x5

    const/4 v6, 0x0

    invoke-virtual {v9, v2, v1, v6, v3}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_ef

    :cond_ee
    const/4 v6, 0x0

    :goto_ef
    iget-object v1, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v2, v2, p3

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    const/16 v3, 0x8

    invoke-virtual {v9, v1, v2, v6, v3}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    :cond_100
    iget-object v1, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v1, :cond_11f

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v3, v2, p3

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v3, :cond_11f

    aget-object v2, v2, p3

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eq v2, v7, :cond_11d

    goto :goto_11f

    :cond_11d
    move-object/from16 v22, v1

    :cond_11f
    :goto_11f
    if-eqz v22, :cond_126

    move-object/from16 v7, v22

    move/from16 v8, v26

    goto :goto_127

    :cond_126
    const/4 v8, 0x1

    :goto_127
    move-object/from16 v1, p4

    move-object/from16 v2, v24

    move/from16 v3, v25

    move/from16 v15, v27

    move-object/from16 v11, v28

    goto/16 :goto_49

    :cond_133
    move-object/from16 v24, v2

    move/from16 v25, v3

    move-object/from16 v28, v11

    move/from16 v27, v15

    if-eqz v14, :cond_19e

    iget-object v1, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v1, :cond_19e

    iget-object v1, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v1, v1, v2

    iget-object v3, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v3, v3, v10

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v6, :cond_15b

    iget-object v3, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    aget v3, v3, v10

    if-nez v3, :cond_15b

    const/4 v3, 0x1

    goto :goto_15c

    :cond_15b
    const/4 v3, 0x0

    :goto_15c
    if-eqz v3, :cond_174

    if-nez v5, :cond_174

    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v6, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-ne v6, v0, :cond_174

    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    neg-int v7, v7

    const/4 v8, 0x5

    invoke-virtual {v9, v6, v3, v7, v8}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    goto :goto_18a

    :cond_174
    const/4 v8, 0x5

    if-eqz v5, :cond_18a

    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v6, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-ne v6, v0, :cond_18a

    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    neg-int v7, v7

    const/4 v11, 0x4

    invoke-virtual {v9, v6, v3, v7, v11}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    :cond_18a
    :goto_18a
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v6, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v2, v6, v2

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    neg-int v1, v1

    const/4 v6, 0x6

    invoke-virtual {v9, v3, v2, v1, v6}, Landroidx/constraintlayout/core/LinearSystem;->addLowerThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_19f

    :cond_19e
    const/4 v8, 0x5

    :goto_19f
    if-eqz v4, :cond_1ba

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v1, p3, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v2, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v3, v2, v1

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    aget-object v1, v2, v1

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    const/16 v2, 0x8

    invoke-virtual {v9, v0, v3, v1, v2}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    :cond_1ba
    move-object/from16 v0, p4

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ChainHead;->mWeightedMatchConstraintsWidgets:Ljava/util/ArrayList;

    if-eqz v1, :cond_26b

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_26b

    iget-boolean v4, v0, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasUndefinedWeights:Z

    if-eqz v4, :cond_1d3

    iget-boolean v4, v0, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasComplexMatchWeights:Z

    if-nez v4, :cond_1d3

    iget v4, v0, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsMatchCount:I

    int-to-float v4, v4

    goto :goto_1d5

    :cond_1d3
    move/from16 v4, v25

    :goto_1d5
    const/4 v6, 0x0

    move/from16 v30, v6

    move-object/from16 v11, v22

    const/4 v7, 0x0

    :goto_1db
    if-ge v7, v2, :cond_26b

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v3, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    aget v3, v3, v10

    cmpg-float v19, v3, v6

    if-gez v19, :cond_207

    iget-boolean v3, v0, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasComplexMatchWeights:Z

    if-eqz v3, :cond_202

    iget-object v3, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v15, p3, 0x1

    aget-object v15, v3, v15

    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    aget-object v3, v3, p3

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    const/4 v6, 0x0

    const/4 v8, 0x4

    invoke-virtual {v9, v15, v3, v6, v8}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    move v8, v6

    goto :goto_21e

    :cond_202
    const/4 v8, 0x4

    const/high16 v3, 0x3f800000  # 1.0f

    const/4 v6, 0x0

    goto :goto_208

    :cond_207
    const/4 v8, 0x4

    :goto_208
    cmpl-float v19, v3, v6

    if-nez v19, :cond_223

    iget-object v3, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v15, p3, 0x1

    aget-object v15, v3, v15

    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    aget-object v3, v3, p3

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    const/16 v6, 0x8

    const/4 v8, 0x0

    invoke-virtual {v9, v15, v3, v8, v6}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    :goto_21e
    move-object/from16 v25, v1

    move/from16 v18, v2

    goto :goto_260

    :cond_223
    const/4 v8, 0x0

    if-eqz v11, :cond_259

    iget-object v6, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v11, v6, p3

    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    add-int/lit8 v18, p3, 0x1

    aget-object v6, v6, v18

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v8, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v25, v1

    aget-object v1, v8, p3

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    aget-object v8, v8, v18

    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move/from16 v18, v2

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/LinearSystem;->createRow()Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v2

    move-object/from16 v29, v2

    move/from16 v31, v4

    move/from16 v32, v3

    move-object/from16 v33, v11

    move-object/from16 v34, v6

    move-object/from16 v35, v1

    move-object/from16 v36, v8

    invoke-virtual/range {v29 .. v36}, Landroidx/constraintlayout/core/ArrayRow;->createRowEqualMatchDimensions(FFFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;)Landroidx/constraintlayout/core/ArrayRow;

    invoke-virtual {v9, v2}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    goto :goto_25d

    :cond_259
    move-object/from16 v25, v1

    move/from16 v18, v2

    :goto_25d
    move/from16 v30, v3

    move-object v11, v15

    :goto_260
    add-int/lit8 v7, v7, 0x1

    move/from16 v2, v18

    move-object/from16 v1, v25

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x5

    goto/16 :goto_1db

    :cond_26b
    if-eqz v13, :cond_2c4

    if-eq v13, v14, :cond_271

    if-eqz v5, :cond_2c4

    :cond_271
    move-object/from16 v11, v28

    iget-object v0, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    iget-object v1, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v0, :cond_285

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object v3, v0

    goto :goto_287

    :cond_285
    move-object/from16 v3, v22

    :goto_287
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v0, :cond_28f

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object v5, v0

    goto :goto_291

    :cond_28f
    move-object/from16 v5, v22

    :goto_291
    iget-object v0, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    if-eqz v14, :cond_29b

    iget-object v1, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v1, v1, v2

    :cond_29b
    if-eqz v3, :cond_4ef

    if-eqz v5, :cond_4ef

    if-nez v10, :cond_2a6

    move-object/from16 v2, v24

    iget v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    goto :goto_2aa

    :cond_2a6
    move-object/from16 v2, v24

    iget v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    :goto_2aa
    move v4, v2

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v6

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    const/4 v10, 0x7

    move-object/from16 v0, p1

    move-object v1, v2

    move-object v2, v3

    move v3, v6

    move-object v6, v8

    move v8, v10

    invoke-virtual/range {v0 .. v8}, Landroidx/constraintlayout/core/LinearSystem;->addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto/16 :goto_4ef

    :cond_2c4
    move-object/from16 v11, v28

    if-eqz v27, :cond_3b7

    if-eqz v13, :cond_3b7

    iget v1, v0, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsMatchCount:I

    if-lez v1, :cond_2d5

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsCount:I

    if-ne v0, v1, :cond_2d5

    const/16 v17, 0x1

    goto :goto_2d7

    :cond_2d5
    const/16 v17, 0x0

    :goto_2d7
    move-object v8, v13

    move-object v15, v8

    :goto_2d9
    if-eqz v15, :cond_4ef

    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v0, v0, v10

    move-object v7, v0

    :goto_2e0
    if-eqz v7, :cond_2ef

    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v0

    const/16 v6, 0x8

    if-ne v0, v6, :cond_2f1

    iget-object v0, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v7, v0, v10

    goto :goto_2e0

    :cond_2ef
    const/16 v6, 0x8

    :cond_2f1
    if-nez v7, :cond_2fc

    if-ne v15, v14, :cond_2f6

    goto :goto_2fc

    :cond_2f6
    move-object/from16 v20, v7

    :goto_2f8
    move-object/from16 v18, v8

    goto/16 :goto_3a7

    :cond_2fc
    :goto_2fc
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v2, :cond_309

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    goto :goto_30b

    :cond_309
    move-object/from16 v2, v22

    :goto_30b
    if-eq v8, v15, :cond_316

    iget-object v2, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    goto :goto_329

    :cond_316
    if-ne v15, v13, :cond_329

    iget-object v2, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v3, v2, p3

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v3, :cond_327

    aget-object v2, v2, p3

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    goto :goto_329

    :cond_327
    move-object/from16 v2, v22

    :cond_329
    :goto_329
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    iget-object v3, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v4, p3, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    if-eqz v7, :cond_342

    iget-object v5, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v5, v5, p3

    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    :goto_33f
    move-object/from16 p0, v7

    goto :goto_351

    :cond_342
    iget-object v5, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v5, v5, v4

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v5, :cond_34d

    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    goto :goto_33f

    :cond_34d
    move-object/from16 p0, v7

    move-object/from16 v6, v22

    :goto_351
    iget-object v7, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v7, v7, v4

    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    if-eqz v5, :cond_35e

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    add-int/2addr v3, v5

    :cond_35e
    iget-object v5, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    add-int/2addr v5, v0

    if-eqz v1, :cond_3a3

    if-eqz v2, :cond_3a3

    if-eqz v6, :cond_3a3

    if-eqz v7, :cond_3a3

    if-ne v15, v13, :cond_37a

    iget-object v0, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    move v5, v0

    :cond_37a
    if-ne v15, v14, :cond_387

    iget-object v0, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    move/from16 v18, v0

    goto :goto_389

    :cond_387
    move/from16 v18, v3

    :goto_389
    if-eqz v17, :cond_38e

    const/16 v19, 0x8

    goto :goto_390

    :cond_38e
    const/16 v19, 0x5

    :goto_390
    const/high16 v4, 0x3f000000  # 0.5f

    move-object/from16 v0, p1

    move v3, v5

    move-object v5, v6

    move-object v6, v7

    move-object/from16 v20, p0

    move/from16 v7, v18

    move-object/from16 v18, v8

    move/from16 v8, v19

    invoke-virtual/range {v0 .. v8}, Landroidx/constraintlayout/core/LinearSystem;->addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_3a7

    :cond_3a3
    move-object/from16 v20, p0

    goto/16 :goto_2f8

    :goto_3a7
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v0

    const/16 v8, 0x8

    if-eq v0, v8, :cond_3b0

    goto :goto_3b2

    :cond_3b0
    move-object/from16 v15, v18

    :goto_3b2
    move-object v8, v15

    move-object/from16 v15, v20

    goto/16 :goto_2d9

    :cond_3b7
    const/16 v8, 0x8

    if-eqz v16, :cond_4ef

    if-eqz v13, :cond_4ef

    iget v1, v0, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsMatchCount:I

    if-lez v1, :cond_3c8

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsCount:I

    if-ne v0, v1, :cond_3c8

    const/16 v17, 0x1

    goto :goto_3ca

    :cond_3c8
    const/16 v17, 0x0

    :goto_3ca
    move-object v7, v13

    move-object v15, v7

    :goto_3cc
    if-eqz v15, :cond_491

    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v0, v0, v10

    :goto_3d2
    if-eqz v0, :cond_3df

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v1

    if-ne v1, v8, :cond_3df

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v0, v0, v10

    goto :goto_3d2

    :cond_3df
    if-eq v15, v13, :cond_47c

    if-eq v15, v14, :cond_47c

    if-eqz v0, :cond_47c

    if-ne v0, v14, :cond_3ea

    move-object/from16 v6, v22

    goto :goto_3eb

    :cond_3ea
    move-object v6, v0

    :goto_3eb
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v2, :cond_3f7

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    :cond_3f7
    iget-object v2, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    iget-object v4, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    if-eqz v6, :cond_424

    iget-object v5, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v5, v5, p3

    iget-object v8, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 p0, v6

    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v6, :cond_41c

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    goto :goto_41e

    :cond_41c
    move-object/from16 v6, v22

    :goto_41e
    move-object/from16 v37, v8

    move-object v8, v6

    move-object/from16 v6, v37

    goto :goto_437

    :cond_424
    move-object/from16 p0, v6

    iget-object v5, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v5, v5, p3

    if-eqz v5, :cond_42f

    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    goto :goto_431

    :cond_42f
    move-object/from16 v6, v22

    :goto_431
    iget-object v8, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v8, v8, v3

    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    :goto_437
    if-eqz v5, :cond_441

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    add-int/2addr v5, v4

    move/from16 v18, v5

    goto :goto_443

    :cond_441
    move/from16 v18, v4

    :goto_443
    iget-object v4, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v3, v4, v3

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    add-int/2addr v3, v0

    if-eqz v17, :cond_451

    const/16 v19, 0x8

    goto :goto_453

    :cond_451
    const/16 v19, 0x4

    :goto_453
    if-eqz v1, :cond_471

    if-eqz v2, :cond_471

    if-eqz v6, :cond_471

    if-eqz v8, :cond_471

    const/high16 v4, 0x3f000000  # 0.5f

    move-object/from16 v0, p1

    move-object v5, v6

    move-object/from16 v20, p0

    const/16 v21, 0x4

    move-object v6, v8

    move-object/from16 v23, v7

    move/from16 v7, v18

    const/16 v10, 0x8

    move/from16 v8, v19

    invoke-virtual/range {v0 .. v8}, Landroidx/constraintlayout/core/LinearSystem;->addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_479

    :cond_471
    move-object/from16 v20, p0

    move-object/from16 v23, v7

    const/16 v10, 0x8

    const/16 v21, 0x4

    :goto_479
    move-object/from16 v0, v20

    goto :goto_481

    :cond_47c
    move-object/from16 v23, v7

    move v10, v8

    const/16 v21, 0x4

    :goto_481
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v1

    if-eq v1, v10, :cond_489

    move-object v7, v15

    goto :goto_48b

    :cond_489
    move-object/from16 v7, v23

    :goto_48b
    move-object v15, v0

    move v8, v10

    move/from16 v10, p2

    goto/16 :goto_3cc

    :cond_491
    iget-object v0, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    iget-object v1, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v10, v2, v3

    iget-object v2, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v2, v2, v3

    iget-object v11, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v1, :cond_4de

    if-eq v13, v14, :cond_4b8

    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    const/4 v15, 0x5

    invoke-virtual {v9, v2, v1, v0, v15}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    goto :goto_4df

    :cond_4b8
    const/4 v15, 0x5

    if-eqz v11, :cond_4df

    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    const/high16 v5, 0x3f000000  # 0.5f

    iget-object v6, v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v7, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v8

    const/16 v17, 0x5

    move-object/from16 v0, p1

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    move-object v6, v7

    move v7, v8

    move/from16 v8, v17

    invoke-virtual/range {v0 .. v8}, Landroidx/constraintlayout/core/LinearSystem;->addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_4df

    :cond_4de
    const/4 v15, 0x5

    :cond_4df
    :goto_4df
    if-eqz v11, :cond_4ef

    if-eq v13, v14, :cond_4ef

    iget-object v0, v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v1, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v9, v0, v1, v2, v15}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    :cond_4ef
    :goto_4ef
    if-nez v27, :cond_4f3

    if-eqz v16, :cond_54e

    :cond_4f3
    if-eqz v13, :cond_54e

    if-eq v13, v14, :cond_54e

    iget-object v0, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v1, v0, p3

    if-nez v14, :cond_4fe

    move-object v14, v13

    :cond_4fe
    iget-object v2, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v4, :cond_50b

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    goto :goto_50d

    :cond_50b
    move-object/from16 v4, v22

    :goto_50d
    iget-object v5, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v5, :cond_514

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    goto :goto_516

    :cond_514
    move-object/from16 v5, v22

    :goto_516
    if-eq v12, v14, :cond_526

    iget-object v5, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v5, v5, v3

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v5, :cond_524

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v22, v5

    :cond_524
    move-object/from16 v5, v22

    :cond_526
    if-ne v13, v14, :cond_52c

    aget-object v1, v0, p3

    aget-object v2, v0, v3

    :cond_52c
    if-eqz v4, :cond_54e

    if-eqz v5, :cond_54e

    const/high16 v6, 0x3f000000  # 0.5f

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    iget-object v0, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v8

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v10, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    const/4 v11, 0x5

    move-object/from16 v0, p1

    move-object v2, v4

    move v3, v7

    move v4, v6

    move-object v6, v10

    move v7, v8

    move v8, v11

    invoke-virtual/range {v0 .. v8}, Landroidx/constraintlayout/core/LinearSystem;->addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    :cond_54e
    return-void
.end method

.method public static applyChainConstraints(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/ArrayList;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;",
            "Landroidx/constraintlayout/core/LinearSystem;",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_a

    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    move-object v3, v2

    move v2, v0

    goto :goto_12

    :cond_a
    const/4 v1, 0x2

    iget v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    move v6, v2

    move v2, v1

    move v1, v6

    :goto_12
    if-ge v0, v1, :cond_29

    aget-object v4, v3, v0

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ChainHead;->define()V

    if-eqz p2, :cond_23

    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirst:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    :cond_23
    invoke-static {p0, p1, p3, v2, v4}, Landroidx/constraintlayout/core/widgets/Chain;->applyChainConstraints(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;IILandroidx/constraintlayout/core/widgets/ChainHead;)V

    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_29
    return-void
.end method
