.class public final synthetic Lcom/android/launcher3/folder/big/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;

.field public final synthetic b:Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;

.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:F

.field public final synthetic f:F

.field public final synthetic g:F

.field public final synthetic h:F

.field public final synthetic i:F

.field public final synthetic j:F

.field public final synthetic k:F

.field public final synthetic l:F

.field public final synthetic m:F

.field public final synthetic n:F

.field public final synthetic o:F

.field public final synthetic p:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;FFFFFFFFFFFFFF)V
    .registers 19

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/android/launcher3/folder/big/c;->a:Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/launcher3/folder/big/c;->b:Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;

    move v1, p3

    iput v1, v0, Lcom/android/launcher3/folder/big/c;->c:F

    move v1, p4

    iput v1, v0, Lcom/android/launcher3/folder/big/c;->d:F

    move v1, p5

    iput v1, v0, Lcom/android/launcher3/folder/big/c;->e:F

    move v1, p6

    iput v1, v0, Lcom/android/launcher3/folder/big/c;->f:F

    move v1, p7

    iput v1, v0, Lcom/android/launcher3/folder/big/c;->g:F

    move v1, p8

    iput v1, v0, Lcom/android/launcher3/folder/big/c;->h:F

    move v1, p9

    iput v1, v0, Lcom/android/launcher3/folder/big/c;->i:F

    move v1, p10

    iput v1, v0, Lcom/android/launcher3/folder/big/c;->j:F

    move v1, p11

    iput v1, v0, Lcom/android/launcher3/folder/big/c;->k:F

    move v1, p12

    iput v1, v0, Lcom/android/launcher3/folder/big/c;->l:F

    move v1, p13

    iput v1, v0, Lcom/android/launcher3/folder/big/c;->m:F

    move/from16 v1, p14

    iput v1, v0, Lcom/android/launcher3/folder/big/c;->n:F

    move/from16 v1, p15

    iput v1, v0, Lcom/android/launcher3/folder/big/c;->o:F

    move/from16 v1, p16

    iput v1, v0, Lcom/android/launcher3/folder/big/c;->p:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v17, p1

    iget-object v1, v0, Lcom/android/launcher3/folder/big/c;->a:Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;

    iget-object v2, v0, Lcom/android/launcher3/folder/big/c;->b:Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;

    iget v3, v0, Lcom/android/launcher3/folder/big/c;->c:F

    iget v4, v0, Lcom/android/launcher3/folder/big/c;->d:F

    iget v5, v0, Lcom/android/launcher3/folder/big/c;->e:F

    iget v6, v0, Lcom/android/launcher3/folder/big/c;->f:F

    iget v7, v0, Lcom/android/launcher3/folder/big/c;->g:F

    iget v8, v0, Lcom/android/launcher3/folder/big/c;->h:F

    iget v9, v0, Lcom/android/launcher3/folder/big/c;->i:F

    iget v10, v0, Lcom/android/launcher3/folder/big/c;->j:F

    iget v11, v0, Lcom/android/launcher3/folder/big/c;->k:F

    iget v12, v0, Lcom/android/launcher3/folder/big/c;->l:F

    iget v13, v0, Lcom/android/launcher3/folder/big/c;->m:F

    iget v14, v0, Lcom/android/launcher3/folder/big/c;->n:F

    iget v15, v0, Lcom/android/launcher3/folder/big/c;->o:F

    iget v0, v0, Lcom/android/launcher3/folder/big/c;->p:F

    move/from16 v16, v0

    invoke-static/range {v1 .. v17}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->a(Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;FFFFFFFFFFFFFFLandroid/animation/ValueAnimator;)V

    return-void
.end method
