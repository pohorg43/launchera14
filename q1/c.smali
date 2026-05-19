.class public abstract Lq1/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lq1/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lq1/h<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final height:I

.field private request:Lp1/d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final width:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/high16 v0, -0x80000000

    invoke-direct {p0, v0, v0}, Lq1/c;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Lt1/f;->i(II)Z

    move-result v0

    if-eqz v0, :cond_e

    iput p1, p0, Lq1/c;->width:I

    iput p2, p0, Lq1/c;->height:I

    return-void

    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: "

    const-string v1, " and height: "

    invoke-static {v0, p1, v1, p2}, Landroidx/emoji2/text/flatbuffer/b;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getRequest()Lp1/d;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lq1/c;->request:Lp1/d;

    return-object p0
.end method

.method public final getSize(Lq1/g;)V
    .registers 3
    .param p1  # Lq1/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, Lq1/c;->width:I

    iget p0, p0, Lq1/c;->height:I

    invoke-interface {p1, v0, p0}, Lq1/g;->c(II)V

    return-void
.end method

.method public onDestroy()V
    .registers 1

    return-void
.end method

.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onStart()V
    .registers 1

    return-void
.end method

.method public onStop()V
    .registers 1

    return-void
.end method

.method public final removeCallback(Lq1/g;)V
    .registers 2
    .param p1  # Lq1/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public final setRequest(Lp1/d;)V
    .registers 2
    .param p1  # Lp1/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lq1/c;->request:Lp1/d;

    return-void
.end method
