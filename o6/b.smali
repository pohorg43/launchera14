.class public Lo6/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Li7/b$c;


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lo6/b;->a:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Iterable;
    .registers 3

    iget-boolean p0, p0, Lo6/b;->a:Z

    check-cast p1, Li5/b;

    const/4 v0, 0x0

    if-eqz p0, :cond_f

    if-eqz p1, :cond_e

    invoke-interface {p1}, Li5/b;->a()Li5/b;

    move-result-object p1

    goto :goto_f

    :cond_e
    move-object p1, v0

    :cond_f
    :goto_f
    if-eqz p1, :cond_15

    invoke-interface {p1}, Li5/b;->d()Ljava/util/Collection;

    move-result-object v0

    :cond_15
    if-nez v0, :cond_19

    sget-object v0, Li4/y;->a:Li4/y;

    :cond_19
    return-object v0
.end method
