.class public Lh/s;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lh/c;
.implements Li/a$b;


# instance fields
.field public final a:Z

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public final c:I

.field public final d:Li/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Li/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Li/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ln/b;Lm/o;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lh/s;->b:Ljava/util/List;

    iget-boolean v0, p2, Lm/o;->f:Z

    iput-boolean v0, p0, Lh/s;->a:Z

    iget v0, p2, Lm/o;->b:I

    iput v0, p0, Lh/s;->c:I

    iget-object v0, p2, Lm/o;->c:Ll/b;

    invoke-virtual {v0}, Ll/b;->createAnimation()Li/a;

    move-result-object v0

    iput-object v0, p0, Lh/s;->d:Li/a;

    iget-object v1, p2, Lm/o;->d:Ll/b;

    invoke-virtual {v1}, Ll/b;->createAnimation()Li/a;

    move-result-object v1

    iput-object v1, p0, Lh/s;->e:Li/a;

    iget-object p2, p2, Lm/o;->e:Ll/b;

    invoke-virtual {p2}, Ll/b;->createAnimation()Li/a;

    move-result-object p2

    iput-object p2, p0, Lh/s;->f:Li/a;

    invoke-virtual {p1, v0}, Ln/b;->c(Li/a;)V

    invoke-virtual {p1, v1}, Ln/b;->c(Li/a;)V

    invoke-virtual {p1, p2}, Ln/b;->c(Li/a;)V

    iget-object p1, v0, Li/a;->a:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, v1, Li/a;->a:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p2, Li/a;->a:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public onValueChanged()V
    .registers 3

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lh/s;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lh/s;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li/a$b;

    invoke-interface {v1}, Li/a$b;->onValueChanged()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lh/c;",
            ">;",
            "Ljava/util/List<",
            "Lh/c;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
