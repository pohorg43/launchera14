.class public final Ll3/b;
.super Ll3/d;
.source ""


# instance fields
.field public i:Lq3/a;

.field public j:Landroid/graphics/Bitmap;

.field public k:Z

.field public l:I

.field public m:I

.field public n:Lo3/a;

.field public o:Lo3/a;

.field public p:Ll3/c;

.field public q:Lp3/b;

.field public r:Lp3/b;

.field public s:Ln3/b;

.field public final t:[F

.field public final u:[F

.field public final v:[F

.field public final w:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Ll3/d;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Ll3/b;->k:Z

    const/16 p1, 0x9c

    iput p1, p0, Ll3/b;->l:I

    iput p1, p0, Ll3/b;->m:I

    const/16 p1, 0x10

    new-array v0, p1, [F

    iput-object v0, p0, Ll3/b;->t:[F

    new-array v0, p1, [F

    iput-object v0, p0, Ll3/b;->u:[F

    new-array v0, p1, [F

    iput-object v0, p0, Ll3/b;->v:[F

    new-array p1, p1, [F

    iput-object p1, p0, Ll3/b;->w:[F

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Ll3/b;->k:Z

    iget-object v0, p0, Ll3/b;->n:Lo3/a;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lo3/a;->dispose()V

    :cond_a
    iget-object v0, p0, Ll3/b;->o:Lo3/a;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lo3/a;->dispose()V

    :cond_11
    iget-object v0, p0, Ll3/b;->p:Ll3/c;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ln3/a;->dispose()V

    :cond_18
    iget-object v0, p0, Ll3/b;->s:Ln3/b;

    if-eqz v0, :cond_21

    iget-object v0, v0, Ln3/b;->a:Lm3/a;

    invoke-virtual {v0}, Lm3/a;->dispose()V

    :cond_21
    iget-object v0, p0, Ll3/b;->q:Lp3/b;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lp3/b;->dispose()V

    :cond_28
    iget-object p0, p0, Ll3/b;->r:Lp3/b;

    if-eqz p0, :cond_2f

    invoke-virtual {p0}, Lp3/b;->dispose()V

    :cond_2f
    return-void
.end method
