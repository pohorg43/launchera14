.class public final synthetic Lcom/android/launcher3/allapps/branch/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/branch/search/BranchDrawableCallback;


# instance fields
.field public final synthetic a:Landroid/widget/ImageView;

.field public final synthetic b:I

.field public final synthetic c:Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:I

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Landroid/widget/ImageView;ILcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Landroid/content/Context;II)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/branch/f;->a:Landroid/widget/ImageView;

    iput p2, p0, Lcom/android/launcher3/allapps/branch/f;->b:I

    iput-object p3, p0, Lcom/android/launcher3/allapps/branch/f;->c:Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;

    iput-object p4, p0, Lcom/android/launcher3/allapps/branch/f;->d:Landroid/content/Context;

    iput p5, p0, Lcom/android/launcher3/allapps/branch/f;->e:I

    iput p6, p0, Lcom/android/launcher3/allapps/branch/f;->f:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;)V
    .registers 11

    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/f;->a:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/launcher3/allapps/branch/f;->b:I

    iget-object v2, p0, Lcom/android/launcher3/allapps/branch/f;->c:Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;

    iget-object v3, p0, Lcom/android/launcher3/allapps/branch/f;->d:Landroid/content/Context;

    iget v4, p0, Lcom/android/launcher3/allapps/branch/f;->e:I

    iget v5, p0, Lcom/android/launcher3/allapps/branch/f;->f:I

    move-object v6, p1

    check-cast v6, Lio/branch/search/BranchLocalLinkResult;

    move-object v7, p2

    invoke-static/range {v0 .. v7}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->s(Landroid/widget/ImageView;ILcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Landroid/content/Context;IILio/branch/search/BranchLocalLinkResult;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
