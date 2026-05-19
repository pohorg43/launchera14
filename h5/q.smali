.class public final Lh5/q;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Li5/b;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lh5/l;


# direct methods
.method public constructor <init>(Lh5/l;)V
    .registers 2

    iput-object p1, p0, Lh5/q;->a:Lh5/l;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Li5/b;

    invoke-interface {p1}, Li5/b;->f()Li5/b$a;

    move-result-object v0

    sget-object v1, Li5/b$a;->a:Li5/b$a;

    if-ne v0, v1, :cond_21

    iget-object p0, p0, Lh5/q;->a:Lh5/l;

    iget-object p0, p0, Lh5/l;->b:Lh5/d;

    invoke-interface {p1}, Li5/m;->b()Li5/l;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Li5/e;

    invoke-virtual {p0, p1}, Lh5/d;->a(Li5/e;)Z

    move-result p0

    if-eqz p0, :cond_21

    const/4 p0, 0x1

    goto :goto_22

    :cond_21
    const/4 p0, 0x0

    :goto_22
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
