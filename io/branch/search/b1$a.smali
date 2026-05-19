.class public Lio/branch/search/b1$a;
.super Lq1/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/b1;->a(Lio/branch/search/z0;Lio/branch/search/y0$a;Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lq1/c<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lio/branch/search/y0$a;

.field public final synthetic b:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lio/branch/search/b1;Lio/branch/search/y0$a;Landroid/graphics/drawable/Drawable;)V
    .registers 4

    iput-object p2, p0, Lio/branch/search/b1$a;->a:Lio/branch/search/y0$a;

    iput-object p3, p0, Lio/branch/search/b1$a;->b:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lq1/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;Lr1/b;)V
    .registers 3
    .param p1  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lr1/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Lr1/b<",
            "-",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lio/branch/search/b1$a;->a:Lio/branch/search/y0$a;

    invoke-interface {p0, p1}, Lio/branch/search/y0$a;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-object p0, p0, Lio/branch/search/b1$a;->a:Lio/branch/search/y0$a;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lio/branch/search/y0$a;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-object p1, p0, Lio/branch/search/b1$a;->a:Lio/branch/search/y0$a;

    iget-object p0, p0, Lio/branch/search/b1$a;->b:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, p0}, Lio/branch/search/y0$a;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lr1/b;)V
    .registers 3
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lr1/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/b1$a;->a(Landroid/graphics/drawable/Drawable;Lr1/b;)V

    return-void
.end method
