.class public Lio/branch/search/b1$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lp1/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/b1;->a(Lio/branch/search/z0;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lp1/g<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroid/widget/ImageView;

.field public final synthetic b:Lio/branch/search/z0;


# direct methods
.method public constructor <init>(Lio/branch/search/b1;Landroid/widget/ImageView;Lio/branch/search/z0;)V
    .registers 4

    iput-object p2, p0, Lio/branch/search/b1$b;->a:Landroid/widget/ImageView;

    iput-object p3, p0, Lio/branch/search/b1$b;->b:Lio/branch/search/z0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lq1/h;Lcom/bumptech/glide/load/a;Z)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/Object;",
            "Lq1/h<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Lcom/bumptech/glide/load/a;",
            "Z)Z"
        }
    .end annotation

    iget-object p1, p0, Lio/branch/search/b1$b;->a:Landroid/widget/ImageView;

    sget p2, Lio/branch/search/R$id;->branch_url_id:I

    iget-object p0, p0, Lio/branch/search/b1$b;->b:Lio/branch/search/z0;

    invoke-virtual {p0}, Lio/branch/search/z0;->b()Lw0/c;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onLoadFailed(Lz0/r;Ljava/lang/Object;Lq1/h;Z)Z
    .registers 5
    .param p1  # Lz0/r;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz0/r;",
            "Ljava/lang/Object;",
            "Lq1/h<",
            "Landroid/graphics/drawable/Drawable;",
            ">;Z)Z"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lq1/h;Lcom/bumptech/glide/load/a;Z)Z
    .registers 6

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p5}, Lio/branch/search/b1$b;->a(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lq1/h;Lcom/bumptech/glide/load/a;Z)Z

    move-result p0

    return p0
.end method
