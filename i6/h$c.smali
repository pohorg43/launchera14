.class public abstract Li6/h$c;
.super Li6/h$b;
.source ""

# interfaces
.implements Li6/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li6/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Li6/h$d<",
        "TMessageType;>;BuilderType:",
        "Li6/h$c<",
        "TMessageType;TBuilderType;>;>",
        "Li6/h$b<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field public b:Li6/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li6/g<",
            "Li6/h$e;",
            ">;"
        }
    .end annotation
.end field

.field public c:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Li6/h$b;-><init>()V

    sget-object v0, Li6/g;->d:Li6/g;

    iput-object v0, p0, Li6/h$c;->b:Li6/g;

    return-void
.end method


# virtual methods
.method public final f(Li6/h$d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    iget-boolean v0, p0, Li6/h$c;->c:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Li6/h$c;->b:Li6/g;

    invoke-virtual {v0}, Li6/g;->b()Li6/g;

    move-result-object v0

    iput-object v0, p0, Li6/h$c;->b:Li6/g;

    const/4 v0, 0x1

    iput-boolean v0, p0, Li6/h$c;->c:Z

    :cond_f
    iget-object p0, p0, Li6/h$c;->b:Li6/g;

    iget-object p1, p1, Li6/h$d;->a:Li6/g;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_17
    iget-object v1, p1, Li6/g;->a:Li6/u;

    invoke-virtual {v1}, Li6/u;->e()I

    move-result v1

    if-ge v0, v1, :cond_2b

    iget-object v1, p1, Li6/g;->a:Li6/u;

    invoke-virtual {v1, v0}, Li6/u;->d(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-virtual {p0, v1}, Li6/g;->j(Ljava/util/Map$Entry;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_2b
    iget-object p1, p1, Li6/g;->a:Li6/u;

    invoke-virtual {p1}, Li6/u;->f()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_35
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {p0, v0}, Li6/g;->j(Ljava/util/Map$Entry;)V

    goto :goto_35

    :cond_45
    return-void
.end method
