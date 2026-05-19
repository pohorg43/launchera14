.class public abstract Lp3/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ls3/a;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public final e:I

.field public f:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lp3/a;->e:I

    iput p2, p0, Lp3/a;->f:I

    const/4 p1, 0x1

    iput p1, p0, Lp3/a;->a:I

    iput p1, p0, Lp3/a;->b:I

    const/4 p1, 0x2

    iput p1, p0, Lp3/a;->c:I

    iput p1, p0, Lp3/a;->d:I

    return-void
.end method


# virtual methods
.method public final a(IIZ)V
    .registers 7

    if-eqz p1, :cond_15

    if-nez p3, :cond_8

    iget v0, p0, Lp3/a;->a:I

    if-eq v0, p1, :cond_15

    :cond_8
    iget v0, p0, Lp3/a;->e:I

    const/16 v1, 0x2801

    invoke-static {p1}, Lk/b;->n(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES30;->glTexParameteri(III)V

    iput p1, p0, Lp3/a;->a:I

    :cond_15
    if-eqz p2, :cond_2a

    if-nez p3, :cond_1d

    iget p1, p0, Lp3/a;->b:I

    if-eq p1, p2, :cond_2a

    :cond_1d
    iget p1, p0, Lp3/a;->e:I

    const/16 p3, 0x2800

    invoke-static {p2}, Lk/b;->n(I)I

    move-result v0

    invoke-static {p1, p3, v0}, Landroid/opengl/GLES30;->glTexParameteri(III)V

    iput p2, p0, Lp3/a;->b:I

    :cond_2a
    return-void
.end method

.method public final b(IIZ)V
    .registers 7

    if-eqz p1, :cond_15

    if-nez p3, :cond_8

    iget v0, p0, Lp3/a;->c:I

    if-eq v0, p1, :cond_15

    :cond_8
    iget v0, p0, Lp3/a;->e:I

    const/16 v1, 0x2802

    invoke-static {p1}, Lk/b;->o(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES30;->glTexParameteri(III)V

    iput p1, p0, Lp3/a;->c:I

    :cond_15
    if-eqz p2, :cond_2a

    if-nez p3, :cond_1d

    iget p1, p0, Lp3/a;->d:I

    if-eq p1, p2, :cond_2a

    :cond_1d
    iget p1, p0, Lp3/a;->e:I

    const/16 p3, 0x2803

    invoke-static {p2}, Lk/b;->o(I)I

    move-result v0

    invoke-static {p1, p3, v0}, Landroid/opengl/GLES30;->glTexParameteri(III)V

    iput p2, p0, Lp3/a;->d:I

    :cond_2a
    return-void
.end method
