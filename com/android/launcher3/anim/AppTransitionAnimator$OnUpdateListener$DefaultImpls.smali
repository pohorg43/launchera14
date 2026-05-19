.class public final Lcom/android/launcher3/anim/AppTransitionAnimator$OnUpdateListener$DefaultImpls;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/anim/AppTransitionAnimator$OnUpdateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static synthetic getIconTransitionParam$default(Lcom/android/launcher3/anim/AppTransitionAnimator$OnUpdateListener;Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFFLcom/android/systemui/shared/system/AppTransitionParam;ZIZZILjava/lang/Object;)Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;
    .registers 29

    if-nez p14, :cond_28

    move/from16 v0, p13

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    move v11, v0

    goto :goto_d

    :cond_b
    move/from16 v11, p10

    :goto_d
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v12, p11

    move/from16 v13, p12

    invoke-interface/range {v1 .. v13}, Lcom/android/launcher3/anim/AppTransitionAnimator$OnUpdateListener;->getIconTransitionParam(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFFLcom/android/systemui/shared/system/AppTransitionParam;ZIZZ)Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;

    move-result-object v0

    return-object v0

    :cond_28
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: getIconTransitionParam"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
