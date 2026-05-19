.class public final Li4/m0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/ListIterator;
.implements Lkotlin/jvm/internal/markers/KMutableListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li4/m0;->listIterator(I)Ljava/util/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "TT;>;",
        "Lkotlin/jvm/internal/markers/KMutableListIterator;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic b:Li4/m0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li4/m0<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li4/m0;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li4/m0<",
            "TT;>;I)V"
        }
    .end annotation

    iput-object p1, p0, Li4/m0$a;->b:Li4/m0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Li4/m0;->a:Ljava/util/List;

    invoke-static {p1, p2}, Li4/t;->p(Ljava/util/List;I)I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    iput-object p1, p0, Li4/m0$a;->a:Ljava/util/ListIterator;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Li4/m0$a;->a:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    iget-object p0, p0, Li4/m0$a;->a:Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    return-void
.end method

.method public hasNext()Z
    .registers 1

    iget-object p0, p0, Li4/m0$a;->a:Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result p0

    return p0
.end method

.method public hasPrevious()Z
    .registers 1

    iget-object p0, p0, Li4/m0$a;->a:Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public next()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Li4/m0$a;->a:Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public nextIndex()I
    .registers 2

    iget-object v0, p0, Li4/m0$a;->b:Li4/m0;

    iget-object p0, p0, Li4/m0$a;->a:Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->previousIndex()I

    move-result p0

    invoke-static {v0}, Li4/o;->e(Ljava/util/List;)I

    move-result v0

    sub-int/2addr v0, p0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Li4/m0$a;->a:Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public previousIndex()I
    .registers 2

    iget-object v0, p0, Li4/m0$a;->b:Li4/m0;

    iget-object p0, p0, Li4/m0$a;->a:Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->nextIndex()I

    move-result p0

    invoke-static {v0}, Li4/o;->e(Ljava/util/List;)I

    move-result v0

    sub-int/2addr v0, p0

    return v0
.end method

.method public remove()V
    .registers 1

    iget-object p0, p0, Li4/m0$a;->a:Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->remove()V

    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object p0, p0, Li4/m0$a;->a:Ljava/util/ListIterator;

    invoke-interface {p0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void
.end method
