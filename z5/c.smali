.class public final Lz5/c;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Object;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lz5/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz5/a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Lz5/a$a;


# direct methods
.method public constructor <init>(Lz5/a;Lz5/a$a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz5/a<",
            "Ljava/lang/Object;",
            ">;",
            "Lz5/a$a;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lz5/c;->a:Lz5/a;

    iput-object p2, p0, Lz5/c;->b:Lz5/a$a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    const-string v0, "$this$extractNullability"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lz5/c;->a:Lz5/a;

    iget-object p0, p0, Lz5/c;->b:Lz5/a$a;

    iget-object p0, p0, Lz5/a$a;->a:Lc7/i;

    check-cast v0, Lz5/t;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lj5/c;

    const-string v1, "<this>"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v1, p1, Lt5/g;

    if-eqz v1, :cond_24

    move-object v1, p1

    check-cast v1, Lt5/g;

    invoke-interface {v1}, Lt5/g;->d()Z

    move-result v1

    if-nez v1, :cond_63

    :cond_24
    instance-of v1, p1, Lv5/e;

    if-eqz v1, :cond_41

    iget-object v1, v0, Lz5/t;->c:Lu5/g;

    iget-object v1, v1, Lu5/g;->a:Lu5/c;

    iget-object v1, v1, Lu5/c;->t:Lu5/d;

    invoke-interface {v1}, Lu5/d;->c()Z

    move-result v1

    if-nez v1, :cond_41

    move-object v1, p1

    check-cast v1, Lv5/e;

    iget-boolean v1, v1, Lv5/e;->h:Z

    if-nez v1, :cond_63

    iget-object v1, v0, Lz5/t;->d:Lr5/c;

    sget-object v2, Lr5/c;->f:Lr5/c;

    if-eq v1, v2, :cond_63

    :cond_41
    if-eqz p0, :cond_65

    check-cast p0, Ly6/l0;

    invoke-static {p0}, Lf5/g;->J(Ly6/l0;)Z

    move-result p0

    if-eqz p0, :cond_65

    iget-object p0, v0, Lz5/t;->c:Lu5/g;

    iget-object p0, p0, Lu5/g;->a:Lu5/c;

    iget-object p0, p0, Lu5/c;->q:Lr5/e;

    invoke-virtual {p0, p1}, Lr5/b;->i(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_65

    iget-object p0, v0, Lz5/t;->c:Lu5/g;

    iget-object p0, p0, Lu5/g;->a:Lu5/c;

    iget-object p0, p0, Lu5/c;->t:Lu5/d;

    invoke-interface {p0}, Lu5/d;->d()Z

    move-result p0

    if-nez p0, :cond_65

    :cond_63
    const/4 p0, 0x1

    goto :goto_66

    :cond_65
    const/4 p0, 0x0

    :goto_66
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
